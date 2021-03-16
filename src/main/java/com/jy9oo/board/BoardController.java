package com.jy9oo.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	@RequestMapping(value="/board_list.do", method=RequestMethod.GET)
	public String board_list(){
		return "board_list";
	}
	
	@RequestMapping(value="/board_write.do", method=RequestMethod.GET)
	public String board_write() {
		return "board_write";
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