<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="java.net.URLDecoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html>
<head>
<title>부스 예약</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
<link rel="stylesheet" href="jquery-mobile.css">
<script src="jquery-mobile.js"></script>
</head>
<body>
<%
 String booth_no = request.getParameter("booth_no");
 String booth_name = request.getParameter("booth_name");
 String phonenumber = request.getParameter("phonenumber");
 
%>


 
<script type="text/javascript"> 
function fn_click(){ 
	alert("[<%=booth_name%>] 부스 예약이 완료되었습니다."); 
}
</script> 


<div data-role="header">
<h1>부스 예약</h1>
</div>

<div data-role="main" class="ui-content">


<center>
<br>
[<%=booth_name%>] 부스의 NFC TAG가 입력되었습니다. <br> <br>
부스 예약을 하시겠습니까?<br><br><br>

<input type="submit" data-inline="true" value="네" onClick="fn_click()" data-theme="b"  >
<input type="button" data-inline="true" value="아니오" onClick="location.href='my_reserve.jsp?phonenumber=<%=phonenumber%>'" data-theme="b" >
</form>
</center>
</div>


</body>
</html>