package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

// POJO
@Controller
public class BookController{ // new BookController()
    // 요청(5)을 받아서 처리하는 Controller
    // http://localhost:8081/book/bookList
    @RequestMapping("/bookList")
    public String bookList(Model model){
        // 리스트를 가져오는 동작
        // 객체바인딩
        List<String> list=new ArrayList<>();
        list.add("apple");
        list.add("orange");
        model.addAttribute("list", list);
        return "list"; // /WEB-INF/views/list.jsp
    }
}
