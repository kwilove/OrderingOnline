package com.hzj.controller.common;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.hzj.util.Page;
import com.hzj.util.PageData;
import com.hzj.util.UuidUtil;

public class BaseController {

	public static final Logger logger = LoggerFactory.getLogger(BaseController.class);

	private static final long serialVersionUID = 6357869213649815390L;

	/**
	 * 得到PageData
	 */
	public PageData getPageData() {
		return new PageData(this.getRequest());
	}

	/**
	 * 得到ModelAndView
	 */
	public ModelAndView getModelAndView() {
		return new ModelAndView();
	}

	/**
	 * 得到request对象
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		return request;
	}

	/**
	 * 得到32位的uuid
	 * 
	 * @return
	 */
	public static String get32UUID() {

		return UuidUtil.get32UUID();
	}

	/**
	 * 得到分页列表的信息
	 */
	public Page getPage() {

		return new Page();
	}

	public static void logBefore(Logger logger, String interfaceName) {
		logger.info("");
		logger.info("start");
		logger.info(interfaceName);
	}

	public static void logAfter(Logger logger) {
		logger.info("end");
		logger.info("");
	}

	// 异常处理
	// @ExceptionHandler
	// public String exp(HttpServletRequest request, Exception ex) {
	// if (ex instanceof SDSJControllerException) {
	// request.setAttribute("ex", ex.getMessage());
	// } else if (ex instanceof SDSJServiceException) {
	// request.setAttribute("ex", ex.getMessage());
	// } else {
	// request.setAttribute("ex", "访问出现异常，请稍后再试！");
	// }
	//
	// logger.error(ex.toString(), ex);
	// return "/error.html";
	// }

	// 保存留痕记录
	// protected void addLHJL(UserManage user, String type_code, String[] args)
	// {
	// lhjlServiceImpl.saveJL(user, type_code, args);
	// }

	/**
	 * 获取会话中的用户对象
	 * 
	 * @return
	 */
	// protected UserManage getUser() {
	// return (UserManage)
	// getRequest().getSession().getAttribute(Const.SESSION_USER);
	// }

	/**
	 * 获取登录信息
	 */
	// protected PageData getDlxx() {
	// Subject subject = SecurityUtils.getSubject();
	// Session session = subject.getSession();
	// return (PageData) session.getAttribute("PageData");
	// }

}
