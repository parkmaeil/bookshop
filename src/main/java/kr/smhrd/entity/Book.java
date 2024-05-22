package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 잘 설계한 DTO(VO)
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {
    private Long id; // null
    private String title;
    private int price;
    private String author;
    private int page;

}
