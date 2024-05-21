<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
              <th>과일목록</th>
            </tr>
          </thead>
          <tbody>
           <c:forEach var="f" items="${list}">
            <tr>
              <td>${f}</td>
            </tr>
           </c:forEach>
          </tbody>
       </table>
    </div>
    <div class="card-footer">디지털 빅테이터 과정</div>
  </div>
</div>

</body>
</html>
