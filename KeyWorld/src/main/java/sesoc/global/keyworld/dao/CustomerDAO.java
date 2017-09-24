package sesoc.global.keyworld.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.keyworld.vo.Customer;

public interface CustomerDAO {
	// CRUD
	public int insert(Customer customer);
	public Customer selectOne(Map<String, String> customer);
	public int update(Customer customer);
	public int delete(String custid);
	public List<Customer> selectAll();
	public int idcheck(String custid);
	
}
