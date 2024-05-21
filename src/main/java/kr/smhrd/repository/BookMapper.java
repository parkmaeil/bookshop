package kr.smhrd.repository;

import kr.smhrd.entity.Book;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

//@Mapper
public interface BookMapper { // SQL Mapper file
    // 연결부분
    // 책 전체 목록을 가져오기 동작
    public List<Book> bookList();
}
/*
   public SqlSessionFactoryBean implements BookMapper{
    public List<Book> bookList(){
       // MyBatis로직 구현
    }
   }

   private BookMapper bm=new SqlSessionFactoryBean();

 */