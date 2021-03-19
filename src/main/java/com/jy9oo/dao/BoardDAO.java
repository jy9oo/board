package com.jy9oo.dao;

import com.jy9oo.vo.boardVO;

public class BoardDAO extends DBConn{
	
	public boolean getInsert(boardVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into board "
					+ " values('Bid_'||seq_board_bid.nextval,?,0,0,sysdate,?,?,?,?,?,?,?,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getPnumber());
			pstmt.setString(3, vo.getBtitle());
			pstmt.setString(4, vo.getBcategory());
			pstmt.setString(5, vo.getBcontent());
			pstmt.setString(6, vo.getLang());
			pstmt.setString(7, vo.getBcodes());
			pstmt.setString(8, vo.getBfile());
			pstmt.setString(9, vo.getBsfile());
			
			int val = pstmt.executeUpdate();
			if(val != 0 ) result = true;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
