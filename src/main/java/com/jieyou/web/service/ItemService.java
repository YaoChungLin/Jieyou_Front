package com.jieyou.web.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jieyou.manage.pojo.ItemDesc;
import com.jieyou.web.bean.Item;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class ItemService {
    
    @Autowired
    private ApiService apiService;
    
    @Value("${jieyou_MANAGE_URL}")
    private String jieyou_MANAGE_URL;
    
    private static final ObjectMapper MAPPER=new ObjectMapper();

    /*
     * 根据id值查询商品数据提供给前台系统
     */
    public Item queryItemById(Long itemId) {
       try {
        String url=jieyou_MANAGE_URL+"/rest/api/item/"+itemId;
        String jsonDate=this.apiService.doGet(url);
        return MAPPER.readValue(jsonDate, Item.class);
    } catch (Exception e) {
        e.printStackTrace();
    }
        return null;
    }

    /*
     * 根据id值查询商品描述数据提供给前台系统
     */
	public ItemDesc queryItemDescByItemId(Long itemId) {
		try {
			String url=jieyou_MANAGE_URL+"/rest/api/item/desc/"+itemId;
	        String jsonDate=this.apiService.doGet(url);
	        return MAPPER.readValue(jsonDate, ItemDesc.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	/*
	 * 查询所有商品提供给前台系统
	 */

	public List<Item> queryAllItem() {
		try {
			String url=jieyou_MANAGE_URL+"/rest/api/item/allitem";
			String jsonDate = this.apiService.doGet(url);  
			//将jsonArray字符串转化为JSONArray  
	        JSONArray jsonArray = JSONArray.fromObject(jsonDate); 
	        
			List<Item> list=new ArrayList<Item>();
			
			for (int i = 0; i < jsonArray.size(); i++) {
				JSONObject  jsonitem= jsonArray.getJSONObject(i); 
				Item item = (Item)JSONObject.toBean(jsonitem, Item.class);
				System.out.println(item);
				list.add(item);
				
			}
	        return list;
	        
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	
	public List<Item> queryItemByCatId(Long itemCatId) {
		try {
			String url=jieyou_MANAGE_URL+"/rest/api/item/catitem?itemCatId="+itemCatId;
			String jsonDate = this.apiService.doGet(url);  
			//将jsonArray字符串转化为JSONArray  
	        JSONArray jsonArray = JSONArray.fromObject(jsonDate); 
	        
			List<Item> list=new ArrayList<Item>();
			
			for (int i = 0; i < jsonArray.size(); i++) {
				JSONObject  jsonitem= jsonArray.getJSONObject(i); 
				Item item = (Item)JSONObject.toBean(jsonitem, Item.class);
				System.out.println(item);
				list.add(item);
				
			}
	        return list;
	        
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public List<Item> queryItemByTitle(String q) {
		try {
			String url=jieyou_MANAGE_URL+"/rest/api/item/title?q="+q;
			String jsonDate = this.apiService.doGet(url);  
			//将jsonArray字符串转化为JSONArray  
	        JSONArray jsonArray = JSONArray.fromObject(jsonDate); 
	        
			List<Item> list=new ArrayList<Item>();
			
			for (int i = 0; i < jsonArray.size(); i++) {
				JSONObject  jsonitem= jsonArray.getJSONObject(i); 
				Item item = (Item)JSONObject.toBean(jsonitem, Item.class);
				System.out.println(item);
				list.add(item);
				
			}
	        return list;
	        
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
