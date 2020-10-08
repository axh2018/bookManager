package cn.com.jaav.service;

import cn.com.jaav.pojo.Book;

import java.util.List;

public interface BookService
{
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
    //根據名字查詢書籍
    Book queryBookByName(String bookName);
}
