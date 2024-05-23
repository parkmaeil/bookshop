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
<script src="${cpath}/resources/js/list.js"></script>
<script>
   loadBookList();
</script>
</head>
<body>
  <table>
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

</body>
</html>