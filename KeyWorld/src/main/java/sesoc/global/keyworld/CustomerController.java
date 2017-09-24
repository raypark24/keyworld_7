package sesoc.global.keyworld;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
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
import sesoc.global.keyworld.vo.RealArticle;
import sesoc.global.keyworld.vo.RealKeyword;
import sesoc.global.keyworld.vo.Scrap;

@Controller
public class CustomerController {

	@Autowired
	CustomerRepository repo;
	@Autowired
	KeywordRepository repok;
	Socket socket;
	String message = "";
	Scanner sc = new Scanner(System.in);
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	// 오버로딩. 전달인자가 달라서 다른 메소드로 작동한다.
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
	public String login(String userid, String password, Model model, HttpSession session) {
		Customer customer = repo.findCustomer(userid, password);
		System.out.println("여기까지");
		String message = "";
		if (customer == null) {
			message = "로그인 실패";
			model.addAttribute("message", message);

			return "message";
		}

		session.setAttribute("loginId", customer.getUserid());
		session.setAttribute("name", customer.getUser_name());

		List<Keyword> keywordList = repok.selectKeyword();
		System.out.println(keywordList.toString());
		System.out.println("11");
		List<RankKeyword> rankingList = repok.selectRankKeyword();
		List<RealKeyword> realKeywordList = repok.selectNationRealKeyword(216);

		/*
		 * for(int i = 0 ; i < 10 ; i ++ ){ Keyword k = new Keyword("11", i, i);
		 * 
		 * keyList.add(k);
		 * 
		 * }
		 */

		/*
		 * rankKeyword = rankKeyword.replaceAll("\\,", ""); rankKeyword =
		 * rankKeyword.replaceAll("echo : ", ""); String[] keyword2 =
		 * rankKeyword.split("ppp"); System.out.println(keyword2.toString());
		 * rankKeyword = keyword2[0]; realKeyword = keyword2[1]; String article
		 * = keyword2[2]; System.out.println(rankKeyword);
		 * System.out.println(realKeyword); System.out.println(article);
		 * model.addAttribute("rankKeyword",rankKeyword);
		 * model.addAttribute("realKeyword",realKeyword);
		 * model.addAttribute("article",article);
		 * System.out.println(keywordList.toString());
		 */
		model.addAttribute("rankingList", rankingList);
		System.out.println(rankingList.toString());
		model.addAttribute("realKeywordList", realKeywordList);
		System.out.println(realKeywordList.toString());
		System.out.println("222222222222222222222");
		model.addAttribute("keyList", keywordList);
		// 모델 혹은 리퀘스트는 두 페이지 사이에서만 사용된다. redirect를 하면 모델은 사라지지만 세션은 살아있다.
		return "mainForm2";

		/* return "index"; */

	}

	@RequestMapping(value = "rkeywordSelect", method = RequestMethod.POST)
	public @ResponseBody List<Article> articleList(Locale locale, Model model,
			@RequestParam(value = "keyword_num") int keyword_num) {
		System.out.println("들어옴2");
		System.out.println(keyword_num);
		List<Article> articleList = repok.selectArticleFromKeyword(keyword_num);
		System.out.println("조회완료 : " + articleList.toString());
		System.out.println("111111");

		return articleList;
	}

	@ResponseBody
	@RequestMapping(value = "realwordSelect", method = RequestMethod.POST)
	public List<RealArticle> realwordSelect(String country, String realword) {
		String url = "https://countrycodenews.search.yahoo.com/search?p=realword&fr=fp-tts&fr2=piv-web";
		Document document = null;
		List<RealArticle> rList = new ArrayList<>();

		if (country.equals("South Korea")) {
			url = "https://search.naver.com/search.naver?ie=utf8&where=news&query=realword&sm=tab_tmr&frm=mr&sort=0";
			url = url.replace("realword", realword);
			try {
				document = Jsoup.connect(url)
						.userAgent(
								"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/60.0.3112.113 safari/537.36")
						.get();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			Elements articles = document.select("ul.type01 > li");
			for (Element item : articles) {
				String title = item.select("a._sp_each_title").attr("title");
				String arcURL = item.select("a._sp_each_url").attr("href");
				System.out.println(arcURL);
				if (arcURL.contains("news.naver.com") == false)
					continue;
				String broadcast = item.select("a._sp_each_source").text();
				String content = item.select("dd.txt_inline").next().text();
				rList.add(new RealArticle(title, arcURL, broadcast, "", content));
			}
		}

		else if (country.equals("Japan")) {
			url = "https://news.yahoo.co.jp/search/?ei=UTF-8&p=realword&st=n";
			url = url.replace("realword", realword);
			try {
				document = Jsoup.connect(url).execute().parse();
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println("japan");
			Elements articles = document.select("div#NSm > div");
			for (Element item : articles) {
				String title = item.select("h2 > a").text();
				String arcURL = item.select("h2 > a").attr("href");
				String content = item.select("div.txt > p.a").text();
				String date = item.select("div.txt > p.a").next().select("span.d").text();
				String broadcast = item.select("div.txt > p.a").next().select("span.ct1").text();
				rList.add(new RealArticle(title, arcURL, broadcast, date, content));
			}
		} else {
			switch (country) {
			case "United States":
				url = url.replace("countrycode", "");
				break;
			case "Singapore":
				url = url.replace("countrycode", "sg.");
				break;
			case "Canada":
				url = url.replace("countrycode", "ca.");
				break;
			case "United Kingdom":
				url = url.replace("countrycode", "uk.");
				break;
			case "India":
				url = url.replace("countrycode", "in.");
				break;
			}
			url = url.replace("realword", realword);
			try {
				document = Jsoup.connect(url).execute().parse();
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println("default");
			Elements articles = document.select("ol.searchCenterMiddle > li > div.NewsArticle");
			for (Element item : articles) {
				String title = item.select("div.compTitle > h3.title").text();
				String arcURL = item.select("div.compTitle > h3.title > a").attr("href");
				if (arcURL.substring(0, 2).equals("//") == false) {
					System.out.println("타 사이트 기사");
					continue;
				}
				int beginIndex = arcURL.indexOf("https%3a%2f%2f");
				int endIndex = arcURL.indexOf(".html/");
				arcURL = arcURL.substring(beginIndex, endIndex + 5);
				arcURL = arcURL.replace("%2f", "/");
				arcURL = arcURL.replace("%3a", ":");
				System.out.println(arcURL);
				String broadcast = item.select("div.compTItle span.cite").text();
				String date = item.select("div.compTItle span.tri").text();
				String content = item.select("div.compText > p").text();
				rList.add(new RealArticle(title, arcURL, broadcast, date, content));
			}
		}
		return rList;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";
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
	public @ResponseBody List<Keyword> keywordFilter(Locale locale, Model model,
			@RequestParam(value = "nation_num", defaultValue = "0") int nationNum,
			@RequestParam(value = "broadcast_num", defaultValue = "0") int broadcastNum,
			@RequestParam(value = "division_num", defaultValue = "0") int divisionNum,
			@RequestParam(value = "fromDate", defaultValue = "0") String fromDate,
			@RequestParam(value = "toDate", defaultValue = "0") String toDate,
			@RequestParam(value = "type", defaultValue = "0") String type) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 기사 필터링
		System.out.println("들어온 nationNum : " + nationNum);
		System.out.println("들어온 language(한중일영-1234) : "+ type);
		map = filterMap(nationNum, broadcastNum, divisionNum, fromDate, toDate);
		if(type.equals("ko")){
			map.put("type",	1);
		}
		else if(type.equals("ch")){
			map.put("type", 2);
		}
		else if(type.equals("jp")){
			map.put("type", 3);
		}
		else if(type.equals("us")){
			map.put("type", 4);
		}
		else{
			map.put("type", 0);
		}
		System.out.println("키워드 필터링");
		System.out.println(map.toString());
		List<Keyword> keywordList = repok.keywordFilter(map);
		System.out.println("필터링완료 : " + keywordList.toString());

		return keywordList;
	}

	// 스크랩한 기사 번호를 db에 넣는다.
	@RequestMapping(value = "scraping", method = RequestMethod.POST)
	public @ResponseBody String scraping(Locale locale, Model model, HttpSession session,
			@RequestParam(value = "article_num") int article_num) {
		System.out.println("들어옴2");
		System.out.println(article_num);
		String userid = (String) session.getAttribute("loginId");
		Scrap scrap = new Scrap();
		scrap.setArticle_num(article_num);
		scrap.setUserid(userid);
		// 중복검사
		Scrap sc = repok.selectScrapOne(scrap);
		System.out.println(sc);
		// 같은 아이디인 사람이 동일한 기사를 중복해서 스크랩을 했을 때 경고창을 띄운다.
		if (sc != null) {
			System.out.println("스크랩 중복됨.");
			return "duplicated";
		}
		// 스크랩 insert
		int check = repok.insertScrap(scrap);

		// insert가 됬으면 성공 문자열 반환.
		if (check != 0) {
			return "success";
		}
		return "nn";
	}
	// 주세휘//주세휘

	@RequestMapping(value = "selectArticleFromSearch", method = RequestMethod.POST)
	public @ResponseBody List<Article> selectArticleFromSearch(Locale locale, Model model,
			@RequestParam(value = "nation_num", defaultValue = "0") int nationNum,
			@RequestParam(value = "broadcast_num", defaultValue = "0") int broadcastNum,
			@RequestParam(value = "division_num", defaultValue = "0") int divisionNum,
			@RequestParam(value = "fromDate", defaultValue = "0") String fromDate,
			@RequestParam(value = "toDate", defaultValue = "0") String toDate,
			@RequestParam(value = "keyword") String keyword) {
		List<Article> articleList = new ArrayList<>();
		System.out.println("키워드 검색 들어옴.");
		System.out.println(keyword);
		keyword = keyword.toUpperCase();
		System.out.println(keyword);
		Map<String, String> tempMap = new HashMap<String, String>();
		tempMap.put("keyword", keyword);
		int keyword_num = repok.selectKeywordNum(tempMap);
		System.out.println(keyword_num);
		Map<String, Integer> map = filterMap(nationNum, broadcastNum, divisionNum, fromDate, toDate);
		map.put("keyword_num", keyword_num);
		System.out.println(map.toString());
		articleList = repok.selectArticleFromSearch(map);
		System.out.println("키워드 검색 완료 :" + articleList.toString());
		return articleList;
	}

	public Map<String, Integer> filterMap(int nationNum, int broadcastNum, int divisionNum, String fromDate,
			String toDate) {
		Map<String, Integer> map = new HashMap<String, Integer>();

		if (nationNum == 216) { // 한국
			map.put("division_start_num", 1);
			map.put("division_end_num", 11);
		} else if (nationNum == 222) { // 일본
			map.put("division_start_num", 11);
			map.put("division_end_num", 19);
		} else if (nationNum == 39) { // 중국
			map.put("division_start_num", 19);
			map.put("division_end_num", 24);
		} else if (nationNum == 12) { // 호주
			map.put("division_start_num", 24);
			map.put("division_end_num", 30);
		} else if (nationNum == 33) { // 캐나다
			map.put("division_start_num", 30);
			map.put("division_end_num", 38);
		} else if (nationNum == 138) { // 싱가폴
			map.put("division_start_num", 38);
			map.put("division_end_num", 46);
		} else if (nationNum == 230) { // 인도
			map.put("division_start_num", 46);
			map.put("division_end_num", 54);
		} else if (nationNum == 174) { // 뉴질랜드
			map.put("division_start_num", 54);
			map.put("division_end_num", 62);
		} else if (nationNum == 159) { // 필리핀
			map.put("division_start_num", 62);
			map.put("division_end_num", 69);
		} else if (nationNum == 105) { // 영국
			map.put("division_start_num", 69);
			map.put("division_end_num", 77);
		} else if (nationNum == 104) { // 미국
			map.put("division_start_num", 77);
			map.put("division_end_num", 87);
		} else {
			map.put("division_start_num", 0);
			map.put("division_end_num", 0);
		}

		map.put("broadcast_num", broadcastNum);
		map.put("division_num", divisionNum);

		fromDate = fromDate.replace("-", "");
		toDate = toDate.replace("-", "");
		map.put("fromDate", new Integer(fromDate));
		map.put("toDate", new Integer(toDate));

		return map;
	}

	@RequestMapping(value = "movenation", method = RequestMethod.POST)
	public @ResponseBody List<RealKeyword> movenation(Locale locale,
			@RequestParam(value = "direction") String direction,
			@RequestParam(value = "curr_nation") String curr_nation) {
		int nationNum = 0;
		String nextNation = "";
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("South Korea", 216);
		map.put("Japan", 222);
		map.put("United States", 104);
		map.put("Canada", 33);
		map.put("United Kingdom", 105);
		map.put("Singapore", 138);
		map.put("India", 230);
		if (direction.equals("forward")) {
			switch (curr_nation) {
			case "Canada":
				nationNum = map.get("India");
				nextNation = "India";
				break;
			case "United States":
				nationNum = map.get("United Kingdom");
				nextNation = "United Kingdom";
				break;
			case "United Kingdom":
				nationNum = map.get("Singapore");
				nextNation = "Singapore";
				break;
			case "Singapore":
				nationNum = map.get("Canada");
				nextNation = "Canada";
				break;
			case "South Korea":
				nationNum = map.get("Japan");
				nextNation = "Japan";
				break;
			case "Japan":
				nationNum = map.get("United States");
				nextNation = "United States";
				break;
			case "India":
				nationNum = map.get("South Korea");
				nextNation = "South Korea";
				break;
			default:
				nationNum = 216;
				nextNation = "South Korea";
			}
		} else if (direction.equals("backward")) {
			switch (curr_nation) {
			case "Canada":
				nationNum = map.get("Singapore");
				nextNation = "Singapore";
				break;
			case "United States":
				nationNum = map.get("Japan");
				nextNation = "Japan";
				break;
			case "United Kingdom":
				nationNum = map.get("United States");
				nextNation = "United States";
				break;
			case "Singapore":
				nationNum = map.get("United Kingdom");
				nextNation = "United Kingdom";
				break;
			case "South Korea":
				nationNum = map.get("India");
				nextNation = "India";
				break;
			case "Japan":
				nationNum = map.get("South Korea");
				nextNation = "South Korea";
				break;
			case "India":
				nationNum = map.get("Canada");
				nextNation = "Canada";
				break;
			default:
				nationNum = 216;
				nextNation = "South Korea";
			}
		}
		System.out.println("nation NAme : " + curr_nation);
		System.out.println("Direction : " + direction);
		List<RealKeyword> realKeywordList = repok.selectNationRealKeyword(nationNum);
		System.out.println(realKeywordList);
		RealKeyword nationkey = new RealKeyword();
		nationkey.setRealtime_num(0);
		nationkey.setKeyword(nextNation);
		nationkey.setRealTime(realKeywordList.get(0).getRealTime());
		realKeywordList.add(nationkey);
		return realKeywordList;
	}

	@ResponseBody
	@RequestMapping("switchnation")
	public List<RealKeyword> switchNation(int nation_num) {
		List<RealKeyword> realKeywordList = repok.selectNationRealKeyword(nation_num);
		String nation = "";
		switch (nation_num) {
		case 216:
			nation = "South Korea";
			break;
		case 104:
			nation = "United States";
			break;
		case 105:
			nation = "United Kingdom";
			break;
		case 222:
			nation = "Japan";
			break;
		case 33:
			nation = "Canada";
			break;
		case 138:
			nation = "Singapore";
			break;
		case 230:
			nation = "India";
			break;
		}
		RealKeyword nationkey = new RealKeyword();
		nationkey.setRealtime_num(0);
		nationkey.setKeyword(nation);
		nationkey.setRealTime(realKeywordList.get(0).getRealTime());
		realKeywordList.add(nationkey);
		return realKeywordList;
	}
	
	@ResponseBody
	@RequestMapping(value="idCheck", produces="application/test;charset=utf8", method=RequestMethod.GET)
	public String idCheck(String userid) {
		System.out.println("Controller idCheck / "+userid);
		String result = "";
		
		if (repo.idCheck(userid) == 1) {
			result = "이미 사용중인 아이디";
			System.out.println("duplicated");
		} else {
			result = "사용 가능한 아이디";
			System.out.println("possible to use");
		}
		
		return result;
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(Customer customer) {
		
		System.out.println("Controller join method activate");
		System.out.println(customer);
		
		int result = repo.insert(customer);
		
		System.out.println("Controller join result");
		System.out.println(result);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="articleDetail", produces = "application/test;charset=utf8", method=RequestMethod.POST)
	@ResponseBody
	public String articleDetail_java(@RequestParam(value="url") String url, String second){
		System.out.println("article Detail method............");
		String html = "";
		System.out.println(url);
		Document document = null;
		try {
			document = Jsoup.connect(url).execute().parse();
		} catch (IOException e) {
			System.out.println("articleDetail exception");
			//e.printStackTrace();
		}
		System.out.println("크롤링");
		if(url.contains("naver.com") == true){
			System.out.println("한국 기사");
			html = document.select("div#articleBodyContents").html();
			if(html.length()==0) html = document.select("div#articeBody").html();
			if(html.length()==0) html = document.select("div.content_area").html();
		}//case Korea
		
		else if(url.contains("co.jp") == true){
			System.out.println("일본기사");
				html = document.select("div.article").html();
				if(html.length()==0) html = document.select("div.article mag").html();
		}//case Japan
		
		else if(url.contains("//au.") == true){
			System.out.println("호주기사");
			html = document.select("h1.headline").html()
					+document.select("div.article").html();
		}//case Australia
		
		else if(url.contains("qq.com") == true){
			System.out.println("중국기사");
			html = document.select("div.qq_article").html();
			if (html.length()==0) html = document.select("div#C-Main-Article-QQ").html();
		}//case China
		
		else {
			System.out.println("그 외 기사");
			html = document.select("div#content-modal-0").html();
			if(html.length()==0) html = document.select("#YDC-Side-Stack > div > div > div").first().html()
					+document.select("div#YDC-Col1-Stack").html();
			if(html.length()==0)html = document.select("div#YDC-Lead-Stack").html()
					+document.select("div#YDC-Col1-1-Stack").html();
		}//other cases
		System.out.println("완료");
		html = html.replace("\r\n","");
		System.out.println(html.length());
		return html;
	}
	
}
