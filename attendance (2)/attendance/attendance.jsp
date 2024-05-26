<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>

body{
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;

}
.navbar{
            border-radius: 0px;
            padding: 13px;
            margin: 0;
            background: rgb(29, 23, 93); 
        }
    
       .nav-links{
    font-size: 18px;
    display: inline;
    float: right;
}

.nav-links > ul li a{   
    color: #fff;
    line-height: 40px;
    font-size: 18px;
    display: block;
    padding: 0 8px;
    text-decoration: none;
    

}
   .nav-links > ul{
display: block;
list-style: none;
position: relative;
padding: 0;
margin-top: -45px;

}

  .nav-links > ul li{

display: inline-block;

}

        .navbar li a:hover{
            background-color: rgb(248, 245, 245);
            border-radius: 10px;
            border-bottom: 1px solid #fff;
            color: black;
        }

        @media screen and (max-width: 700px) {
            .navbar li {
                display: none;
  }
}
        
       .titl{
        margin-bottom: 10px;
       }
        .titl> h1{
            color: white;
            text-align: center;
            display: inline-block;            
            margin-left: 600px;
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
            width: 100%;
            left: 0;
            bottom: 0;
            background-color: rgb(29, 23, 93); 
            text-align: center;
        }
     

        .copy-right{
            position: fixed;
            width: 100%;
            bottom: 0;
            left: 0;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: rgb(29, 23, 93); 
            color: white;
            text-align: center;

        }

        .button {
            padding: 17px 40px;
            border-radius: 50px;
            border: 1px solid grey;
             background-color: rgb(208, 206, 206);
            box-shadow: rgb(0 0 0 / 5%) 0 0 8px; 
            letter-spacing: 1.5px;
            text-transform: uppercase;
            font-size: 15px;
            transition: all .5s ease;
            }

                .button:hover {
                letter-spacing: 3px;
                background-color: hsl(261deg 80% 48%);
                color: hsl(0, 0%, 100%);
                box-shadow: rgb(93 24 220) 0px 7px 29px 0px;
                }

            .button:active {
            letter-spacing: 3px;
            background-color: hsl(261deg 80% 48%);
            color: hsl(0, 0%, 100%);
            box-shadow: rgb(93 24 220) 0px 0px 0px 0px;
            transform: translateY(10px);
            transition: 100ms;
            }

            body{
                background-color: grey;
            }
          .container{
            border: 1px solid rgba(255, 255, 255, .25);
            box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.25);
            backdrop-filter: blur(15px);
            background-color: rgba(250,250,250, 0.75);
            transition: transform 0.3s ease;
            padding: 10px;
            margin: 0 auto;
              justify-content: center;
              align-items: center;
              width: 700px;
              height: 450px;
          }
          
          .container:hover{
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
          }

          .title h2 {
            overflow: hidden;
            border-right: .15em solid   rgb(29, 23, 93); 
            white-space: nowrap;
            letter-spacing: .10em;
            color: white;
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

@keyframes blink-hide {
  from,
  to {
    border-color: transparent;
  }
}

* {
  box-sizing: border-box;
}

input[type=text]{
  font-size: medium;


}



input[type=text], select, textarea {
  width: 100%;
  padding: 15px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  
}
input[type=date] {
  width: 100%;
  padding: 15px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

.row::after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
  .container{
    height: 650px;
    width: 350px;
  }
  .titl> h1{
    text-align: center;
    margin-left: 35px;
    font-size: medium;

  }
  .dat{
    font-size: medium;
  }

}

.dropdown {
  float: left;
}

.dropdown .dropbtn {
  font-size: 18px;  
  border: none;
  outline: none;
  color: white;
  padding: 9px 14px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: rgb(248, 243, 243);
  color: black;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #7492e0;
  color: white;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: rgb(248, 243, 243);
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.dat{
   width: 150px;
   height: 150px;
   background-color: lightgreen;
   padding: 8px;
   border-radius: 15px;
   font-size: 20px;
   color: black;
}


  </style>
<body>

    <header>
        <nav class="navbar">
            <img src="./gp.jpeg" alt="" class="log">
            <div class="title"> 
        <h2>Geethanjali Institute Of P.G Studies</h2>  
            </div>

          <div class="nav-links">
           <ul>
            <li><a href="#">About us</a></li>
            <div class="dropdown">
              <button class="dropbtn">Attendance 
              </button>
            <div class="dropdown-content">
              <a href="attendance.jsp">MCA</a>
              <a href="mba.jsp">MBA</a>
            </div>
            </ul>
          </div>
        </nav>
    </header>


<% java.util.Date currentDate = new java.util.Date();
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy");
String formattedDate = sdf.format(currentDate); %>


    <div class="titl">
    <h1>MCA Attendance Form <span class="dat"><%= formattedDate %></span> </h1>
  </div>
  
    <div class="container">
      <form action="mcbase.jsp" method="post">
      <div class="row">

        <div class="col-25">
          <label>Girls Absentese </label>
        </div>

        <div class="col-75">
          <input type="text"  name="girls" placeholder="Your Absentese Roll numbers" id="rollNumberInput" />
        </div>
      </div>

      <div class="row">

        <div class="col-25">
          <label>Boys Absentese </label>
        </div>

        <div class="col-75">
          <input type="text" name="boys" placeholder="Your Absentese Roll numbers" id="rollNumberInpu"  />
        </div>
      </div>

      <div class="row">

        <div class="col-25">
          <label>Subject</label>
        </div>
        
        <div class="col-75">
          <select id="subjectSelect" name="subject" onchange="showLecture()">
            <option value="active">SELECT SUBJECT</option>
            <option value="PYTHON">PYTHON</option>
            <option value="COMPUTER NETWORK">COMPUTER NETWORK</option>
            <option value="DESIGNING AND ANALYSIS OF ALGORITHM">DESIGNING AND ANALYSIS OF ALGORITHM</option>
            <option value="SOFTWARE ENGINEERING">SOFTWARE ENGINEERING</option>
            <option value="DBMS">DBMS</option>
            <option value="JSP">JSP</option>
            <option value="lab">LAB SESSION</option>
          </select>
        </div>
      </div>

      <div class="row">
        <div class="col-25">
          <label>Lecture Name</label>
        </div>

        <div class="col-75">
          <input type="text" id="lectureName" name="lecture" readonly placeholder="">
        </div>
      </div>



      <div class="row">
        <div class="col-25">
          <label >Topic</label>
        </div>

        <div class="col-75">
          <input type="text" name="topic" placeholder="Enter Topic" autocomplete="off">
        </div>
      </div>

      <div class="row">
        <div class="col-25">
          <label>Date</label>
        </div>

        <div class="col-75">
          <input type="text" value="<%= formattedDate %>" readonly name="date">
        </div>
      </div>

      <br>
      <div class="row">
        <input class="button" type="submit" value="Submit">
      </div>
      </form>
    </div>
    
    
    
    <script>
function addComma(rollNumber) {
  if (!rollNumber.endsWith(",")) {
    rollNumber += ",";
  }
  return rollNumber;
}

const rollNumberInput = document.querySelector("#rollNumberInput");

// Add a 5-second delay before updating the value of the input field.
rollNumberInput.addEventListener("keyup", function() {
  const rollNumber = rollNumberInput.value;

  // setTimeout() will run the function after 5 seconds.
  setTimeout(() => {
    rollNumberInput.value = addComma(rollNumber);
  }, 1000);
});
    
function addComma(rollNumbe) {
  if (!rollNumbe.endsWith(",")) {
    rollNumbe += ",";
  }
  return rollNumbe;
}

const rollNumbeInput = document.querySelector("#rollNumberInpu");
rollNumbeInput.addEventListener("keyup", function() {
  const rollNumber = rollNumbeInput.value;

  setTimeout (() => { 
  rollNumbeInput.value = addComma(rollNumber);
  }, 1000);
});


      function showLecture() {
        var subject = document.getElementById("subjectSelect").value;
        var lectureName = "";
      
        switch (subject) {
          case "PYTHON":
            lectureName = "TEJA ";
            break;
          case "COMPUTER NETWORK":
            lectureName = "JYOTHI";
            break;
          case "DESIGNING AND ANALYSIS OF ALGORITHM":
            lectureName = "KIRAN";
            break;
          case "SOFTWARE ENGINEERING":
            lectureName = "Software Engineering";
            break;
          case "DBMS":
            lectureName = "OMKAR";
            break;
          case "JSP":
            lectureName = "TEJA";
            break;
          case "lab":
            lectureName = "TEJA";
            break;
        }
      
        document.getElementById("lectureName").value = lectureName;
      }
      </script>
    
    

    
    <div class="copy-right">
        <p> All Rights Reserved  &copy; 2024</p>
     </div>
     

</body>
</html>
