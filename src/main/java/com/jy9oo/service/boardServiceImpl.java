package com.jy9oo.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jy9oo.dao.BoardDAO;
import com.jy9oo.vo.boardVO;

@Service("boardService")
public class boardServiceImpl {
	
	@Autowired
	private BoardDAO boardDAO;
	
	public Object boardInsert(Object vo) {
		ModelAndView mv = new ModelAndView();
		boolean result = boardDAO.getInsert((boardVO)vo);
		if(result) {
			mv.setViewName("redirect:board_list.do");
		}
		return mv;
	}
	
	public Object boardList() {
		ModelAndView mv = new ModelAndView();
		ArrayList<boardVO> list = boardDAO.getList();
		mv.addObject("list", list);
		mv.setViewName("board_list");
		return mv;
	}
}
