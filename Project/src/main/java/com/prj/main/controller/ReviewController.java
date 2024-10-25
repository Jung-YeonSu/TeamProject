package com.prj.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("Main/Review")
public class ReviewController {
	
	/* review 관련 */
	/*================================================================================*/
	@RequestMapping("/List")
	public ModelAndView list() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/review/list");
		return mv;
	}
	
	@RequestMapping("/View")
	public ModelAndView view() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/review/view");
		return mv;
	}
	
}