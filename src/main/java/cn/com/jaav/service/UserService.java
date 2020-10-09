package cn.com.jaav.service;

import cn.com.jaav.pojo.Book;
import cn.com.jaav.pojo.User;

public interface UserService
{
    //用戶注冊
    int addUser(User user);
    //用戶登錄
    int queryUser(User user);
}
