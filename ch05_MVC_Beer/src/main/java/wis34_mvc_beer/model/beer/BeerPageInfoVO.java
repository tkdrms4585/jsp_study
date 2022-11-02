package wis34_mvc_beer.model.beer;

public class BeerPageInfoVO {

	private int limitCnt;
	
	private int recordCnt;
	private int pageCnt;
	
	private int startRecord;
	private int currentPageNo;
	
	private int startPageNo;
	private int endPageNo;
	
	public BeerPageInfoVO() {
		super();
		
		this.recordCnt = 0;
		
		this.currentPageNo = 0;
		this.startRecord = 0;
		this.limitCnt = 10;
		this.endPageNo = this.limitCnt;
	}

	public int getLimitCnt() {
		return limitCnt;
	}

	public void setLimitCnt(int limitCnt) {
		this.limitCnt = limitCnt;
	}

	public int getRecordCnt() {
		return recordCnt;
	}

	public void setRecordCnt(int recordCnt) {
		this.recordCnt = recordCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getStartRecord() {
		return startRecord;
	}

	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	
	public void adjPageCnt() {
		pageCnt = recordCnt / limitCnt;
		
		if (recordCnt % limitCnt != 0)
			pageCnt++;
	}
	
	public void adjStartRecord() {
		startRecord = currentPageNo * limitCnt;
	}
	
	public void adjStartPageNo() {
		startPageNo = currentPageNo / 10 * 10;
	}
	
	public void adjEndPageNo() {
		endPageNo = startPageNo + 10;
		
		if (endPageNo > pageCnt) {
			endPageNo = pageCnt;
		}
	}
	
	public void adjPageInfo() {
		adjPageCnt();
		adjStartRecord();
		adjStartPageNo();
		adjEndPageNo();
	}
}
