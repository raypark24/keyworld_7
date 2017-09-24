package sesoc.global.keyworld;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sesoc.global.keyworld.dao.BoardRepository;
import sesoc.global.keyworld.util.PageNavigator;
import sesoc.global.keyworld.vo.ScrapedArticle;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	BoardRepository repo;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "mainForm2";
	}

	
	@RequestMapping(value = "/myPage")
	public String mypage(
			@RequestParam(value="currentPage", defaultValue="1") int currentPage, 
			@RequestParam(value="searchword", defaultValue="") String searchword, 
			@RequestParam(value="searchtype", defaultValue="title") String searchtype, 
			Model model, HttpSession session) {
			System.out.println("--------------------------  start mypage  -----------------------------");
			String userid = (String)session.getAttribute("loginId");
			System.out.println(userid);
//			전체 글 개수
			System.out.println("--------------------------  start record count  -----------------------------");
			int totalRecordCount = repo.getScrapCount(searchtype, searchword, userid);
			
			System.out.println("--------------------------  start make navi  -----------------------------");
			PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
			
			System.out.println("--------------------------  start get List from DB  -----------------------------");
			List<ScrapedArticle> scrapList = repo.findAllscrapList(searchtype, searchword, navi.getStartRecord(), navi.getCountPerPage(), userid);
			
			System.out.println(scrapList);
			
			model.addAttribute("scrapList", scrapList);
			model.addAttribute("navi", navi);
			model.addAttribute("searchword", searchword);
			model.addAttribute("searchtype", searchtype);
			
			return "customer/myPage";
		}
	
}


