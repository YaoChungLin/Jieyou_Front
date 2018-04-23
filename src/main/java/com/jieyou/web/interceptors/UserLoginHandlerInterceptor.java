package com.jieyou.web.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.jieyou.common.utils.CookieUtils;
import com.jieyou.web.bean.User;
import com.jieyou.web.service.UserService;
import com.jieyou.web.threadlocal.UserThreadLocal;

public class UserLoginHandlerInterceptor implements HandlerInterceptor {

    public static final String COOKIE_NAME = "TT_TOKEN";

    @Autowired
    private UserService userService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        UserThreadLocal.set(null);//清空本地线程中的User对象数据
        String loginUrl = this.userService.jieyou_SSO_URL + "/user/login.html";
        String token = CookieUtils.getCookieValue(request, COOKIE_NAME);
        if (StringUtils.isEmpty(token)) {
            // 未登录，跳转到登录页面
            response.sendRedirect(loginUrl);
            return false;
        }

        User user = this.userService.queryByToken(token);
        if (null == user) {
            // 登录超时，跳转到登录页面
            response.sendRedirect(loginUrl);
            return false;
        }
        UserThreadLocal.set(user);//将user对象放置再本地线程中，方便在controller和Service中获取
        // 登录成功
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
            Exception ex) throws Exception {
       
    }

}
