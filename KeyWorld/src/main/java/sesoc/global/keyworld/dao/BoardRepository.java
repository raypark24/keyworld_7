package sesoc.global.keyworld.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.keyworld.util.PageNavigator;
import sesoc.global.keyworld.vo.Board;
import sesoc.global.keyworld.vo.ScrapedArticle;

@Repository
public class BoardRepository {

	@Autowired
	SqlSession sqlSession;
	
	public List<Board> findAll(String searchtype, String searchword, int startRecord, int countPerPage) {
		
		List<Board> boardList;
		
//		쿼리에서 직접 사용하지는 않지만 가이드라인을 제시.
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		Map<String, String> search = new HashMap<>();				//가독성을 위해
		
		search.put("searchtype", searchtype);
		search.put("searchword", searchword);
		
		boardList = dao.select(search, rb);
		
		return boardList;
	}
	
	public Board findOne(int boardnum) {

		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		Board board = dao.selectOne(boardnum);
		
		return board;
	}

	public int insertBoard(Board board) {
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		int result = dao.insert(board);
		
		return result;
	}

	public int update(Board board) {
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		int result = dao.update(board);
		
		return result;
	}
	
	public int delete(int boardnum) {
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		int result = dao.delete(boardnum);
		
		return result;
	}
	
	/**
	 * 전체 글 개수 얻어오기
	 * @param searchword 
	 * @param searchtype 
	 * @return 전체 글 개수
	 */
	public int getBoardCount(String searchtype, String searchword) {
		
		Map<String, String> search = new HashMap<>();				//가독성을 위해
		
		search.put("searchtype", searchtype);
		search.put("searchword", searchword);

		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		int result = dao.getBoardCount(search);
		
		return result;
	}
	
	public int getScrapCount(String searchtype, String searchword, String userid) {
		
		Map<String, String> search = new HashMap<>();				//가독성을 위해
		
		search.put("searchtype", searchtype);
		search.put("searchword", searchword);
		search.put("userid", userid);
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		int result = dao.getBoardCount(search);
		
		return result;
	}
	
	public List<ScrapedArticle> findAllscrapList(String searchtype, String searchword, int startRecord, int countPerPage, String userid) {
		System.out.println("-----------------------  start repo get scrapList  ------------------------------");
		List<ScrapedArticle> scrapList;
		
//		쿼리에서 직접 사용하지는 않지만 가이드라인을 제시.
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		Map<String, String> search = new HashMap<>();				//가독성을 위해
		
		search.put("searchtype", searchtype);
		search.put("searchword", searchword);
		search.put("userid", userid);
		
		System.out.println(search);
		
		scrapList = dao.scrapList(search, rb);
		
		return scrapList;
	}

}
