package cn.com.jaav.config;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//登录拦截
public class LoginInteceptor implements HandlerInterceptor
{
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
    {
        System.out.println("拦截用户登录前操作");
        HttpSession session = request.getSession();
        if (request.getRequestURI().contains("login")){
            System.out.println("login直接放行");
            return true;
        }

        if (session.getAttribute("userInfo") != null){
            System.out.println("存在session，放行");
            return true;
        }

        request.getRequestDispatcher("/index.jsp").forward(request,response);
        return false;
    }
}