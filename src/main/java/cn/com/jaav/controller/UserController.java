package cn.com.jaav.controller;

import cn.com.jaav.pojo.User;
import cn.com.jaav.service.BookService;
import cn.com.jaav.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController
{
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    /*
     * 登錄
     */
    @RequestMapping("/login")
    public String login(HttpSession session, User user, Model model)
    {
        int row = userService.queryUser(user);
        if (row > 0)
        {
            session.setAttribute("userInfo", user.getUsername());
            System.out.println("登录成功");
            return "redirect:/book/manager";
        }
        else{
            model.addAttribute("msg", "用户名或密码错误");
            System.out.println("用户名或密码错误");
        }

        return "redirect:/index.jsp";
    }

    /*
     * 注冊
     */
    @RequestMapping("/register")
    public String register(User user, Model model)
    {
        int success = userService.addUser(user);
        if (success > 0)
        {
            model.addAttribute("success", "success");
            return "redirect:/index.jsp";
        }
        else
            model.addAttribute("success", "failed");
        return "redirect:/register.jsp";
    }
}
