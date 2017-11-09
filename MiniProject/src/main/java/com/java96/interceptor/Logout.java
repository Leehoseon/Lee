package com.java96.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.java96.dto.MemberVO;

public class Logout extends HandlerInterceptorAdapter {

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		
		HttpSession session = request.getSession();
		
		MemberVO member = (MemberVO) session.getAttribute("memberDTO");
		
		System.out.println(member+"membermembermembermembermembermember");
		
		if(member != null) {
			System.out.println(member+"objobjobjobjobjobjobjobjobjobjobjobjobjobjobjobj");
			session.removeAttribute("membetDTO");
			session.invalidate();
			System.out.println(member+"objobjobjobjobjobjobjobjobjobjobjobjobjobjobjobj");
			
			
			Cookie loginCookie = WebUtils.getCookie(request, "memberDTO");
			
			
			
			if(loginCookie != null) {
				System.out.println(loginCookie+"logincookie");
				
				/*loginCookie.setPath("/");*/
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				
				System.out.println(loginCookie+"logincookie");

		
			}
		
			
		
		}
		
		return true;
	}
	
	
}
