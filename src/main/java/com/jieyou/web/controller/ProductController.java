package com.jieyou.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.jieyou.web.bean.Item;
import com.jieyou.web.service.ItemService;

@RequestMapping("products")
@Controller
public class ProductController {
    
	@Autowired
    private ItemService itemService;
    
	/*
     * 展示所有商品
     */
	@RequestMapping(value="allitem",method=RequestMethod.GET)
    public ModelAndView showAllItem(){
        ModelAndView mv=new ModelAndView("product");
        List<Item> list= this.itemService.queryAllItem();
        mv.addObject("list",list);
        return mv;
    }
	
	/*
     * 展示分类所有商品
     */
	@RequestMapping(value="{itemCatId}",method=RequestMethod.GET)
    public ModelAndView showItemByCatId(@PathVariable("itemCatId") Long itemCatId){
        ModelAndView mv=new ModelAndView("product");
        List<Item> list= this.itemService.queryItemByCatId(itemCatId);
        mv.addObject("list",list);
        return mv;
    }
}
