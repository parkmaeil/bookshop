<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
   <%
      int sum=0;
      for(int i=1;i<=10;i++){
        sum+=i;
      }
   %>
   <%=sum%>
</body>
</html>