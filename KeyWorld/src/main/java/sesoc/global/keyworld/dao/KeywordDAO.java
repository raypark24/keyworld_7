package sesoc.global.keyworld.dao;

import java.util.List;

import sesoc.global.keyworld.vo.Keyword;
import sesoc.global.keyworld.vo.RankKeyword;

public interface KeywordDAO {
	
	public List<Keyword> selectKeyword();
	public List<RankKeyword> selectRanking();
	
	

}
