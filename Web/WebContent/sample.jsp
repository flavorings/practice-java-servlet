<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="SampleServlet" method="POST">
    <p>氏名</p>
    姓 <input type="text" name="last-name" value="">
    名 <input type="text" name="first-name" value="">

    <p>性別</p>
    <input type="radio" name="gender" value="male" checked> 男性
    <input type="radio" name="gender" value="female"> 女性

    <input type="submit" value="送信">
  </form>

  <hr>

  <ul>
  <%
  if(request.getAttribute("lists") != null) {
    List<String> lists = (List<String>)request.getAttribute("lists");
    for(String list: lists) {
  %>
	 <li><%= list %></li>
  <%
    }
  }
  %>
  </ul>
</body>
</html>