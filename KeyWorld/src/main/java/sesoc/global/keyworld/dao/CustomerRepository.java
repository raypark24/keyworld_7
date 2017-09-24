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
		
		public int insert(Customer customer) {
			
			System.out.println("Repository insert method activate");
			System.out.println(customer);
			CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);
			int result = dao.insert(customer);
			System.out.println("Repository insert result");
			System.out.println(result);
			return result;
		}
			
		public int idCheck(String userid) {
			System.out.println("idCheck repository / "+userid);
			CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);
			int result = dao.idcheck(userid);
			
			return result;
		}
	

}
