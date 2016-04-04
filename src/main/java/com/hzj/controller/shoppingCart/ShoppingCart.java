package com.hzj.controller.shoppingCart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hzj.controller.common.BaseController;
import com.hzj.util.Const;
import com.hzj.util.PageData;

@Controller
@RequestMapping(value = "/shoppingcart")
public class ShoppingCart extends BaseController {

	private double totalprice = 0;
	private int totalcount = 0;

	public double getTotalprice(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		this.totalprice = (double) session.getAttribute(Const.SESSION_TOTALPRICE);
		return this.totalprice;
	}

	public void setTotalprice(double totalprice, HttpServletRequest request) {
		this.totalprice = totalprice;
		HttpSession session = request.getSession(false);
		session.setAttribute(Const.SESSION_TOTALPRICE, this.totalprice);
	}

	public void TotalcountSub(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		this.totalcount = (int) session.getAttribute(Const.SESSION_TOTALCOUNT) - 1;
		session.setAttribute(Const.SESSION_TOTALCOUNT, this.totalcount);
	}

	public void TotalcountAdd(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		this.totalcount = (int) session.getAttribute(Const.SESSION_TOTALCOUNT) + 1;
		session.setAttribute(Const.SESSION_TOTALCOUNT, this.totalcount);
	}

	/**
	 * 添加
	 */
	@SuppressWarnings({ "unchecked" })
	@RequestMapping(value = "/add")
	@ResponseBody
	public Map<String, Object> add(HttpServletRequest request) throws Exception {
		logBefore(logger, "添加食物进购物车");
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession(false);
		PageData pd = this.getPageData();
		List<PageData> cart = (List<PageData>) session.getAttribute(Const.SESSION_CART);
		if (cart != null) {
			int i = 0;
			for (; i < cart.size(); i++) {
				PageData cartItem = cart.get(i);
				if (cartItem.getString("FOODLIST_ID").equals(pd.getString("FOODLIST_ID"))) {
					cartItem.put("FOOD_COUNT", (Integer) cartItem.get("FOOD_COUNT") + 1);
					break;
				}
			}
			if (i == cart.size()) {
				pd.put("FOOD_COUNT", 1);
				cart.add(pd);
			}
		} else {
			pd.put("FOOD_COUNT", 1);
			cart = new ArrayList<PageData>();
			cart.add(pd);
		}
		this.setTotalprice(this.getTotalprice(request) + Double.parseDouble((String) pd.get("FOODPRICE")), request);
		this.TotalcountAdd(request);
		System.out.println("TotalPrice is " + this.getTotalprice(request));
		session.setAttribute(Const.SESSION_CART, cart);
		map.put("totalprice", this.getTotalprice(request));
		map.put("msg", "success");

		return map;
	}

	/**
	 * 删减
	 */
	@RequestMapping(value = "/delete")
	@ResponseBody
	public Map<String, Object> delete(HttpServletRequest request) throws Exception {
		logBefore(logger, "从购物车删减食物");
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession(false);
		PageData pd = this.getPageData();
		@SuppressWarnings("unchecked")
		List<PageData> cart = (List<PageData>) session.getAttribute(Const.SESSION_CART);
		if (cart != null) {
			for (PageData cartItem : cart) {
				if (cartItem.getString("FOODLIST_ID").equals(pd.getString("FOODLIST_ID"))) {
					int foodCount = (Integer) cartItem.get("FOOD_COUNT");
					if (foodCount > 1) {
						cartItem.put("FOOD_COUNT", foodCount - 1);
						this.setTotalprice(
								this.getTotalprice(request) - Double.parseDouble((String) pd.get("FOODPRICE")),
								request);
					} else if (foodCount == 1) {
						cartItem.put("FOOD_COUNT", foodCount - 1);
						cart.remove(cartItem);
						this.setTotalprice(
								this.getTotalprice(request) - Double.parseDouble((String) pd.get("FOODPRICE")),
								request);
					} else {
						continue;
					}
					this.TotalcountSub(request);
					break;
				}
			}
		}
		System.out.println("TotalPrice is " + this.getTotalprice(request));
		session.setAttribute(Const.SESSION_CART, cart);
		map.put("totalprice", this.getTotalprice(request));
		map.put("msg", "success");

		return map;
	}

	/**
	 * 查询
	 */
	@RequestMapping(value = "/list")
	@ResponseBody
	public ModelAndView list(HttpServletRequest request) throws Exception {
		logBefore(logger, "从购物车查詢食物");
		HttpSession session = request.getSession(false);
		ModelAndView mv = new ModelAndView();
		@SuppressWarnings("unchecked")
		List<PageData> cart = (List<PageData>) session.getAttribute(Const.SESSION_CART);
		if (cart != null) {
			mv.addObject("msg", "success");
			mv.addObject("cart", cart);
		} else {
			mv.addObject("msg", "null");
		}
		return mv;
	}
}
