<%@page import="kh.semi.reviewBook.user.model.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RVB</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<script>

<% UserVo uuvo =(UserVo)request.getAttribute("usId");%>

alert("<%=uuvo.getUsId()%>");
location.href="login";
</script>
</body>
</html>