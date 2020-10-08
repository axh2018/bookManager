package cn.com.jaav.controller;

import cn.com.jaav.pojo.Book;
import cn.com.jaav.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查詢所有書籍
    @RequestMapping("/manager")
    public String allBook(Model model) {
        List<Book> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "manager";
    }

    //刪除一本書
    @RequestMapping("/delBook")
    public String delBook(int id) {
        int success = bookService.delBookById(id);
        return "redirect:/book/manager";
    }

    //增加一本書
    @RequestMapping("/addBook")
    public String addBook(Book book) {
        int bookID = book.getBookID();
        String bookName = book.getBookName();
        int bookCounts = book.getBookCounts();
        String detail = book.getDetail();
        int success = bookService.addBook(book);
        return "redirect:/book/manager";
    }

    //修改一本書
    @RequestMapping("/updateBook")
    public String updateBook(Book book) {
        int bookID = book.getBookID();
        String bookName = book.getBookName();
        int bookCounts = book.getBookCounts();
        String detail = book.getDetail();
        int success = bookService.updateBook(book);
        return "redirect:/book/manager";
    }

    //將要修改一本書
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int id, Model model) {
        Book book = bookService.queryBookById(id);
        model.addAttribute("bookInfo", book);
        return "update";
    }

    //查詢一本書
    @RequestMapping("/queryBook")
    public String queryBookById(int id, Model model) {
        Book book = bookService.queryBookById(id);
        model.addAttribute("bookInfo", book);
        return "manager";
    }

    //搜索框
    @RequestMapping("/queryBookByName")
    public String queryBook(String bookName, Model model)
    {
        Book book = bookService.queryBookByName(bookName);
        List<Book> list = new ArrayList<Book>();
        list.add(book);
        if (book == null)
        {
            list = bookService.queryAllBook();
            model.addAttribute("error", "無結果");
        }
        model.addAttribute("list", list);
        return "manager";
    }
}
