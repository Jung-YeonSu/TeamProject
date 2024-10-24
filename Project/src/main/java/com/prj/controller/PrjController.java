package com.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrjController {
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	@RequestMapping("/Test1")
	public String test1() {
		return "company/mypage/applyList/postList";
	}
	@RequestMapping("/Test2")
	public String test2() {
		return "company/mypage/applyList/view";
	}
	@RequestMapping("/Test3")
	public String test3() {
		return "company/mypage/bookmark/view";
	}
	@RequestMapping("/Test4")
	public String test4() {
		return "company/mypage/bookmark/list";
	}
	@RequestMapping("/Test5")
	public String test5() {
		return "company/mypage/applyList/applyList";
	}
}
