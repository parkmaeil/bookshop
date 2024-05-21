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
       <!--  등록 UI(form)-->
       <form action="/action_page.php">
         <div class="form-group">
           <label for="email">Email address:</label>
           <input type="email" class="form-control" placeholder="Enter email" id="email">
         </div>
         <div class="form-group">
           <label for="pwd">Password:</label>
           <input type="password" class="form-control" placeholder="Enter password" id="pwd">
         </div>
         <div class="form-group form-check">
           <label class="form-check-label">
             <input class="form-check-input" type="checkbox"> Remember me
           </label>
         </div>
         <button type="submit" class="btn btn-primary">Submit</button>
       </form>
    </div>
    <div class="card-footer">디지털 빅테이터 과정</div>
  </div>
</div>

</body>
</html>