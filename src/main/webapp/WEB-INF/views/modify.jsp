<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Spring Framework</h2>
  <div class="card">
    <div class="card-header">책 수정하기</div>
    <div class="card-body">
       <!--  상세보기-->
       <form action="${cpath}/modify" method="post">
         <input type="hidden" name="id" value="${book.id}"/>
         <div class="form-group">
           <label for="title">책제목:</label>
           <input type="text" class="form-control" value="${book.title}" name="title">
         </div>
         <div class="form-group">
           <label for="price">가격:</label>
           <input type="number" class="form-control" value="${book.price}" name="price">
         </div>
         <div class="form-group">
           <label for="author">저자:</label>
           <input type="text" class="form-control" value="${book.author}" name="author">
         </div>
         <div class="form-group">
           <label for="page">페이지:</label>
           <input type="text" class="form-control" value="${book.page}" name="page">
         </div>
         <button type="submit" class="btn btn-primary">수정</button>
         <button type="reset" class="btn btn-warning">취소</button>
         <a class="btn btn-success" href="${cpath}/bookList">목록</a>
        </form>
    </div>
    <div class="card-footer">디지털 빅테이터 과정</div>
  </div>
</div>

</body>
</html>
