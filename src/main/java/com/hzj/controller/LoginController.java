package com.hzj.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hzj.controller.common.BaseController;
import com.hzj.service.restaurantadmin.RestaurantAdminService;
import com.hzj.service.user.UserService;
import com.hzj.util.Const;
import com.hzj.util.PageData;

/**
 * Created by Administrator on 2015/12/22.
 */
@Controller
public class LoginController extends BaseController {

	@Resource(name = "userService")
	private UserService userService;
	@Resource(name = "restaurantadminService")
	private RestaurantAdminService restaurantadminService;

	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	protected ModelAndView index(HttpServletRequest request) throws Exception {

		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		PageData currentUser = null;
		if ((currentUser = userService.findById(pd)) != null) {
			HttpSession session = request.getSession(false);
			session.setAttribute(Const.SESSION_USER, currentUser);
			session.setAttribute("type", 1);
			mv.addObject("msg", "success");
			mv.setViewName("personal_center");
			return mv;
		}
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping(value = "/adminLoginCheck", method = RequestMethod.POST)
	protected ModelAndView adminLoginCheck(HttpServletRequest request) throws Exception {

		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		PageData currentUser = null;
		if ((currentUser = restaurantadminService.findById(pd)) != null) {
			HttpSession session = request.getSession(false);
			session.setAttribute(Const.SESSION_USER, currentUser);
			session.setAttribute("type", 2);
			mv.addObject("msg", "success");
			mv.setViewName("admin/admin_center");
			return mv;
		}
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping(value = "/logout")
	protected ModelAndView logout(HttpServletRequest request) throws Exception {

		ModelAndView mv = this.getModelAndView();
		HttpSession session = request.getSession(false);
		session.removeAttribute(Const.SESSION_USER);
		mv.addObject("msg", "success");
		mv.setViewName("login");
		return mv;
	}

}
