package kr.smhrd.controller;

import kr.smhrd.entity.Book;
import kr.smhrd.repository.BookMapper;
import kr.smhrd.service.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

// POJO
@Controller
@RequiredArgsConstructor
public class BookController{ // BookController bookController=new BookController();

    private final BookService bookService;
    // 요청(5)을 받아서 처리하는 Controller
    // http://localhost:8081/book/bookList
    @RequestMapping("/bookList")
    public String bookList(Model model){
        // 데이터베이스에서 책 목록을 가져오기?
        // SqlSessionFactoryBean-->BookMapper(bookList())
        List<Book> list=bookService.getList(); //SqlSessionFactoryBean->bookList()-->SQL
        model.addAttribute("list", list);
        return "list"; // /WEB-INF/views/list.jsp
    }
    @GetMapping("/register")
    public String bookRegister(){
        return "register"; // register.jsp(등록 UI)
    }
    @PostMapping("/register")
    public String register(Book book){ // 파라메터수집
      // 데이터베이스에 저장
      bookService.register(book); // 저장성공?
      // 성공후 다시 리스트로 돌아가기?
      return "redirect:/bookList"; // redirect 기법
    }
    // 상세보기 요청
    @GetMapping("/get") // ?id=2
    public String bookDetail(Long id, Model model){ // id  X X X X
        Book book=bookService.getById(id);
        // 객체바인딩....
        model.addAttribute("book", book);
        return "get"; // get.jsp
    }
    @GetMapping("/remove") // ?id=3
    public String remove(Long id){
        bookService.remove(id);
        return "redirect:/bookList";
    }
    @GetMapping("/modify")
    public String modify(Long id, Model model){
        Book book=bookService.getById(id);
        model.addAttribute("book", book);
        return "modify"; // modify.jsp(수정페이지)
    }
    @PostMapping("/modify")
    public String modify(Book book){
        bookService.modify(book); // 수정성공
        return "redirect:/bookList";
    }
}
