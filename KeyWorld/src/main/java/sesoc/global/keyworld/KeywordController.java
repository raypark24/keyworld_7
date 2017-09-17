package sesoc.global.keyworld;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.keyworld.dao.KeywordRepository;
import sesoc.global.keyworld.vo.Article;

@Controller
public class KeywordController {
	
	
	@Autowired
	KeywordRepository repok;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/rkeyworaaadSelect", method = RequestMethod.GET)
	@ResponseBody
	public List<Article> articleList(Locale locale, Model model,@RequestParam int keyword_num) {
	System.out.println("들어옴2");
	System.out.println(keyword_num);
	List<Article> articleList = repok.selectArticleFromKeyword(keyword_num);
	System.out.println("조회완료 : "+articleList.toString());
	System.out.println("111111");
		
	return articleList;
	}
}
