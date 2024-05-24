package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

    @GetMapping("/register")
    public String register(){
        return "rest/register"; //register.jsp
    }

    @GetMapping("/get/{id}")
    public String get(@PathVariable Long id, Model model){
        model.addAttribute("id",id);
        return "rest/get"; // 상세보기 -> ${id}=3
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable Long id, Model model){
        model.addAttribute("id", id);
        return "rest/modify";
    }
}
