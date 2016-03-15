package com.hzj.common.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hzj.util.Const;

/**
 * @author wtang 2015-10-16
 */
@Repository
public class LoginInterceptor extends HandlerInterceptorAdapter {
  private static final String[] NO_FILTERS = new String[] {
      "/login",
      "/toLogin",
      "/js/",
      "/images/",
      "/css/",
      "/font/",
      "/skins/",
      "/easyui/",
      "/publicinquire/",
      "/notice/",
      "/code",
      "/o/register/register_company/",
      "/o/register/register_unit/"
  };

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

    String uri = request.getRequestURI();
    
    for (String noFilter : NO_FILTERS) {
      if (uri.startsWith(noFilter)) {
        return true;
      }
    }

    if (request.getSession().getAttribute(Const.SESSION_USERNAME) == null) {
      response.sendRedirect("/login");
      return false;
    }

    return true;
  }
}
