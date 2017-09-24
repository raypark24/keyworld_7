package sesoc.global.keyworld.util;

public class PageNavigator {

//	멤버
	private int countPerPage = 10;	// 한 페이지당 글 갯수
	private int pagePerGroup = 5;	// 그룹당 페이지 수
	private int currentPage;				// 현재 페이지
	private int totalRecordCount;			// 전체 글 개수
	private int totalPageCount;				// 총 페이지수
	private int currentGroup;				// 현재 그룹
	private int startPageGroup;				// 현재 그룹의 첫 페이지
	private int endPageGroup;				// 현재 그룹의 마지막 페이지
	private int startRecord;				// 전체 레코드 중 현재  페이지의 첫 글의 위치 (mybatis 에서 제공하는 구문을 사용하기 위해 만든 변수)
//	srow erow 계산하지 않고, mybatis의 기능을 사용할 예정
	
//	생성자
	public PageNavigator(int currentPage, int totalRecordCount) {
		
		this.totalRecordCount = totalRecordCount;
		
//		 전체 글 개수가 152개라면 16페이지
//		 전체 글 개수가 150개라면 15페이지
//		 -1 은 글이 1개 있을 경우 10으로 나누어 딱 떨어지게끔 하기 위해
		totalPageCount = (totalRecordCount + countPerPage -1) / countPerPage;
//		totalPageCount = (totalRecordCount % COUNT_PER_PAGE > 0) ? totalRecordCount/COUNT_PER_PAGE + 1 : totalRecordCount/COUNT_PER_PAGE;

//		현재 페이지 요청 시 계산
		if (currentPage < 1) currentPage = 1;								// currentPage가 0이하가 되지 않도록
		if (currentPage > totalPageCount) currentPage = totalPageCount;		// currentPage가 마지막 페이지 보다 커지지 않도록
	
		this.currentPage = currentPage;
		
//		현재 그룹 : 4
//		user가 보고 있는 페이지가 몇번 그룹에 속해있는가를 계산
		currentGroup = (currentPage - 1) / pagePerGroup;
		
//		현재 그룹의 첫 페이지
		startPageGroup = currentGroup * pagePerGroup + 1;
		startPageGroup = startPageGroup < 1 ? 1 : startPageGroup;
		
//		현재 그룹의 마지막 페이지
		endPageGroup = startPageGroup + pagePerGroup - 1;
		endPageGroup = endPageGroup < totalPageCount ? endPageGroup : totalPageCount;
		
//		전체 레코드 중에서 현재 페이지의 첫 글의 위치 (mybatis 의 RowBounds 에서 사용하는 값)
		startRecord = (currentPage - 1) * countPerPage;
		
	}

	//setter, getter 생성
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecordCount() {
		return totalRecordCount;
	}

	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getCurrentGroup() {
		return currentGroup;
	}

	public void setCurrentGroup(int currentGroup) {
		this.currentGroup = currentGroup;
	}

	public int getStartPageGroup() {
		return startPageGroup;
	}

	public void setStartPageGroup(int startPageGroup) {
		this.startPageGroup = startPageGroup;
	}

	public int getEndPageGroup() {
		return endPageGroup;
	}

	public void setEndPageGroup(int endPageGroup) {
		this.endPageGroup = endPageGroup;
	}

	public int getStartRecord() {
		return startRecord;
	}

	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}

	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	public int getPagePerGroup() {
		return pagePerGroup;
	}

	public void setPagePerGroup(int pagePerGroup) {
		this.pagePerGroup = pagePerGroup;
	}

	//toString
	@Override
	public String toString() {
		return "PageNavigator [COUNT_PER_PAGE=" + countPerPage + ", PAGE_PER_GROUP=" + pagePerGroup
				+ ", currentPage=" + currentPage + ", totalRecordCount=" + totalRecordCount + ", totalPageCount="
				+ totalPageCount + ", currentGroup=" + currentGroup + ", startPageGroup=" + startPageGroup
				+ ", endPageGroup=" + endPageGroup + ", startRecord=" + startRecord + "]";
	}
	
}
