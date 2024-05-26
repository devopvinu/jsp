<style>
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
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

.container-mba, .container-mca{
   max-width: 75%;
   margin: 0 auto;
   padding: 20px;
}
.tittle{
   text-align: center;
}

</style>

<%@ page import="java.sql.*" %>
<%@ page import="oracle.jdbc.OracleDriver" %>

<div class="container-mba">
<div class="tittle">
   <h3>MBA DATA</h3>
</div>

<%
   try {
      Class.forName("oracle.jdbc.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "vinod");

      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT * FROM MBA");

      out.println("<table>");
         out.println("<tr><th>Girls</th><th>Boys</th><th>Subject</th><th>Lecture</th><th>Topic</th><th>Date</th><th>Girls Absent</th><th>Boys Absent</th><th>Total Absentese</th></tr></tr>");
         while (rs.next()) {
         String gabsent = rs.getString("girls");
         String babsent = rs.getString("boys");
         String subject = rs.getString("subject");
         String lecture = rs.getString("lecture");
         String topic = rs.getString("topic");
         String date = rs.getString("tdate");
         String gab = rs.getString("gab");
         String bab = rs.getString("bab");
         String count = rs.getString("tot");

         out.println("<tr><td>" + gabsent + "</td> <td>" + babsent + "</td><td>" + subject + "</td><td>" + lecture + "</td><td>" + topic + "</td><td>" + date + "</td><td>" + gab + "</td><td>" + bab + "</td><td>" + count + "</td></tr>");
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

<div class="container-mca">
   <div class="tittle">
      <h3>MCA DATA</h3>
   </div>
<%
   try {
      Class.forName("oracle.jdbc.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "vinod");

      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT * FROM MCA");

      out.println("<table>");
         out.println("<tr><th>Girls</th><th>Boys</th><th>Subject</th><th>Lecture</th><th>Topic</th><th>Date</th><th>Girls Absent</th><th>Boys Absent</th><th>Total Absentese</th></tr></tr>");
         while (rs.next()) {
         String gabsent = rs.getString("girls");
         String babsent = rs.getString("boys");
         String subject = rs.getString("subject");
         String lecture = rs.getString("lecture");
         String topic = rs.getString("topic");
         String date = rs.getString("tdate");
         String gab = rs.getString("gab");
         String bab = rs.getString("bab");
         String count = rs.getString("tot");

         out.println("<tr><td>" + gabsent + "</td> <td>" + babsent + "</td><td>" + subject + "</td><td>" + lecture + "</td><td>" + topic + "</td><td>" + date + "</td><td>" + gab + "</td><td>" + bab + "</td><td>" + count + "</td></tr>");
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
