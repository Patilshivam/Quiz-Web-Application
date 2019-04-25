<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<% try {
        String subject = request.getParameter("subject");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "quiz1", "quiz");
        System.out.println("CreateQuiz.jsp Name of subject " + subject);
        PreparedStatement ps = con.prepareStatement("insert into quizinfo(subject) values('" + subject + "') ");
        System.out.println("CreateQuiz After PS");
        int s = ps.executeUpdate();
        System.out.println("CreateQuiz.jsp Afetr executeUpdate");
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println("Something Went wrong");
    }
%>
<jsp:forward page="createquiz1.jsp"></jsp:forward>
