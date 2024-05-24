<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${cpath}/resources/js/list.js"></script>
  <script>
   loadBookList();
  </script>
</head>
<body>
  <table class="table table-hover table-boarded">
    <thead>
    <tr>
      <td>번호</td>
      <td>제목</td>
      <td>저자</td>
      <td>페이지</td>
    <tr>
    </thead>
    <tbody id="bookList">
       <!-- 여기에 책 리스트가 나오기 -->
    </tbody>
  </table>
  <button class="btn btn-sm btn-primary" onclick="location.href='${cpath}/ui/register'">등록</button>
</body>
</html>