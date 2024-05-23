package kr.smhrd.controller;

import kr.smhrd.entity.Book;
import kr.smhrd.service.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

// 뷰가 없다.(jsp X)
// Data만 전달하는 기능의 컨트롤러(JSON)
// 데이터를 가져갈수있는 엔드포인트(URL주소)
@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class BookRestController {

    private final BookService bookService;
    // 책 전체리스트를 가져가기
    // [Rest API 명세서]
    // 1. GET : http://localhost:8081/book/api/books
    @GetMapping("/books")
    public ResponseEntity<?> getList(){
        List<Book> list=bookService.getList();
        // [{    },{    },{    }]
        return ResponseEntity.ok().body(list); // list--jackson-databind-->JSON변환
    }
    // 2.책 번호(1)에 해당하는 한권의 책을 보내기
    // GET : http://localhost:8081/book/api/books/{id} : id : 책번호
    @GetMapping("/books/{id}")
    public ResponseEntity<?> getById(@PathVariable Long id){
        Book book=bookService.getById(id);
        if(book != null){
            return ResponseEntity.ok().body(book);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Book not found");
        }
    }
    // 3. 책 등록하기
    // POST : http://localhost:8081/book/api/books : JSON data
    @PostMapping("/books")
    public ResponseEntity<?> register(@RequestBody Book book){ // @RequestBody : JSON데이터를 받을때
        bookService.register(book); // CREATE(201)
        return ResponseEntity.status(HttpStatus.CREATED).body("Book registered success");
    }
    // 4. 책 삭제하기
    // DELETE : http://localhost:8081/book/api/books/{id}
    @DeleteMapping("/books/{id}")
    public ResponseEntity<?> remove(@PathVariable Long id){
        bookService.remove(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Book removed success");
    }
    // 5. 책 수정하기
    // PUT : http://localhost:8081/book/api/books/{id} : id, JSON 데이터
    @PutMapping("/books/{id}")
    public ResponseEntity<?> modify(@PathVariable Long id, @RequestBody Book book){
        bookService.modify(id, book);
        return ResponseEntity.ok().body("Book modified success");
    }
}
