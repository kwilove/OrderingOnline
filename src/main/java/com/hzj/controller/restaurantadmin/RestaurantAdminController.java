package com.hzj.controller.restaurantadmin;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hzj.controller.common.BaseController;
import com.hzj.service.restaurantadmin.RestaurantAdminService;
import com.hzj.util.AppUtil;
import com.hzj.util.Const;
import com.hzj.util.FileUpload;
import com.hzj.util.Page;
import com.hzj.util.PageData;
import com.hzj.util.PathUtil;
import com.hzj.util.Tools;

/**
 * 类名称：RestaurantAdminController 创建人：FH 创建时间：2016-03-15
 */
@Controller
@RequestMapping(value = "/restaurantadmin")
public class RestaurantAdminController extends BaseController {

	String menuUrl = "restaurantadmin/list.do"; // 菜单地址(权限用)
	@Resource(name = "restaurantadminService")
	private RestaurantAdminService restaurantadminService;

	/**
	 * 新增
	 */
	@RequestMapping(value = "/save")
	public ModelAndView save(@RequestParam(value = "HEADPHOTO", required = false) MultipartFile file,
			@RequestParam(value = "ADMINNAME") String ADMINNAME, @RequestParam(value = "PASSWORD") String PASSWORD,
			@RequestParam(value = "REALNAME") String REALNAME, @RequestParam(value = "SEX") String SEX,
			@RequestParam(value = "PHONE") String PHONE, @RequestParam(value = "IDENTITYCARD") String IDENTITYCARD)
					throws Exception {
		logBefore(logger, "新增餐厅管理员");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		if (null != file && !file.isEmpty()) {
			String filePath = PathUtil.getClassResources() + Const.HEADPHOTOPATHFILE; // 头像上传路径
			String fileName = FileUpload.fileUp(file, filePath, this.get32UUID()); // 执行上传
			pd.put("HEADPHOTO", filePath + fileName);
		} else {
			pd.put("HEADPHOTO", "images/user/default_headphoto.jpg");
		}
		pd.put("RESTAURANTADMIN_ID", this.get32UUID()); // 主键
		pd.put("RESTAURANT_ID", this.get32UUID()); // 主键
		pd.put("ADMINNAME", ADMINNAME);
		pd.put("PASSWORD", PASSWORD);
		pd.put("REALNAME", REALNAME);
		pd.put("SEX", SEX);
		pd.put("PHONE", PHONE);
		pd.put("IDENTITYCARD", IDENTITYCARD);
		restaurantadminService.save(pd);
		mv.addObject("msg", "success");
		mv.setViewName("login");
		return mv;
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete")
	public void delete(PrintWriter out) {
		logBefore(logger, "删除RestaurantAdmin");
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			restaurantadminService.delete(pd);
			out.write("success");
			out.close();
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}

	}

	/**
	 * 修改
	 */
	@RequestMapping(value = "/edit")
	@ResponseBody
	public Map<String, Object> edit(HttpServletRequest request) throws Exception {
		logBefore(logger, "修改RestaurantAdmin");
		Map<String, Object> map = new HashMap<>();
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			restaurantadminService.edit(pd);
			PageData currentUser = null;
			if ((currentUser = restaurantadminService.findById(pd)) != null) {
				HttpSession session = request.getSession(false);
				session.setAttribute(Const.SESSION_USER, currentUser);
				map.put("admin", currentUser);
			}
			map.put("msg", "success");
		} catch (Exception e) {
			map.put("msg", "fail");
		}
		return map;
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list")
	public ModelAndView list(Page page) {
		logBefore(logger, "列表RestaurantAdmin");
		// if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		// //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> varList = restaurantadminService.list(page); // 列出RestaurantAdmin列表
			mv.setViewName("restaurantAdmin/restaurantadmin/restaurantadmin_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX, this.getHC()); // 按钮权限
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/listAll")
	public ModelAndView listAll() {
		logBefore(logger, "显示所有RestaurantAdmin");
		// if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		// //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			List<PageData> varList = restaurantadminService.listAll(pd); // 列出RestaurantAdmin列表
			mv.setViewName("restaurantAdmin/restaurantadmin/restaurantadmin_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX, this.getHC()); // 按钮权限
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 去新增页面
	 */
	@RequestMapping(value = "/goAdd")
	public ModelAndView goAdd() {
		logBefore(logger, "去新增RestaurantAdmin页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("restaurantAdmin/restaurantadmin/restaurantadmin_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 去修改页面
	 */
	@RequestMapping(value = "/goEdit")
	public ModelAndView goEdit() {
		logBefore(logger, "去修改RestaurantAdmin页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = restaurantadminService.findById(pd); // 根据ID读取
			mv.setViewName("restaurantAdmin/restaurantadmin/restaurantadmin_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 批量删除
	 */
	@RequestMapping(value = "/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除RestaurantAdmin");
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if (null != DATA_IDS && !"".equals(DATA_IDS)) {
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				restaurantadminService.deleteAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			} else {
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}

	/*
	 * 导出到excel
	 * 
	 * @return
	 */
	@RequestMapping(value = "/excel")
	public ModelAndView exportExcel() {
		logBefore(logger, "导出RestaurantAdmin到excel");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			Map<String, Object> dataMap = new HashMap<String, Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("用户名"); // 1
			titles.add("密码"); // 2
			titles.add("真实姓名"); // 3
			titles.add("性别"); // 4
			titles.add("手机号"); // 5
			titles.add("身份证"); // 6
			titles.add("头像"); // 7
			dataMap.put("titles", titles);
			List<PageData> varOList = restaurantadminService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for (int i = 0; i < varOList.size(); i++) {
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("ADMINNAME")); // 1
				vpd.put("var2", varOList.get(i).getString("PASSWORD")); // 2
				vpd.put("var3", varOList.get(i).getString("REALNAME")); // 3
				vpd.put("var4", varOList.get(i).get("SEX").toString()); // 4
				vpd.put("var5", varOList.get(i).getString("PHONE")); // 5
				vpd.put("var6", varOList.get(i).getString("IDENTITYCARD")); // 6
				vpd.put("var7", varOList.get(i).getString("HEADPHOTO")); // 7
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/* ===============================权限================================== */
	public Map<String, String> getHC() {
		Subject currentUser = SecurityUtils.getSubject(); // shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>) session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
	}
}
