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
    <div class="card-header">Book List</div>
    <div class="card-body">
       <table class="table table-hover table-bordered">
          <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>가격</th>
              <th>저자</th>
              <th>페이지</th>
            </tr>
          </thead>
          <tbody>
           <c:forEach var="book" items="${list}">
            <tr>
              <td>${book.id}</td>
              <td><a href="${cpath}/get/${book.id}">${book.title}</a></td>
              <td>${book.price}</td>
              <td>${book.author}</td>
              <td>${book.page}</td>
            </tr>
           </c:forEach>
          </tbody>
       </table>
       <button class="btn btn-sm btn-primary" onclick="location.href='${cpath}/register'">등록</button>
    </div>
    <div class="card-footer">디지털 빅테이터 과정</div>
  </div>
</div>

</body>
</html>
