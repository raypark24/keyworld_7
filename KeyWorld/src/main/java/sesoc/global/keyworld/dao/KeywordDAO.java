package sesoc.global.keyworld.dao;

import java.util.List;

import sesoc.global.keyworld.vo.Article;
import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.RankKeyword;
import sesoc.global.keyworld.vo.RealKeyword;

public interface KeywordDAO {
	
	public List<Keyword> selectKeyword();
	public List<RankKeyword> selectRankKeyword();
	public List<RealKeyword> selectRealKeyword();
	public List<Article> selectArticleFromKeyword(int keyword_num);
}
