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
	
	private KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
	
	public List<Keyword> selectKeyword() {
		
		List<Keyword> keywordList = dao.selectKeyword();
		
		return keywordList;
	}
	
	public List<RankKeyword> selectKeywordRanking() {
		System.out.println("3");
		List<RankKeyword> keywordList = dao.selectRanking();
		System.out.println("4");
		return keywordList;
	}

}
