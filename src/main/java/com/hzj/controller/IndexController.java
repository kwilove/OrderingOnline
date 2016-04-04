package com.hzj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hzj.controller.common.BaseController;
import com.hzj.service.restaurant.RestaurantService;
import com.hzj.util.PageData;

/**
 * Created by Administrator on 2015/12/22.
 */
@Controller
public class IndexController extends BaseController {

	@Resource(name = "restaurantService")
	private RestaurantService restaurantService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	protected ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	@RequestMapping(value = "/home")
	protected ModelAndView home(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData> varList = restaurantService.listAll(pd);
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("msg", "hello world");
		mv.setViewName("home");
		return mv;
	}

}
