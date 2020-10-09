package cn.com.jaav.service;

import cn.com.jaav.mapper.BookMapper;
import cn.com.jaav.mapper.UserMapper;
import cn.com.jaav.pojo.Book;
import cn.com.jaav.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService
{

    private UserMapper mapper;

    public void setMapper(UserMapper mapper)
    {
        this.mapper = mapper;
    }

    public int addUser(User user)
    {
        return mapper.addUser(user);
    }

    public int queryUser(User user)
    {
        return mapper.queryUser(user);
    }
}
