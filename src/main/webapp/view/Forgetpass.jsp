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
    width: 60%;
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
input[type=text], input[type=password] ,[type=email]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  border-radius:5px;
  border: 1px solid style="background-color:rgb(133 130 124 / 38%)";
  box-sizing: border-box;
  
}
The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(251 251 251 / 56%);/* Black w/ opacity */
  padding-top: 60px;
}
/* Modal Content/Box */
.modal-content {
  background-color:rgb(251 251 251 / 80%);
 /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
  border-radius:5px;
}


/* Set a style for all buttons */
button {
  background: linear-gradient(to right, #00ccff, rgb(109 225 138));
  color: white;
  padding: 14px 20px;
  border-radius: 5px ;
  border:solid 2px rgb(3 200 241);
  cursor: pointer;
  width:100%;
  font-size:large;
}

button:hover {
  opacity: 0.8; 
}
/* Extra styles for the cancel button */

/* Center the image and position the close button */
.h1container {
  text-align: center;
  margin: 10px 0 6px 0;
  position: relative;
  background-image: linear-gradient(to right, rgb(52 143 142), rgb(239 13 110)); 
  -webkit-background-clip: text;
  color: transparent;
  font-size:xx-large	;
  
}

.input{
display:flex;

}


.container {
  padding: 20px;
  color:rgb(111 96 63);
  width:100%
}

span.psw {
  
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
<script src="https://kit.fontawesome.com/62256066be.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="logo">
<img src="logo.png" class="logo1">
</div>

 <div id="zoomDiv" class="zoom-effect" >

  
  <form class="modal-content animate" style="padding-right: 50px " enctype="multipart/form-data" action="checkemail" method="post">
     
     <div class="h1container animate">
     <img src="line.png"> Forget Password <img src="line.png">
     </div>
     
      <center><h5 style="font-size:large;margin: 10px 0 6px 0; color:rgb(125 119 119)">   Enter the registered email .we'll check email is registered or not</h5></center>

     <div class="container animate">
      <div class="input">
      <input type="text" style="background-color:rgb(133 130 124 / 38%) ;color: rgb(241 229 195);"placeholder="Enter Username" name="username" required>

      </div>  
      
       <div>
       
        <button type="submit" style="margin-top: 20px;" >Check</button></div><br>
        <center> <a href="page" style="text-decoration:none;"> < Back to login </a></center>
        
    
     </div>
     </div>
  </form>

<script>

document.addEventListener('DOMContentLoaded', function () {
    const zoomDiv = document.getElementById('zoomDiv');

    // Add the zoom-out class after a delay (you can adjust the delay as needed)
    setTimeout(() => {
        zoomDiv.classList.add('zoom-out');
    }, 1000); // 1000 milliseconds = 1 second
});

</script>

</body>
</html>