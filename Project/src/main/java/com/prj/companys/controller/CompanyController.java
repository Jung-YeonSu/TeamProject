package com.prj.companys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.companys.mapper.CompanyMapper;
import com.prj.companys.vo.CompanyVo;
import com.prj.users.vo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("Company")
public class CompanyController {
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@RequestMapping("/LoginForm")
	public String loginForm() {
		return "company/loginForm";
	}
	

	@PostMapping("/Login")
	public String login(HttpServletRequest requset,
					    HttpServletRequest response ) {

		System.out.println(requset);
		System.out.println(response);
		String 		 userid = requset.getParameter("company_id");
		String 		 passwd = requset.getParameter("company_pw");
		// db 조회
		CompanyVo 		 vo     = companyMapper.login(userid,passwd);
		System.out.println(vo);
		
		HttpSession session = requset.getSession();
		session.setAttribute("login", vo);
		return "redirect:/";
	}	
	
	
	@RequestMapping("/RegisterForm")
	public String registerForm() {
		return "company/registerForm";
	}

	
	@RequestMapping("/Register")
	public ModelAndView regiser(CompanyVo companyVo) {
		System.out.println(companyVo);
		companyMapper.insertCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Company/LoginForm");
		return mv;
	}
	
	
}