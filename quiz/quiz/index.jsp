<!DOCTYPE html>
<html lang="en">
<head>
  
    <title>Login | Quiz Application</title>

    <style>
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #aba2a2;
}

.nav {
height: 95px;
width: 100%;
background-color: #1177ca;
/* position: relative; */

}

.nav ,.nav-header{
    display: inline;
}

.nav ,.nav-header, .nav-title{
    display: inline-block;
    font-family: Arial, Helvetica, sans-serif;
    padding: 4px 10px 10px 10px;
    font-size: 22px;
    color: #fff;
    font-weight: 550;
}

.nav-title > h2{
   margin-top: -12px; 
}

.log{
    display: inline;
    height: 75px;
    margin-right: 15px; 
}
.nav > .nav-links{
    font-size: 18px;
    display: inline;
    float: right;
}

.nav > .nav-links > ul li a{   
    color: #fff;
    line-height: 40px;
    font-size: 18px;
    display: block;
    padding: 0 8px;
    text-decoration: none
}
.nav > .nav-links > ul{
display: block;
list-style: none;
position: relative;
padding: 0;
margin-top: 5px;

}

.nav > .nav-links > ul li{

display: inline-block;
background-color: #1177ca;

}

.nav > .nav-links > ul li:hover{
     background-color: #0b65af;
     border-radius: 7px;
}

form{
    height: 450px;
    width: 400px;
    background-color: rgb(171, 166, 166);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #161515;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgb(234, 231, 231);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #1e1c1c;

}

    input:focus{
        background-color: rgba(165, 162, 162, 0.695);
        border: 1px solid black;
    }

.button{
    margin-top: 50px;
    width: 100%;
    background-color: #0d29b6;
    color: #fbfafc;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}

.button:hover{
     background-color: rgba(17, 27, 81, 0.806);
}

    </style>
</head>
<body>
    
    <div class="nav">  
        <div class="nav-header">
            <div class="log">
            <img src="./gp.jpeg" alt="" class="log">
           </div>
            <div class="nav-title">
               <h3> Geethanjali Institute Of P.G Studies</h3>
            </div>

        </div>
         <div class="nav-links">
 
             <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Services</a></li>
          <!-- <li><a href="#">Portfolio</a></li>
          <li><a href="#">Contact</a></li> -->
 
             </ul>
         </div>
       </div>

    <form>
        <h3>Login Here</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="Email or Phone" id="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password">

        <input type="submit" class="button"></input>

    </form>
</body>
</html>
