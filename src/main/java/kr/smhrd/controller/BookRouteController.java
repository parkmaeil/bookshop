package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ui")
public class BookRouteController {
    // http://localhost:8081/book/ui/list
    // 책 리스트 보기
    @GetMapping("/list")
    public String list(){
        return "rest/list"; // rest/list.jsp(JS->Ajax)
    }

}
