package com.hzj.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hzj.controller.common.BaseController;
import com.hzj.util.PageData;

/**
 * Created by Administrator on 2015/12/22.
 */
@Controller
public class RegisterController extends BaseController {

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	protected ModelAndView index(HttpServletRequest request) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		mv.setViewName("login");
		mv.addObject("msg", "successed");
		// model.addObject("msg", "failed");
		return mv;
	}

}
