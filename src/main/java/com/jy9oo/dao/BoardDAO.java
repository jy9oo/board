package com.jy9oo.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

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
	
	public ArrayList<boardVO> getList(){
		ArrayList<boardVO> list = new ArrayList<boardVO>();
		
		try {
			String sql = "select mid, btitle, bcategory, blike, bdate from board ";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				boardVO vo = new boardVO();
				vo.setBid(rs.getString(1));
				vo.setBtitle(rs.getString(2));
				vo.setBcategory(rs.getString(3));
				vo.setBlike(rs.getString(4));
				vo.setBdate(rs.getString(5));
				list.add(vo);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
