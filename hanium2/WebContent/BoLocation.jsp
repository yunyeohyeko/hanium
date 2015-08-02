<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="page">

		<div data-role="header">
			<a href="#" data-icon="grid" data-iconpos="notext"></a>
			<a href="#" data-icon="home" data-iconpos="notext"></a>
				<h1>한이음 박람회</h1>
		</div>
		
<%

 Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정

 String DB_URL = "jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf8";
 		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(jsp)

 String DB_USER = "root"; //  데이터베이스에 접근하는 아이디
 String DB_PASSWORD= "0324"; // password

 try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득
	 Statement stmt = conn.createStatement(); // 상태 확인
     String query = "SELECT b_number, c_name FROM expo"; 
     ResultSet rs = stmt.executeQuery(query); // 쿼리문 실행!
%>
<center>
<h1>박람회 배치도</h1>
</center>
<% 


     while(rs.next()){                                                        // 결과를 한 행씩 돌아가면서 가져온다.

    	 String booth_num = rs.getString("b_number");
    	 String booth_name = rs.getString("c_name"); 
 %>
	<div data-role="content">
	
		<center>
					<ul data-role="listview">
        			<li>
        			<h5>[부스번호 <%=booth_num%>] 참여기업명 : <%=booth_name %></h5>
        			</li>
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