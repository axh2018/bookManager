package cn.com.jaav.mapper;

import cn.com.jaav.pojo.Book;

import java.util.List;


public interface BookMapper
{
    //增删改查
    //增加一本书
    int addBook(Book book);
    //删除一本书
    int delBookById(int id);
    //修改一本书
    int updateBook(Book book);
    //查询一本书
    Book queryBookById(int id);
    //增加所有书
    List<Book> queryAllBook();
    //根據書名字查詢
    Book queryBookByName(String name);
}