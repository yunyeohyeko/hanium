<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
      .jbBox {
        width: 200px;
        height: 200px;
        overflow: auto;
        margin-bottom: 20px;
      }
    </style>
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<script>
      $( document ).ready( function() {
        $( 'button' ).click( function() {
          alert( $( '.jbBox' ).scrollTop() );
        } );
      } );
    </script>
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


 Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정

 String DB_URL = "jdbc:mysql://localhost:3306/mysql?useUnicode=true&characterEncoding=utf8";
 		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(mysql)

 String DB_USER = "root"; //  데이터베이스에 접근하는 아이디
 String DB_PASSWORD= "0324"; // password

 try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득
	 Statement stmt = conn.createStatement(); // 상태 확인
     String query = "SELECT c_name, b_number, r_submit FROM booth"; 
     ResultSet rs = stmt.executeQuery(query); // 쿼리문 실행!
 %>
 <center>
     <h1>참여기업 리스트</h1>
     </center>
      
 <%
     while(rs.next()){                                                        // 결과를 한 행씩 돌아가면서 가져온다.

    	 String booth_num = rs.getString("b_number");
    	 String booth_name = rs.getString("c_name");
    	 String booth_apply = rs.getString("r_submit");
 %>

	<div data-role="content">
     <ul data-role="listview">
     <li><a href="CompanyInfo.jsp?booth_name=<%=booth_name%>&booth_num=<%=booth_num%>">	<%--상세정보로 이동하는 하이퍼링크 --%>
        				<h2>[부스번호<%=booth_num%>] <%=booth_name %></h2>
        				<span class="ui-li-count">이력서 수용여부 <%=booth_apply%></span>
        		</a></li></ul></div>
<% 
     }
 }
 catch (SQLException e) { // 예외처리
     out.println("err:"+e.toString());
 }

%>
</body>
</html>