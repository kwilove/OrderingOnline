package com.hzj.service.foodlist;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hzj.dao.DaoSupport;
import com.hzj.util.Page;
import com.hzj.util.PageData;


@Service("foodlistService")
public class FoodListService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("FoodListMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("FoodListMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("FoodListMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("FoodListMapper.datalistPage", page);
	}
	
	/*
	*通过餐厅ID获取食物列表
	*/
	public List<PageData> findByRestaurantId(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("FoodListMapper.findByRestaurantId", pd);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("FoodListMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("FoodListMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("FoodListMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

