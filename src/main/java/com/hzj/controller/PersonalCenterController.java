package com.hzj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2015/12/22.
 */
@Controller
public class PersonalCenterController {
	@RequestMapping("/personal_center")
	public String nav() {
		return "personal_center.jsp";
	}
}
