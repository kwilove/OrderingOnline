package com.hzj.controller.foodlist;

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
import javax.servlet.http.HttpServletResponse;
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
import com.hzj.service.foodlist.FoodListService;
import com.hzj.service.restaurant.RestaurantService;
import com.hzj.util.AppUtil;
import com.hzj.util.Const;
import com.hzj.util.FileUpload;
import com.hzj.util.Page;
import com.hzj.util.PageData;
import com.hzj.util.PathUtil;

/**
 * 类名称：FoodListController 创建人：FH 创建时间：2016-03-15
 */
@Controller
@RequestMapping(value = "/foodlist")
public class FoodListController extends BaseController {

	String menuUrl = "foodlist/list.do"; // 菜单地址(权限用)
	@Resource(name = "foodlistService")
	private FoodListService foodlistService;
	@Resource(name = "restaurantService")
	private RestaurantService restaurantService;

	/**
	 * 新增
	 */
	@RequestMapping(value = "/save")
	public ModelAndView save(@RequestParam(value = "PICTURE", required = false) MultipartFile file, @RequestParam(value = "RESTAURANTID") String RESTAURANTID,
			@RequestParam(value = "FOODNAME") String FOODNAME, @RequestParam(value = "FOODPRICE") String FOODPRICE, @RequestParam(value = "AMOUNT") String AMOUNT) throws Exception {
		logBefore(logger, "新增FoodList");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		if (null != file && !file.isEmpty()) {
			String filePath = PathUtil.getClassResources() + Const.HEADPHOTOPATHFILE; // 头像上传路径
			String fileName = FileUpload.fileUp(file, filePath, this.get32UUID()); // 执行上传
			pd.put("PICTURE", filePath + fileName);
		} else {
			pd.put("HEADPHOTO", "images/user/default_headphoto.jpg");
		}
		pd.put("FOODLIST_ID", this.get32UUID()); // 主键
		pd.put("RESTAURANTID", RESTAURANTID);
		pd.put("FOODNAME", FOODNAME);
		pd.put("FOODPRICE", FOODPRICE);
		pd.put("AMOUNT", AMOUNT);
		foodlistService.save(pd);
		mv.addObject("msg", "success");
		mv.setViewName("redirect:list");
		return mv;
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete")
	public void delete(PrintWriter out) {
		logBefore(logger, "删除FoodList");
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			foodlistService.delete(pd);
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
	public ModelAndView edit() throws Exception {
		logBefore(logger, "修改FoodList");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		foodlistService.edit(pd);
		mv.addObject("msg", "success");
		mv.setViewName("save_result");
		return mv;
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list")
	public ModelAndView list(Page page) {
		logBefore(logger, "列表FoodList");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> varList = foodlistService.list(page); // 列出FoodList列表
			pd.put("RESTAURANT_ID", pd.getString("RESTAURANTID"));
			pd = restaurantService.findById(pd); // 列出Restaurant列表
			mv.setViewName("/restaurant/foodList");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/listByRestaurantId")
	public ModelAndView findByRestaurantId(HttpServletRequest request, HttpServletResponse respom) throws Exception {
		logBefore(logger, "列表FoodList");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			HttpSession session = request.getSession(false);
			session.setAttribute(Const.SESSION_ORDER, pd);
			if (!pd.getString("restaurantid").equals((String) session.getAttribute(Const.SESSION_REST))) {
				System.err.println(session.getAttribute(Const.SESSION_REST));
				session.removeAttribute(Const.SESSION_CART);
				session.setAttribute(Const.SESSION_TOTALPRICE, new Double(0));
				session.setAttribute(Const.SESSION_TOTALCOUNT, new Integer(0));
			}
			session.setAttribute(Const.SESSION_REST, pd.getString("restaurantid"));
			List<PageData> varList = foodlistService.findByRestaurantId(pd); // 列出FoodList列表
			mv.setViewName("shop");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
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
		logBefore(logger, "去新增FoodList页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("foodList/foodlist/foodlist_edit");
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
		logBefore(logger, "去修改FoodList页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = foodlistService.findById(pd); // 根据ID读取
			mv.setViewName("foodList/foodlist/foodlist_edit");
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
		logBefore(logger, "批量删除FoodList");
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if (null != DATA_IDS && !"".equals(DATA_IDS)) {
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				foodlistService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, "导出FoodList到excel");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			Map<String, Object> dataMap = new HashMap<String, Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("食物名称"); // 1
			titles.add("食物单价"); // 2
			titles.add("库存"); // 3
			titles.add("所属餐厅"); // 4
			titles.add("餐厅图片"); // 5
			dataMap.put("titles", titles);
			List<PageData> varOList = foodlistService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for (int i = 0; i < varOList.size(); i++) {
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("FOODNAME")); // 1
				vpd.put("var2", varOList.get(i).get("FOODPRICE").toString()); // 2
				vpd.put("var3", varOList.get(i).get("AMOUNT").toString()); // 3
				vpd.put("var4", varOList.get(i).getString("RESTAURANTID")); // 4
				vpd.put("var5", varOList.get(i).getString("PICTURE")); // 5
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
