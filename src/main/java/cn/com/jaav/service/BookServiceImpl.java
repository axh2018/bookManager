package cn.com.jaav.service;

import cn.com.jaav.mapper.BookMapper;
import cn.com.jaav.pojo.Book;
import org.springframework.stereotype.Service;

import java.util.List;


public class BookServiceImpl implements BookService
{
    private BookMapper mapper;

    public void setMapper(BookMapper mapper)
    {
        this.mapper = mapper;
    }
    public int addBook(Book book)
    {
        return mapper.addBook(book);
    }

    public int delBookById(int id)
    {
        return mapper.delBookById(id);
    }

    public int updateBook(Book book)
    {
        return mapper.updateBook(book);
    }

    public Book queryBookById(int id)
    {
        return mapper.queryBookById(id);
    }

    public List<Book> queryAllBook()
    {
        return mapper.queryAllBook();
    }

    public Book queryBookByName(String bookName)
    {
        return mapper.queryBookByName(bookName);
    }

}
