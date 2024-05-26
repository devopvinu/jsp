<style>
   .container{
      padding: 5px;
   }
table {
   
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  overflow-x:auto;
}

table td, table th {
  border: 1px solid #ddd;
  padding: 8px;
}

table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
table tr:nth-child(even){background-color: #f2f2f2;}

table tr:hover {background-color: #ddd;}


</style>

<div class="container">

<%@ page import="java.sql.*" %>
<%@ page import="oracle.jdbc.OracleDriver" %>

<%
   try {
      Class.forName("oracle.jdbc.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "vinod");

      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT * FROM questions");

      out.println("<table>");
      out.println("<tr><th>question</th><th>option 1</th><th>option 2</th><th>option 3</th><th>option 4</th> <th>Answer</th> </tr>");
      while (rs.next()) {
         String gabsent = rs.getString("question");
         String babsent = rs.getString("option1");
         String subject = rs.getString("option2");
         String topic = rs.getString("option3");
         String date = rs.getString("option4");
         String tot = rs.getString("correctanswer");

         out.println("<tr><td>" + gabsent + "</td> <td>" + babsent + "</td><td>" + subject + "</td><td>" + topic + "</td><td>" + date + "</td><td>" + tot + "</td></tr>");
      }
      out.println("</table>");

      rs.close();
      stmt.close();
      con.close();
   } catch (Exception e) {
      e.printStackTrace();
      out.println("<p>Error: " + e.getMessage() + "</p>");
   }
%>


</div>