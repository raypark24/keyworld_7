package sesoc.global.keyworld;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.keyworld.dao.CustomerRepository;
import sesoc.global.keyworld.dao.KeywordRepository;
import sesoc.global.keyworld.vo.Article;
import sesoc.global.keyworld.vo.Customer;
import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.Menu;
import sesoc.global.keyworld.vo.RankKeyword;
import sesoc.global.keyworld.vo.RealKeyword;


@Controller
public class CustomerController {
	
	@Autowired
	CustomerRepository repo;
	@Autowired
	KeywordRepository repok;
	Socket socket;
	String message = "";
	Scanner sc =new Scanner(System.in);
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//오버로딩. 전달인자가 달라서 다른 메소드로 작동한다. 
	Field charset;
	Class<Charset> c = Charset.class;
	private String rankKeyword;
	private Object realKeyword;
	
	
	public CustomerController() {
		super();
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "customer/loginForm2";
	}

	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String userid, String password, Model model, HttpSession session){
		Customer customer = repo.findCustomer(userid, password);
		System.out.println("여기까지");
		String message = "";
		if (customer == null){
			message = "로그인 실패";
			model.addAttribute ("message", message);
			
			return "message";
		}
		
		session.setAttribute("loginId", customer.getUserid());
		session.setAttribute("name", customer.getUser_name());
		
		List<Keyword> keywordList = repok.selectKeyword();
		System.out.println(keywordList.toString());
		System.out.println("11");
		List<RankKeyword> rankingList = repok.selectRankKeyword();
		List<RealKeyword> realKeywordList = repok.selectRealKeyword();
		
		
		/*for(int i = 0 ; i < 10 ; i ++ ){
			Keyword k = new Keyword("11", i, i);
			
			keyList.add(k);
			
		}*/
		
		/*rankKeyword = rankKeyword.replaceAll("\\,", "");
		rankKeyword = rankKeyword.replaceAll("echo : ", "");
		String[] keyword2 = rankKeyword.split("ppp");
		System.out.println(keyword2.toString());
		rankKeyword = keyword2[0];
		realKeyword = keyword2[1];
		String article = keyword2[2];
		System.out.println(rankKeyword);
		System.out.println(realKeyword);
		System.out.println(article);
		model.addAttribute("rankKeyword",rankKeyword);
		model.addAttribute("realKeyword",realKeyword);
		model.addAttribute("article",article);
		System.out.println(keywordList.toString());*/
		model.addAttribute("rankingList", rankingList);
		System.out.println(rankingList.toString());
		model.addAttribute("realKeywordList", realKeywordList);
		System.out.println(realKeywordList.toString());
		System.out.println("222222222222222222222");
		model.addAttribute("keyList", keywordList);
		//모델 혹은 리퀘스트는 두 페이지 사이에서만 사용된다. redirect를 하면 모델은 사라지지만 세션은 살아있다. 
		return "mainForm2";
		
		
		/*return "index";*/
		
	}
	@RequestMapping(value = "rkeywordSelect", method = RequestMethod.POST)
	public @ResponseBody List<Article> articleList(Locale locale, Model model,@RequestParam(value="keyword_num") int keyword_num) {
	System.out.println("들어옴2");
	System.out.println(keyword_num);
	List<Article> articleList = repok.selectArticleFromKeyword(keyword_num);
	System.out.println("조회완료 : "+articleList.toString());
	System.out.println("111111");
		
	return articleList;
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "articleDetail", produces="application/test;charset=utf8", method = RequestMethod.POST)
	public @ResponseBody String articleDetail(
			Locale locale,
			Model model,
			@RequestParam(value="url") String url,
			@RequestParam(value="division_num") int division_num) {
	String articleHtml="";
	System.out.println("들어옴2");
	System.out.println(url);
	System.out.println(division_num);
	/*if(url.equals("")){
		return null;
	}*/
	
	// 크롤링 하기 전 사전작업. text한번만 날리기 때문에, url + ppp(구분자) + division_num 을 날린다.
	url = url + "ppp" + division_num;
	System.out.println("최종 송신 데이터 : " + url);
	
	// 크롤링.
	try {
		socket = new Socket("localhost",9999);
	} catch(Exception e){
		e.printStackTrace();
	}
	try{
		BufferedReader stdIn = new BufferedReader(new InputStreamReader(socket.getInputStream()));
		BufferedWriter out = new BufferedWriter(new PrintWriter(socket.getOutputStream(),true));
		System.out.println("Trying to read...");
		String in = "";
		out.write(url);
		out.flush();
		System.out.println("url 전송 완료!!");
		Thread.sleep(4000);
		while(stdIn.ready()){
			in+=stdIn.readLine();
		}
		articleHtml = in;
		System.out.println(articleHtml);
		
		//articleHtml = new String(articleHtml.getBytes(),"utf-8");
		stdIn.close();
		out.close();
		socket.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
	System.out.println("기사1개 크롤링완료 : "+articleHtml);
	
	return articleHtml;
	}
	// nationNum,broadcastName,broadcastNum,divisionName,divisionNum
	
	@RequestMapping(value = "/blist", method = RequestMethod.GET)
	public @ResponseBody List<Menu> blist(int nationNum) {
		System.out.println("menu에 들어옴.");
		System.out.println(nationNum);
		
		List<Menu> blist = repok.selectBroadcast(nationNum);
		
		return blist;
	}
	
	@RequestMapping(value = "/dlist", method = RequestMethod.GET)
	public @ResponseBody List<Menu> dlist(int nationNum) {
		System.out.println("menu에 들어옴.");
		System.out.println(nationNum);
		List<Menu> dlist = repok.selectDivision(nationNum);
		
		
		return dlist;
	}
	
	@RequestMapping(value = "keywordFilter", method = RequestMethod.POST)
	public @ResponseBody List<Keyword> keywordFilter(
						Locale locale, 
						Model model,
						@RequestParam(value="nationNum") int nationNum,
						@RequestParam(value="broadcastNum") int broadcastNum,
						@RequestParam(value="divisionNum") int divisionNum,
						@RequestParam(value="fromDate") String fromDate ,
						@RequestParam(value="toDate") String toDate
						) {
	Map<String,String> map = new HashMap<String, String>();
	map.put("nation_num", nationNum+"");
	map.put("broadcast_num", broadcastNum+"");
	map.put("division_num", divisionNum+"");
	map.put("fromDate", fromDate);
	map.put("toDate", toDate);
	System.out.println("키워드 필터링");
	List<Keyword> articleList = repok.keywordFilter(map);
	System.out.println("조회완료 : "+articleList.toString());
		
	return articleList;
	}
	
}
