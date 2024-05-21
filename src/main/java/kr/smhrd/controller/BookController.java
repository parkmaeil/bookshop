package kr.smhrd.controller;

import kr.smhrd.entity.Book;
import kr.smhrd.repository.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

// POJO
@Controller
public class BookController{ // new BookController()

    @Autowired
    private BookMapper mapper;
    // 요청(5)을 받아서 처리하는 Controller
    // http://localhost:8081/book/bookList
    @RequestMapping("/bookList")
    public String bookList(Model model){
        // 데이터베이스에서 책 목록을 가져오기?
        // SqlSessionFactoryBean-->BookMapper(bookList())
        List<Book> list=mapper.bookList(); //SqlSessionFactoryBean->bookList()-->SQL
        model.addAttribute("list", list);
        return "list"; // /WEB-INF/views/list.jsp
    }
    @RequestMapping("/bookRegister")
    public String bookRegister(){
        return "register"; // register.jsp(등록 UI)
    }
}
