package com.java96.intercepter;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginAfterinterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		if(request.getMethod().equals("GET")) {
			return;
		}
		
		
		Map<String,Object> map = modelAndView.getModel();
		
		if(map.get("memberDTO") !=null) {
			request.getSession().setAttribute("memberDTO", map.get("memberDTO"));
		}

	}

}
