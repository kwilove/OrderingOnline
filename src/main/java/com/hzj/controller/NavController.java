package com.hzj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2015/12/22.
 */
@Controller
public class NavController {
	@RequestMapping("nav")
	public String nav() {
		return "nav.jsp";
	}
}
