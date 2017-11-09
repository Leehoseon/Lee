package com.java96.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.java96.dto.MemberVO;

public class ModifyCheck extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		
			MemberVO member =	(MemberVO) request.getSession().getAttribute("memberDTO") ;
			
		
		
	}

	
	
	

}
