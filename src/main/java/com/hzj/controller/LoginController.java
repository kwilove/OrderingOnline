package com.hzj.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hzj.controller.common.BaseController;
import com.hzj.entity.User;
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

	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	protected ModelAndView index(HttpServletRequest request) throws Exception {

		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		PageData currentUser = null;
		if ((currentUser = userService.isExist(pd)) != null) {
			HttpSession session = request.getSession(false);
			session.setAttribute(Const.SESSION_USER, currentUser);
			mv.addObject("msg", "success");
			mv.setViewName("personal_center");
			return mv;
		}
		mv.setViewName("login");
		return mv;
	}

}
