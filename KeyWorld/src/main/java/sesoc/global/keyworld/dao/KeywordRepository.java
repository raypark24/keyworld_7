package sesoc.global.keyworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.RankKeyword;


@Repository
public class KeywordRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public List<Keyword> selectKeyword() {
		
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		
		List<Keyword> keywordList = dao.selectKeyword();
		
		return keywordList;
	}
	
	public List<RankKeyword> selectRankKeyword() {
		
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		System.out.println("12");
		List<RankKeyword> keywordList = dao.selectRankKeyword();
		System.out.println("34");
		return keywordList;
	}


}
