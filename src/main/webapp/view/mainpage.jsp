<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
     background-image: url('bg img.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            font-family: Arial, Helvetica, sans-serif;

}
#zoomDiv {
    width: 50%;
    height: 100vh;
    overflow: hidden;
    transition: transform 2s ease;
    margin:0 0 0 300px
    
}

.zoom-effect {
    transform: scale(1);
}

.zoom-out {
    transform: scale(0.8);
}
img.logo1{
height:80px;
width:150px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  border-radius:5px;
  border: 1px solid style="background-color:rgb(133 130 124 / 38%)";
  box-sizing: border-box;
  
}
.button-container {
    display: flex;
    width: 100%;
    padding-top: 40px;
    padding-left: 180px;
    padding-bottom: 20px;
 
   
}

/* Set a style for all buttons */
button {
  background: linear-gradient(to right, #00ccff, rgb(109 225 138));
  color: white;
  padding: 14px 20px;
  border-radius: 5px;
  border:none;
  cursor: pointer;
}
button:hover {
  opacity: 0.8; 
}
/* Extra styles for the cancel button */
.cancelbtn {
color: white;
padding: 14px 20px;
  border-radius: 5px;
  border:none;
  cursor: pointer;
  margin:0px 0px 0px 20px;
  background: linear-gradient(to right, rgb(233 80 80), rgb(239 102 167));
 
}
/* Center the image and position the close button */
.h1container {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
  text-decoration:underline rgb(187 168 174);
  
}



.container {
  padding: 20px;
  color:rgb(241 230 205);
}

span.psw {
  float: right;
  padding-top: 16px;
  padding-left:10px;
 
}
.signup{
margin:30px;

}
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
 /* <!--for zoom in effect-->*/
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

  
</style>
</head>
<body>
<div class="logo">
<img src="logo.png" class="logo1">
</div>

 <div id="zoomDiv" class="zoom-effect" >

  
  <form class="modal-content animate" action="login"   method="post">
    <div class="h1container animate">
   
     <h1 style="background-image: linear-gradient(to right, rgb(13 239 237), rgb(239 13 110)); 
            -webkit-background-clip: text;
            color: transparent;"><b>LOGIN<b></h1>
    </div>

    <div class="container animate">
      <label for="uname"><b>Username</b></label>
      <input type="text" style="background-color:rgb(133 130 124 / 38%) ;color: rgb(241 229 195);"placeholder="Enter Username" name="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password"style="background-color:rgb(133 130 124 / 38%);color: rgb(241 229 195);" placeholder="Enter Password" name="password" required>
        <span class="psw"> <a href="Forgetpass"style="color:rgb(97 180 217 / 69%);text-decoration:none;">FORGET PASSWORD?</a></span>
       <label>  
 <span class="psw"><a href="register" style="color:rgb(97 180 217 / 69%);text-decoration:none;">SIGN UP</a></span> 
  
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    
     <div class="button-container">
     <div>
    <button type="submit">Login</button></div>
    <div >
    <input type="reset"class="cancelbtn"  value="Cancel"></div>
  
</div>
 
 
     
      </div>
    </div>
  


<script>

document.addEventListener('DOMContentLoaded', function () {
    const zoomDiv = document.getElementById('zoomDiv');

    // Add the zoom-out class after a delay (you can adjust the delay as needed)
    setTimeout(() => {
        zoomDiv.classList.add('zoom-out');
    }, 1000); // 1000 milliseconds = 1 second
});

</script>
   </form>
</body>
</html>