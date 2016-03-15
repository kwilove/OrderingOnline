package com.hzj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
@RequestMapping(value = "/", method = RequestMethod.GET)
public class IndexController extends BaseController {

	protected ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("index");
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.addObject("msg", "hello world");
		return mv;
	}

}
