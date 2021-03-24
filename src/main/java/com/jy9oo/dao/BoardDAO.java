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
			String sql = "select bid, mid, btitle, bcategory, blike, bdate from board ";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				boardVO vo = new boardVO();
				vo.setBid(rs.getString(1));
				vo.setMid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBcategory(rs.getString(4));
				vo.setBlike(rs.getString(5));
				vo.setBdate(rs.getString(6));
				list.add(vo);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boardVO getContent(String bid){
		boardVO vo = new boardVO();
		
		try {
			String sql=" select bid, mid, btitle, bcontent, blike, bdate, bcategory, pnumber,lang,bcodes,bfile,bsfile from board where bid=? ";
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setBid(rs.getString(1));
				vo.setMid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBcontent(rs.getString(4));
				vo.setBlike(rs.getString(5));
				vo.setBdate(rs.getString(6));
				vo.setBcategory(rs.getString(7));
				vo.setPnumber(rs.getString(8));
				vo.setLang(rs.getString(9));
				vo.setBcodes(rs.getString(10));
				vo.setBfile(rs.getString(11));
				vo.setBsfile(rs.getString(12));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean getUpdate(boardVO vo) {
		boolean result = false;
		
		try {
			String sql ="update board set btitle=?, bcategory=?, pnumber=?,bcontent=?,lang=?,bcodes=?, bfile=?, bsfile=? where bid=? ";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcategory());
			pstmt.setString(3, vo.getPnumber());
			pstmt.setString(4, vo.getBcontent());
			pstmt.setString(5, vo.getLang());
			pstmt.setString(6, vo.getBcodes());
			pstmt.setString(7, vo.getBfile());
			pstmt.setString(8, vo.getBsfile());
			pstmt.setString(9, vo.getBid());
			
			int val = pstmt.executeUpdate();
			if(val != 0 ) result = true;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public boolean getUpdateP(boardVO vo) {
		boolean result = false;
		
		try {
			String sql = " update board set btitle=?, bcategory=?, pnumber=?, bcontent=?, lang=?, bcodes=? where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcategory());
			pstmt.setString(3, vo.getPnumber());
			pstmt.setString(4, vo.getBcontent());
			pstmt.setString(5, vo.getLang());
			pstmt.setString(6, vo.getBcodes());
			pstmt.setString(7, vo.getBid());
			
			int val = pstmt.executeUpdate();
			if(val != 0 ) result = true;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
