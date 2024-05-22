package kr.smhrd.service;

import kr.smhrd.entity.Book;
import kr.smhrd.repository.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BookService { //new BookService()

    @Autowired
    private BookMapper bookMapper;
    // 1.책목록을 가져오기 기능
    //@Transactional(readOnly = true)
    public List<Book> getList(){
        // 추가적인 로직이 필요하면 여기에 구현...
        return bookMapper.bookList();
    }
    // 2. 책 저장 기능
    public void register(Book book){
        bookMapper.register(book);
    }
    // 3. 상세보기
    public Book getById(Long id){
        return bookMapper.getById(id);
    }
    // 4. 삭제하기
    public void remove(Long id){
        bookMapper.remove(id);
    }
    // 5. 수정하기
    public void modify(Book book){
        bookMapper.modify(book);
    }
}
