package sesoc.global.keyworld.dao;

import java.util.List;

import sesoc.global.keyworld.vo.Keyword;

public interface KeywordDAO {
	
	public List<Keyword> selectKeyword();
	public List<Keyword> selectKeywordRanking();

}
