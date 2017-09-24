package sesoc.global.keyworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.keyworld.vo.Article;
import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.Menu;
import sesoc.global.keyworld.vo.RankKeyword;
import sesoc.global.keyworld.vo.RealKeyword;
import sesoc.global.keyworld.vo.Scrap;

@Repository
public class KeywordRepository {

	@Autowired
	SqlSession sqlSession;

	public List<Keyword> selectKeyword() {

		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);

		List<Keyword> keywordList = dao.selectKeyword();

		return keywordList;
	}

	public List<RankKeyword> selectRankKeyword(Map<String,Integer> map) {

		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		System.out.println("12");
		List<RankKeyword> keywordList = dao.selectRankKeyword(map);
		System.out.println("34");
		return keywordList;
	}

	public List<RealKeyword> selectRealKeyword() {

		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);

		List<RealKeyword> realKeywordList = dao.selectRealKeyword();

		return realKeywordList;
	}

	public List<Article> selectArticleFromKeyword(int keyword_num) {
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);

		List<Article> articleList = dao.selectArticleFromKeyword(keyword_num);

		return articleList;
	}

	public List<Keyword> keywordFilter(Map<String, Integer> map) {

		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		System.out.println(map.toString());
		List<Keyword> keywordList = dao.keywordFilter(map);

		return keywordList;
	}

	public List<Menu> selectDivision(int nationNum) {
		System.out.println("21212121");
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		System.out.println("23232323");
		List<Menu> dList = dao.selectDivision(nationNum);

		return dList;
	}

	public List<Menu> selectBroadcast(int nationNum) {
		System.out.println("21212121");
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		System.out.println("23232323");
		List<Menu> bList = dao.selectBroadcast(nationNum);

		return bList;
	}

	public int insertScrap(Scrap scrap) {

		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);

		int check = dao.insertScrap(scrap);

		return check;

	}

	public Scrap selectScrapOne(Scrap scrap) {

		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);

		Scrap sc = dao.selectScrapOne(scrap);

		return sc;

	}

	public List<Article> selectArticleFromSearch(Map<String, Integer> map) {
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);

		List<Article> articleList = dao.selectArticleFromSearch(map);

		return articleList;
	}

	public int selectKeywordNum(Map<String, String> tempMap) {
		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);
		System.out.println(tempMap.toString());

		int keywordNum = 0;
		try {
			keywordNum = dao.selectKeywordNum(tempMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
		}

		System.out.println(keywordNum + "11");
		return keywordNum;
	}

	// 고규민
	public List<RealKeyword> selectNationRealKeyword(int nationNum) {

		KeywordDAO dao = sqlSession.getMapper(KeywordDAO.class);

		List<RealKeyword> realNationKeywordList = dao.selectNationRealKeyword(nationNum);

		return realNationKeywordList;
	}
}
