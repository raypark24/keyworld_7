package sesoc.global.keyworld;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sesoc.global.keyworld.dao.CustomerRepository;
import sesoc.global.keyworld.dao.KeywordRepository;
import sesoc.global.keyworld.vo.Customer;
import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.RankKeyword;


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
		List<RankKeyword> rankingList = repok.selectKeywordRanking();
		
		
		
		/*for(int i = 0 ; i < 10 ; i ++ ){
			Keyword k = new Keyword("11", i, i);
			
			keyList.add(k);
			
		}*/
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
			out.write("1");
			out.flush();
			System.out.println("1");
			Thread.sleep(1500);
			while(stdIn.ready()){
				in+=stdIn.readLine();
			}
			rankKeyword = in;
			System.out.println(rankKeyword);
			rankKeyword = new String(rankKeyword.getBytes(),"utf-8");
			stdIn.close();
			out.close();
			socket.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		rankKeyword = rankKeyword.replaceAll("\\,", "");
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
		System.out.println(keywordList.toString());
		System.out.println(rankingList.toString());
		
		
		model.addAttribute("keyList", keywordList);
		model.addAttribute("rankingList",rankingList);
		//모델 혹은 리퀘스트는 두 페이지 사이에서만 사용된다. redirect를 하면 모델은 사라지지만 세션은 살아있다. 
		return "mainForm2";
		//HomeController를 거쳐서, index로 
		
		/*return "index";*/
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		
		return "redirect:/";
		
	}
	
}
