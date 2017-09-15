package sesoc.global.keyworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.keyworld.vo.Keyword;


@Repository
public class KeywordRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public List<Keyword> selectKeyword() {
		
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		
		List<Keyword> keywordList = dao.selectKeyword();
		
		return keywordList;
	}

}
