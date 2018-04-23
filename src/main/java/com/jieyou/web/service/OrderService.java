package com.jieyou.web.service;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jieyou.web.bean.Order;
import com.jieyou.web.bean.User;
import com.jieyou.web.httpclient.HttpResult;
import com.jieyou.web.threadlocal.UserThreadLocal;

@Service
public class OrderService {

	@Autowired
    private ApiService apiService;

    @Value("${jieyou_ORDER_URL}")
    private String jieyou_ORDER_URL;

    private static final ObjectMapper MAPPER = new ObjectMapper();

    /**
     * 提交订单到订单系统
     * 
     * @param order
     * @return
     */
    public String submit(Order order) {
        String url = jieyou_ORDER_URL + "/order/create";

        // 填充当前登录用户的信息
        User user = UserThreadLocal.get();
        order.setUserId(user.getId());
        order.setBuyerNick(user.getUsername());

        try {
            String json = MAPPER.writeValueAsString(order);
            HttpResult httpResult = this.apiService.doPostJson(url, json);
            if (httpResult.getCode().intValue() == 200) {
                String body = httpResult.getBody();
                JsonNode jsonNode = MAPPER.readTree(body);
                if (jsonNode.get("status").asInt() == 200) {
                    // 提交成功
                    return jsonNode.get("data").asText();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
}

    public Order queryByOrderId(String orderId) {
        String url = jieyou_ORDER_URL + "/order/query/" + orderId;
        try {
            String jsonData = this.apiService.doGet(url);
            if (StringUtils.isNotEmpty(jsonData)) {
                return MAPPER.readValue(jsonData, Order.class);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
