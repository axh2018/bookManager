package cn.com.jaav.mapper;

import cn.com.jaav.pojo.User;

public interface UserMapper
{
    //注冊
    public int addUser(User user);
    //登錄
    public int queryUser(User user);
}