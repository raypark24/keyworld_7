package sesoc.global.keyworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.keyworld.vo.Article;
import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.RankKeyword;
import sesoc.global.keyworld.vo.RealKeyword;


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
	
	public List<RealKeyword> selectRealKeyword() {
		
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		
		List<RealKeyword> realKeywordList = dao.selectRealKeyword();
		
		return realKeywordList;
	}
	
	public List<Article> selectArticleFromKeyword(int keyword_num){
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		
		List<Article> articleList = dao.selectArticleFromKeyword(keyword_num);
		
		return articleList;
	}

}
