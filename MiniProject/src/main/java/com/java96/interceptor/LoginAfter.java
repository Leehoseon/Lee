package com.java96.interceptor;


import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.java96.dto.MemberDTO;
import com.java96.dto.MemberVO;

public class LoginAfter extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		Object MemberDTO = modelAndView.getModel();
		
		
		if(MemberDTO == null) {
			
			response.sendRedirect("/movie/home");
			
		}
		
		if(request.getMethod().equals("GET")) {
			return;
		}
		
		String auto = request.getParameter("auto");
		
		System.out.println("AUTO:" + auto);
		
		Map<String,Object> map = modelAndView.getModel();
		
		System.out.println("==============================");
		System.out.println("MAP.........................");
		System.out.println(map);
		
		if(map.get("memberDTO") != null ) {
			
			System.out.println("set session Data...................");
			
			//use session
			request.getSession().setAttribute("memberDTO", map.get("memberDTO"));
			try {
			if(auto.equals("on")) {
				
				System.out.println("use Session");
				//use cookie
				MemberVO dto = (MemberVO) map.get("memberDTO");
				System.out.println(dto);
				Cookie loginCookie = new Cookie("memberDTO", dto.getUid() );
				loginCookie.setMaxAge(60*60*24);
				response.addCookie(loginCookie);
			
				System.out.println("use Cookie");
				
				}
			}catch (Exception e) {
				System.out.println("not have");
			}
		
			response.sendRedirect("/movie/list");
		}
	}

}
