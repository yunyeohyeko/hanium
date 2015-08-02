<%@page import="java.sql.*" %>
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
 String booth_no = request.getParameter("booth_num");
 Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정

 String DB_URL = "jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf8";
 		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(jsp)

 String DB_USER = "root"; //  데이터베이스에 접근하는 아이디
 String DB_PASSWORD= "0324"; // password

 try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득
	 Statement stmt = conn.createStatement(); // 상태 확인
     String query = "SELECT c_name, b_number, c_site, c_phonenumber, c_hireinfo, c_hireperson, c_info FROM company where b_number = " + booth_no; 
     ResultSet rs = stmt.executeQuery(query); // 쿼리문 실행!
     
     while(rs.next()){ 
    	 String booth_num = rs.getString("b_number");
    	 String company_name = rs.getString("c_name");
    	 String company_site = rs.getString("c_site");
    	 int company_phonenumber = rs.getInt("c_phonenumber");
    	 String company_hireinfo = rs.getString("c_hireinfo");
    	 String company_hireperson = rs.getString("c_hireperson");
    	 String company_info = rs.getString("c_info");
     
    	 
 %>
 
 <div data-role="content">
	
		<center>
			<h2>기업 상세 정보</h2>
			<ul data-role="listview">
        			<li data-role="list-divider"><h5><%=company_name%></h5></li>
        			<li>부스 번호 <%=booth_num%></li>
        			<li>대표 홈페이지 <%=company_site%></li>
        			<li>채용 정보 <%=company_hireinfo%></li>
        			<li>채용 인원 <%=company_hireperson%></li>
        			<li>회사 소개 <%=company_info%></li>
        			</ul> 
        			</center>
        			</div>
<% 
     }
 }
 catch (SQLException e) { // 예외처리
     out.println("err:"+e.toString());
 }

%>
</body>
</html>