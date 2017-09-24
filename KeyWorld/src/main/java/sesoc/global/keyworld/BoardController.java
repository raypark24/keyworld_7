package sesoc.global.keyworld;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sesoc.global.keyworld.dao.BoardRepository;
import sesoc.global.keyworld.util.PageNavigator;
import sesoc.global.keyworld.vo.Board;
import sesoc.global.keyworld.vo.ScrapedArticle;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardRepository repo;

	/**
	 * 글 목록 요청
	 * @param model
	 * @return
	 */
	@RequestMapping("boardList")
//	index에서 요청시에는 currentPage 없음. 그때는 기본값 1로.
	public String boardList(
		 @RequestParam(value = "currentPage", defaultValue="1") int currentPage, 
		 @RequestParam(value="searchword", defaultValue="") String searchword, 
		 @RequestParam(value="searchtype", defaultValue="title") String searchtype, 
		 Model model) {
		
//		logger.info("searchword : " + searchword + " searchtype : " + searchtype + " currentPage : " + currentPage);
		
//		전체 글 개수
		int totalRecordCount = repo.getBoardCount(searchtype, searchword);
		
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		
		List<Board> boardList = repo.findAll(searchtype, searchword, navi.getStartRecord(), navi.getCountPerPage());
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("navi", navi);
		model.addAttribute("searchword", searchword);
		model.addAttribute("searchtype", searchtype);
		
		return "board/boardList";
	}
	
	@RequestMapping("/boardDetail")
	public String boardDetail(
		@RequestParam(value = "currentPage", defaultValue="1") int currentPage, 
		@RequestParam(value="searchword", defaultValue="") String searchword, 
		@RequestParam(value="searchtype", defaultValue="title") String searchtype, 
		int boardnum, Model model) {
		
		Board board = repo.findOne(boardnum);

		int totalRecordCount = repo.getBoardCount(searchtype, searchword);
		
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
			
		model.addAttribute("board", board);
			
		return "board/boardDetail";
	}
	
	/**
	 * 글쓰기 화면 요청
	 * @return
	 */
	@RequestMapping("/boardWrite")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	/**
	 * 게시글 입력 처리
	 * @param board
	 * @return
	 */
	@RequestMapping(value="/boardWrite", method=RequestMethod.POST)
	public String boardWrite(Board board, HttpSession session) {
		
//		session 에서 아이디 추출작업 필요
		String userid = (String)session.getAttribute("loginId");
		board.setUserid(userid);
		
		repo.insertBoard(board);
		
		return "redirect:boardList";
	}

	/**
	 * 게시글 수정 화면 요청
	 * 게시글의 수정화면에는 수정을 요청한 데이터가 
	 * 데이터를 가져와야 한다.
	 * @param boardnum
	 * @param model
	 * @return
	 */
	@RequestMapping("/boardUpdate")
	public String boardUpdate(int boardnum, Model model) {
		
		Board board = repo.findOne(boardnum);
		model.addAttribute("board", board);
		
		return "board/boardUpdate";
	}
	
	/**
	 * 게시글 수정 작업(DB)
	 * redirect 할 때 가져갈 정보가 있다면 아래 새로운 parameter 참조
	 * @param board
	 * @param rttr
	 * @return
	 */
	@RequestMapping(value="/boardUpdate", method=RequestMethod.POST)
	public String boardUpdate(Board board, MultipartFile replaceFile, RedirectAttributes rttr) {
		
		Board oldboard = repo.findOne(board.getBoardnum());
				
		repo.update(board);
		rttr.addAttribute("boardnum", board.getBoardnum());
		
		return "redirect:boardDetail";
	}
	
	@RequestMapping("/boardDelete")
	public String boardDelete(int boardnum) {
		
		Board board = repo.findOne(boardnum);
		
		repo.delete(boardnum);
		
		return "redirect:boardList";
	}
	
	@RequestMapping("/scrapList")
//	index에서 요청시에는 currentPage 없음. 그때는 기본값 1로.
	public String scrapList(
		 @RequestParam(value="currentPage", defaultValue="1") int currentPage, 
		 @RequestParam(value="searchword", defaultValue="") String searchword, 
		 @RequestParam(value="searchtype", defaultValue="title") String searchtype, 
		 Model model, HttpSession session) {
		
		String userid = (String)session.getAttribute("loginId");
		
//		전체 글 개수
		int totalRecordCount = repo.getScrapCount(searchtype, searchword, userid);
		
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		
		List<ScrapedArticle> scrapList = repo.findAllscrapList(searchtype, searchword, navi.getStartRecord(), navi.getCountPerPage(), userid);
		
		model.addAttribute("scrapList", scrapList);
		model.addAttribute("navi", navi);
		model.addAttribute("searchword", searchword);
		model.addAttribute("searchtype", searchtype);
		
		return "board/scrapList";
	}
	
}
