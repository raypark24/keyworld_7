package sesoc.global.keyworld.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import sesoc.global.keyworld.vo.Customer;

@Repository
public class CustomerRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	
		
		//selectOne
		public Customer findCustomer(String userid, String password){
			CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);
			System.out.println("findcustomer");
			Map<String, String> map = new HashMap<>();
			
			map.put("userid", userid);
			map.put("password", password);
			
			
			Customer customer = dao.selectOne(map);
			
			return customer;
		}
		
	
	

}
