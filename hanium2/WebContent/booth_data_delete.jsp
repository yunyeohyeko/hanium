<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
 request.setCharacterEncoding("utf-8");
 String booth_name = request.getParameter("booth_name");
 String phonenumber = request.getParameter("phonenumber");

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://118.222.16.84:3306/javadb?useUnicode=true&characterEncoding=utf-8";
  Connection con = DriverManager.getConnection(url,"root","c4iuser1!");
  Statement stat = con.createStatement();
  String query = "DELETE FROM reservation where u_phonenumber=" + phonenumber + " and c_name='" + booth_name + "'";
  //쿼리문 전송
  stat.executeUpdate(query); //return 1.
  stat.close();
  con.close();
  response.sendRedirect("my_reserve.jsp?phonenumber=" + phonenumber) ;
 }

  catch(Exception e){
  out.println( e );
 }
 %>
 
