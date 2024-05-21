package kr.smhrd.entity;
// 잘 설계한 DTO(VO)
public class Book {
    private Long id; // null
    private String title;
    private int price;
    private String author;
    private int page;
    // setter, getter, 기본생성자, ~~, toString()
    public Book() {
    }

    public Book(Long id, String title, int price, String author, int page) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.author = author;
        this.page = page;
    }

    public Book(String title, int price, String author, int page) {
        this.title = title;
        this.price = price;
        this.author = author;
        this.page = page;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", author='" + author + '\'' +
                ", page=" + page +
                '}';
    }
}
