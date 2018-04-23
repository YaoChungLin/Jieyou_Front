package com.jieyou.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jieyou.web.bean.Item;
import com.jieyou.web.service.ItemService;

@RequestMapping("search")
@Controller
public class SearchController {

	@Autowired
	private ItemService itemService;
    
    /*
     * 模糊查询商品
     */
	@RequestMapping(value="item",method=RequestMethod.GET)
    public ModelAndView queryItemByTitle(String q){
        ModelAndView mv=new ModelAndView("product");
        List<Item> list= this.itemService.queryItemByTitle(q);
        mv.addObject("list",list);
        return mv;
    }
}
