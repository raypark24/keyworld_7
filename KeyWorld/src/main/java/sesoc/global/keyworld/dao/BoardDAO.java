package sesoc.global.keyworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import sesoc.global.keyworld.vo.Board;
import sesoc.global.keyworld.vo.ScrapedArticle;

public interface BoardDAO {

	public List<Board> select(Map<String, String> search, RowBounds rb);
	public int insert(Board board);
	public int delete(int boardnum);
	public int update(Board board);
	public Board selectOne(int boardnum);
	public int getBoardCount(Map<String, String> search);
	public List<ScrapedArticle> scrapList(Map<String, String> search, RowBounds rb);
	public int getScrapCount(Map<String, String> search);
}
