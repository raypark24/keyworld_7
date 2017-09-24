package sesoc.global.keyworld.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.keyworld.vo.Article;
import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.Menu;
import sesoc.global.keyworld.vo.RankKeyword;
import sesoc.global.keyworld.vo.RealKeyword;
import sesoc.global.keyworld.vo.Scrap;

public interface KeywordDAO {
	
	public List<Keyword> selectKeyword();
	public int selectKeywordNum(Map<String,String> tempMap);
	public List<RankKeyword> selectRankKeyword(Map<String,Integer> map);
	public List<RealKeyword> selectRealKeyword();
	public List<Keyword> keywordFilter(Map<String,Integer> map);
	public List<Article> selectArticleFromKeyword(int keyword_num);
	public List<Menu> selectBroadcast(int nationNum);
	public List<Menu> selectDivision(int nationNum);
	public int insertScrap(Scrap scrap);
	public Scrap selectScrapOne(Scrap scrap);
	public List<Article> selectArticleFromSearch(Map<String,Integer> map);
	public List<RealKeyword> selectNationRealKeyword(int nationNum);//고규민
	
}
