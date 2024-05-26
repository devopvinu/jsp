<%@ page import="java.sql.*" %>
<%@ page import="oracle.jdbc.OracleDriver" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<%

String gabsent = request.getParameter("girls");
String babsent = request.getParameter("boys");
String subject = request.getParameter("subject");
String lecture = request.getParameter("lecture");
String topic = request.getParameter("topic");
String date = request.getParameter("date");

String girlsAbsentList = gabsent;
String boysAbsentList = babsent;

int girlsAbsentCount = 0;
int boysAbsentCount = 0;

List<String> girlsAbsentListSplit = Arrays.asList(girlsAbsentList.split(","));

for (String girlsAbsent : girlsAbsentListSplit) {
if (!girlsAbsent.isEmpty()) {
girlsAbsentCount++;
}
}

List<String> boysAbsentListSplit = Arrays.asList(boysAbsentList.split(","));

for (String boysAbsent : boysAbsentListSplit) {
if (!boysAbsent.isEmpty()) {
boysAbsentCount++;
}
}
 
int totalAbsentees= girlsAbsentCount+boysAbsentCount;

   try {
      Class.forName("oracle.jdbc.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "vinod");

      PreparedStatement stmt = con.prepareStatement("INSERT INTO mca (girls,boys,subject, topic, tdate, lecture, gab, bab, tot) VALUES (?, ?, ?, ?, ?, ?, ?,?,?)");
      stmt.setString(1, gabsent);
      stmt.setString(2, babsent);
      stmt.setString(3, subject);
      stmt.setString(4, topic);
      stmt.setString(5, date);
      stmt.setString(6, lecture);
      stmt.setInt(7, girlsAbsentCount);
      stmt.setInt(8, boysAbsentCount);
      stmt.setInt(9, totalAbsentees);
      stmt.executeUpdate();
    
      stmt.close();
      con.close();
    
      out.println("<script>alert('Data Added Sucessfully');</script>");
      out.println("<script> window.location.href='attendance.jsp';</script>");
  
  
   } catch (Exception e) {
      e.printStackTrace();
      out.println("<p>Error: " + e.getMessage() + "</p>");
   }
%>


