package com.java96.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.java96.dto.MemberDTO;
import com.java96.service.MemberService;

public class LoginCheck extends HandlerInterceptorAdapter {

	@Autowired
	MemberService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("Login check prehandle..............");
		
		

		boolean useSession = 
				request.getSession().getAttribute("memberDTO") != null?true:false;
		
		if(useSession) {
			System.out.println("current user use session ");
			return true;
		}
		
		System.out.println("we need check login cookie");
		
		Cookie loginCookie = WebUtils.getCookie(request, "memberDTO");
		
		boolean useCookie = loginCookie != null?true:false;
		
		if(useCookie) {
			System.out.println("current user use cookie...");
			
			
			
			request.getSession().setAttribute("memberDTO", "memberDTO");
			
			return true;
		}
		
		
		
		response.sendRedirect("/movie/home");
		
		return false;
		
	}
	

	
	
}
