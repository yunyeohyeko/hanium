<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div data-role="page">

		<div data-role="header">
			<a href="#" data-icon="grid" data-iconpos="notext"></a>
			<a href="#" data-icon="home" data-iconpos="notext"></a>
				<h1>한이음 박람회</h1>
		</div>
<%
	Class.forName("org.sqlite,JDBC")
	Connection conn DriverManager.getConnection("jdbc:sqlite:c\\test.db");
	Statement stat = conn.createStatement();
	stat.executeUpdate("create table if not exist pam (c_pam)");
	stat.executeUpdate("insert into pam values () ")//db에 저장된 팜플렛을 가져와야되나???
	
	ResultSet rs = stat.executeQuery("select * from pam");
	while (rs.next()){
		out.println ("name = "+)
	}
%>
</body>
</html>