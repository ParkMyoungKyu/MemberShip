package com.miris.project.dto;

public class MonthlyWorkVO {
	
	//월별 근무이력
	private String mw_id;
	private String mw_year;
	private String mw_month;
	//private String w_name;
	//private String l_code;
	private String mw_status;
	//private String w_except;
	private String mw_notice;
	
	//사이트
	private String l_code;
	private String l_name;
	
	//업무
	private String w_name;
	private String w_except;
	
		
	//조회하기 위한
	private String m_pw;
	private String m_name;
	private String m_gubun;
	private String d_code;
	private String m_position;
	private String m_notice;
	
	
	//인원현황을 위한
	private String total;
	private String except;
	private String usingWork;
	private String inputWork1;
	private String waitWork;
	private String avg1;
	
	//월별 조회 담기용도
	private String JAN;
	private String FEB;
	private String MAR;
	private String APR;
	private String MAY;
	private String JUN;
	private String JUL;
	private String AUG;
	private String SEPT;
	private String OCT;
	private String NOV;
	private String DEC;
	
	//월별 제외여부 담기용도
	private String JAN_EXCEPT;
	private String FEB_EXCEPT;
	private String MAR_EXCEPT;
	private String APR_EXCEPT;
	private String MAY_EXCEPT;
	private String JUN_EXCEPT;
	private String JUL_EXCEPT;
	private String AUG_EXCEPT;
	private String SEPT_EXCEPT;
	private String OCT_EXCEPT;
	private String NOV_EXCEPT;
	private String DEC_EXCEPT;
	
	//페이징용
    private int start;
    private int end;
    
    
    
	public String getJAN_EXCEPT() {
		return JAN_EXCEPT;
	}
	public void setJAN_EXCEPT(String jAN_EXCEPT) {
		JAN_EXCEPT = jAN_EXCEPT;
	}
	public String getFEB_EXCEPT() {
		return FEB_EXCEPT;
	}
	public void setFEB_EXCEPT(String fEB_EXCEPT) {
		FEB_EXCEPT = fEB_EXCEPT;
	}
	public String getMAR_EXCEPT() {
		return MAR_EXCEPT;
	}
	public void setMAR_EXCEPT(String mAR_EXCEPT) {
		MAR_EXCEPT = mAR_EXCEPT;
	}
	public String getAPR_EXCEPT() {
		return APR_EXCEPT;
	}
	public void setAPR_EXCEPT(String aPR_EXCEPT) {
		APR_EXCEPT = aPR_EXCEPT;
	}
	public String getMAY_EXCEPT() {
		return MAY_EXCEPT;
	}
	public void setMAY_EXCEPT(String mAY_EXCEPT) {
		MAY_EXCEPT = mAY_EXCEPT;
	}
	public String getJUN_EXCEPT() {
		return JUN_EXCEPT;
	}
	public void setJUN_EXCEPT(String jUN_EXCEPT) {
		JUN_EXCEPT = jUN_EXCEPT;
	}
	public String getJUL_EXCEPT() {
		return JUL_EXCEPT;
	}
	public void setJUL_EXCEPT(String jUL_EXCEPT) {
		JUL_EXCEPT = jUL_EXCEPT;
	}
	public String getAUG_EXCEPT() {
		return AUG_EXCEPT;
	}
	public void setAUG_EXCEPT(String aUG_EXCEPT) {
		AUG_EXCEPT = aUG_EXCEPT;
	}
	public String getSEPT_EXCEPT() {
		return SEPT_EXCEPT;
	}
	public void setSEPT_EXCEPT(String sEPT_EXCEPT) {
		SEPT_EXCEPT = sEPT_EXCEPT;
	}
	public String getOCT_EXCEPT() {
		return OCT_EXCEPT;
	}
	public void setOCT_EXCEPT(String oCT_EXCEPT) {
		OCT_EXCEPT = oCT_EXCEPT;
	}
	public String getNOV_EXCEPT() {
		return NOV_EXCEPT;
	}
	public void setNOV_EXCEPT(String nOV_EXCEPT) {
		NOV_EXCEPT = nOV_EXCEPT;
	}
	public String getDEC_EXCEPT() {
		return DEC_EXCEPT;
	}
	public void setDEC_EXCEPT(String dEC_EXCEPT) {
		DEC_EXCEPT = dEC_EXCEPT;
	}
	public String getM_notice() {
		return m_notice;
	}
	public void setM_notice(String m_notice) {
		this.m_notice = m_notice;
	}
	public String getMw_id() {
		return mw_id;
	}
	public void setMw_id(String mw_id) {
		this.mw_id = mw_id;
	}
	public String getMw_year() {
		return mw_year;
	}
	public void setMw_year(String mw_year) {
		this.mw_year = mw_year;
	}
	public String getMw_month() {
		return mw_month;
	}
	public void setMw_month(String mw_month) {
		this.mw_month = mw_month;
	}
	public String getMw_status() {
		return mw_status;
	}
	public void setMw_status(String mw_status) {
		this.mw_status = mw_status;
	}
	public String getMw_notice() {
		return mw_notice;
	}
	public void setMw_notice(String mw_notice) {
		this.mw_notice = mw_notice;
	}
	public String getL_code() {
		return l_code;
	}
	public void setL_code(String l_code) {
		this.l_code = l_code;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getW_name() {
		return w_name;
	}
	public void setW_name(String w_name) {
		this.w_name = w_name;
	}
	public String getW_except() {
		return w_except;
	}
	public void setW_except(String w_except) {
		this.w_except = w_except;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_gubun() {
		return m_gubun;
	}
	public void setM_gubun(String m_gubun) {
		this.m_gubun = m_gubun;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public String getM_position() {
		return m_position;
	}
	public void setM_position(String m_position) {
		this.m_position = m_position;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getExcept() {
		return except;
	}
	public void setExcept(String except) {
		this.except = except;
	}
	public String getUsingWork() {
		return usingWork;
	}
	public void setUsingWork(String usingWork) {
		this.usingWork = usingWork;
	}
	public String getInputWork1() {
		return inputWork1;
	}
	public void setInputWork1(String inputWork1) {
		this.inputWork1 = inputWork1;
	}
	public String getWaitWork() {
		return waitWork;
	}
	public void setWaitWork(String waitWork) {
		this.waitWork = waitWork;
	}
	public String getAvg1() {
		return avg1;
	}
	public void setAvg1(String avg1) {
		this.avg1 = avg1;
	}
	public String getJAN() {
		return JAN;
	}
	public void setJAN(String jAN) {
		JAN = jAN;
	}
	public String getFEB() {
		return FEB;
	}
	public void setFEB(String fEB) {
		FEB = fEB;
	}
	public String getMAR() {
		return MAR;
	}
	public void setMAR(String mAR) {
		MAR = mAR;
	}
	public String getAPR() {
		return APR;
	}
	public void setAPR(String aPR) {
		APR = aPR;
	}
	public String getMAY() {
		return MAY;
	}
	public void setMAY(String mAY) {
		MAY = mAY;
	}
	public String getJUN() {
		return JUN;
	}
	public void setJUN(String jUN) {
		JUN = jUN;
	}
	public String getJUL() {
		return JUL;
	}
	public void setJUL(String jUL) {
		JUL = jUL;
	}
	public String getAUG() {
		return AUG;
	}
	public void setAUG(String aUG) {
		AUG = aUG;
	}
	public String getSEPT() {
		return SEPT;
	}
	public void setSEPT(String sEPT) {
		SEPT = sEPT;
	}
	public String getOCT() {
		return OCT;
	}
	public void setOCT(String oCT) {
		OCT = oCT;
	}
	public String getNOV() {
		return NOV;
	}
	public void setNOV(String nOV) {
		NOV = nOV;
	}
	public String getDEC() {
		return DEC;
	}
	public void setDEC(String dEC) {
		DEC = dEC;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
    
    
    
	
}
