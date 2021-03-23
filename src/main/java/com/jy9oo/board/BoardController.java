package com.jy9oo.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jy9oo.service.boardServiceImpl;
import com.jy9oo.vo.boardVO;

@Controller
public class BoardController {
	
	@Autowired
	private boardServiceImpl boardService;
	
	@RequestMapping(value="/board_list.do", method=RequestMethod.GET)
	public ModelAndView board_list(){
		return (ModelAndView)boardService.boardList();
	}
	
	@RequestMapping(value="/board_write.do", method=RequestMethod.GET)
	public String board_write() {
		return "board_write";
	}
	
	@RequestMapping(value="board_write_proc.do", method = RequestMethod.POST)
	public ModelAndView board_write_proc(boardVO vo) {
		return (ModelAndView)boardService.boardInsert(vo);
	}
	
	
	@RequestMapping(value="/board_content.do", method=RequestMethod.GET)
	public String board_content() {
		return "board_content";
	}
	
	@RequestMapping(value="/board_update.do", method=RequestMethod.GET)
	public String board_update() {
		return "board_update";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
