<%@ page import="java.sql.*" %>
<%@ page import="oracle.jdbc.OracleDriver" %>

<!DOCTYPE html>
<html>
<style>
.container{
    width: 50%;
    margin: 0 auto;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 30%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.title{
  text-align: center;
}
</style>
<body>


    <div class="container">  
        <h3 class="title">Add questions</h3>

  <form action="" method="post" >
  
    <label for="question">Question</label>
    <input type="text" name="question" placeholder="question ">

    <label for="option1">Option 1</label>
    <input type="text" name="option1" placeholder=" option 1.">

    <label for="option2">Option 2</label>
    <input type="text" name="option2" placeholder=" option 2..">

    <label for="option3">Option 3</label>
    <input type="text" name="option3" placeholder=" option3">

    <label for="option4">Option 4</label>
    <input type="text" name="option4" placeholder="option 4">

    <label for="text">Answer</label>
    <input type="text" name="answer" placeholder=" Answer">

  
    <input type="submit" value="Submit">
  </form>
</div>
</div>



<%
 
if (request.getMethod().equals("POST")) {

    Connection con = null;
    PreparedStatement preparedStatement = null;

    // Get form data
    String question = request.getParameter("question");
    String option1 = request.getParameter("option1");
    String option2 = request.getParameter("option2");
    String option3 = request.getParameter("option3");
    String option4 = request.getParameter("option4");
    String answer = request.getParameter("answer");
    

    try {
        Class.forName("oracle.jdbc.OracleDriver");
         con  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "vinod");

        String insertQuery = "INSERT INTO questions (question, option1, option2, option3, option4, correctanswer) VALUES (?, ?, ?, ?, ?, ?)";
        preparedStatement  = con.prepareStatement(insertQuery);
        
        preparedStatement.setString(1, question);
        preparedStatement.setString(2, option1);
        preparedStatement.setString(3, option2);
        preparedStatement.setString(4, option3);
        preparedStatement.setString(5, option4);
        preparedStatement.setString(6, answer);

        preparedStatement.executeUpdate();

        out.println("<script>alert('Data inserted successfully.'); </script>");
    } catch (Exception e) {
        out.println("<script>alert('An error occurred while inserting data.'); </script>");
        e.printStackTrace();
    } finally {
        if (preparedStatement != null) {
            preparedStatement.close();
        }
       
    }
}

%>



</body>
</html>


