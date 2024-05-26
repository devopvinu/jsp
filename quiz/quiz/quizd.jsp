<%@ page import="java.sql.*" %>
<%@ page import="oracle.jdbc.OracleDriver" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.servlet.http.HttpSession" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
<style>
    body{
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;

}
.navbar{
            /* background-color: rgb(70, 188, 247); */
            border-radius: 0px;
            padding: 13px;
            margin: 0;
            background: rgb(29, 23, 93); 
            overflow: hidden;


            
        }
        .navbar ul{
            /* overflow: auto; */
        }
        .navbar li{
            float:right;
            list-style: none; 
            margin: 13px 20px;
            margin-top: -35px;
        }
        .navbar li a{
            padding: 3px 3px;
            text-decoration: none;
            color: white;
            font-size: 19px;
            transition: 0.3s;

        }
        .navbar li a:hover{
            background-color: rgb(248, 245, 245);
            padding: 10px;
            border-radius: 10px;
            border-bottom: 1px solid #fff;
            color: black;
        }

        @media screen and (max-width: 700px) {
            .navbar li {
                display: none;
  }
}
        
       
        .title{
            color: white;
        }
        .navbar input{
            border: 2px solid black;
            border-radius: 14px;
            padding: 5px 17px;
            width: 129px;
        }
        .log{
            float: left;
            height: 75px;
            margin-right: 25px;
            
        }

        .foter{
            /* position: fixed; */
            width: 100%;
            left: 0;
            bottom: 0;
            background-color: rgb(29, 23, 93); 
            text-align: center;
            /* height: 8rem; */
        }
     

        .copy-right{
            position: fixed;
            width: 100%;
            bottom: 0;
            left: 0;
            background-color: rgb(29, 23, 93); 
            color: white;
            text-align: center;

        }

        .check{
            padding: 10px 10px 10px 50px;
            background-color: #959798;
            height:17px;
            width:17px;

        }

    .grid-item{ 
        margin: 15px;;
     padding: 10px 10px 10px 50px;
    border: 1px solid rgba(255, 255, 255, .25);
    border-radius: 20px;
    box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(15px);
    background-color: rgba(250,250,250, 0.75);
    transition: transform 0.3s ease;

}

    .grid-item:hover{
       
      transform: translateY(-5px);
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    
    
    .grid-container {
       display: grid;
       grid-template-columns: 1fr 1fr;

}


.btn{

  max-width: 110px;
  color: #fff;
  padding: 13px;
  margin-left: 25px;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
  outline: none;
  border-radius: 8px;
  border: 2px solid #43c68d;
  background: #1ccc80;
  
}

.btn:hover{
    background: #fff;
  color: #3ec188

}

.result-container{
      padding: 10px;
      border: 1px solid rgba(255, 255, 255, .25);
  border-radius: 20px;
  background-color: rgba(255, 255, 255, 0.45);
  box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(15px);
  margin: 0 30px 0 30px;
}

.card {
    
    border: 1px solid rgba(255, 255, 255, .25);
    border-radius: 20px;
    box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(15px);
    background-color: rgba(250,250,250, 0.75);
    transition: transform 0.3s ease;
    padding: 10px;
    /* border-radius: 15px; */
    margin: 5px;
    width: 200px;
    height: 200px;
}

.card-container{
  background-color: #bebebe;
  display: flex;
 
}


 .rt,.rs,.rp{
    /* text-align: center; */
 }

.rccn{
    background-color: lightgreen;
    padding: 5px;
    border-radius: 10px;
    text-align: center;
}

.qb{
    padding: 3px;
}

.title h2 {
  overflow: hidden;
  border-right: .15em solid   rgb(29, 23, 93); 
  white-space: nowrap;
  letter-spacing: .10em;
  animation:
    typing 3.5s steps(40, end),
    blink-caret .75s step-end infinite;
}


/* The typing effect */
@keyframes typing {
  from {
    width: 0;
  }
  to {
    width: 37%;
  }
}

/* The typewriter cursor effect */
@keyframes blink-caret {
  from,
  to {
    border-color: transparent;
  }
  50% {
    border-color:  rgb(29, 23, 93); 
  }
}

.typewriter h2:after {
  content: '';
  border-right: .15em solid transparent;
  animation: blink-hide .5s step-end infinite;
}

/* The cursor hiding effect */
@keyframes blink-hide {
  from,
  to {
    border-color: transparent;
  }
}


.bd{
    background-color: rgb(222, 218, 218);
}

.restart-btn{
width: 70px;
font-family: Roboto, sans-serif;
font-weight: 0;
font-size: 14px;
color: #fff;
background-color: #0066CC;
padding: 10px 30px;
border: 2px solid #0066cc;
box-shadow: rgb(0, 0, 0) 0px 0px 0px 0px;
border-radius: 50px;
transition : 1000ms;
transform: translateY(0);
display: flex;
/* flex-direction: row; */
align-items: center;
cursor: pointer;
}

.restart-btn:hover{

transition : 1000ms;
padding: 10px 50px;
transform : translateY(-0px);
background-color: #fff;
color: #0066cc;
border: solid 2px #0066cc;
}

</style>
</head>
<body>
    <%
    boolean showQuiz = true; 

    Connection con = null;
    try {
        Class.forName("oracle.jdbc.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "vinod");
    } catch (Exception e) {
        e.printStackTrace();
    }

    List<String[]> questions = new ArrayList<>();
    try {
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM questions");
        while (resultSet.next()) {
            String[] questionData = new String[6];
            questionData[0] = resultSet.getString("question");
            questionData[1] = resultSet.getString("option1");
            questionData[2] = resultSet.getString("option2");
            questionData[3] = resultSet.getString("option3");
            questionData[4] = resultSet.getString("option4");
            questionData[5] = resultSet.getString("correctanswer");
            questions.add(questionData);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    // Define and initialize the showQuiz variable based on your logic

    if (request.getMethod().equalsIgnoreCase("POST")) {
        int score = 0;
        for (int i = 0; i < questions.size(); i++) {
            String userAnswer = request.getParameter("answer" + (i + 1));
            String correctAnswer = questions.get(i)[5];
            if (userAnswer != null && userAnswer.equalsIgnoreCase(correctAnswer)) {
                score++;
            }
        }
        int totalQuestions = questions.size();
        double percentage = (score * 100.0) / totalQuestions;
        // ... Rest of your result display code ...
         showQuiz = false;

        out.println(percentage);

    }

%>

<% if (showQuiz) { %>
<div class="quiz-container"> 
    <form action="" method="post">
        <div class="grid-container">
            <% for (int i = 0; i < questions.size(); i++) {
                String[] questionData = questions.get(i);
            %>
            <div class="grid-item">
                <h3>Question <%= (i + 1) %>: <%= questionData[0] %></h3>
                <input class="check" type="radio" name="answer<%= (i + 1) %>" value="<%= questionData[1] %>" required> <%= questionData[1] %><br>
                <input class="check" type="radio" name="answer<%= (i + 1) %>" value="<%= questionData[2] %>"> <%= questionData[2] %><br>
                <input class="check" type="radio" name="answer<%= (i + 1) %>" value="<%= questionData[3] %>"> <%= questionData[3] %><br>
                <input class="check" type="radio" name="answer<%= (i + 1) %>" value="<%= questionData[4] %>"> <%= questionData[4] %><br>
            </div>
            <% } %>
            <input type="submit" class="btn" value="Submit">
        </div>
    </form>
</div>
<% } %>







</body>
</html>