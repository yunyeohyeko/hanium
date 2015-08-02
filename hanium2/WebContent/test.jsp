<%@ page language="java" contentType="text/plane; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
 String phonenumber = request.getParameter("phonenumber");
%>


<%

Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정

String DB_URL = "jdbc:mysql://118.222.16.84:3306/javadb?useUnicode=true&characterEncoding=utf8";
		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(javadb)

String DB_USER = "root"; //  데이터베이스에 접근하는 아이디
String DB_PASSWORD= "c4iuser1!"; // password


try {     
	 Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득
	 Statement stmt = conn.createStatement(); // 상태 확인
    String query = "SELECT b_number, c_name, w_number FROM reservation WHERE u_phonenumber = " + phonenumber; 
    ResultSet rs = stmt.executeQuery(query); // 쿼리문 실행!


}
catch (SQLException e) { // 예외처리
out.println("err:"+e.toString());
}






	JSONArray jsonArray = new JSONArray();
	JSONObject object1 = new JSONObject();
	object1.put("","");
	object1.put("","");
	object1.put("","");
	
	out.clear();
	out.println(jsonArray);
	out.flush();
	
%>

test
</body>
</html>