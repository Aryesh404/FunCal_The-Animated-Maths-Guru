<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-16">
<title>Result</title>
<style type="text/css">

body {
  font-size: 30px;
  text-align:center;
  background: linear-gradient(to right, rgb(128, 0, 128), rgb(64, 0, 64));
}

h1,h3{
color: white;
margin:15px;
text-size: 20px
}
input, button {
  
  background-color: #fff;
  border: 0 solid #e2e8f0;
  border-radius: 1.5rem;
  box-sizing: border-box;
  color: #0d172a;
  cursor: pointer;
  display: inline-block;
  font-family: "Basier circle",-apple-system,system-ui,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  font-size: 1.1rem;
  font-weight: 600;
  line-height: 1;
  padding: 1rem 1.6rem;
  text-align: center;
  text-decoration: none #0d172a solid;
  text-decoration-thickness: auto;
  transition: all .1s cubic-bezier(.4, 0, .2, 1);
  box-shadow: 0px 1px 2px rgba(166, 175, 195, 0.25);
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

input,button:hover {
  background-color: #1e293b;
  color: #fff;
}

@media (min-width: 768px) {
  .button,input {
    font-size: 1.125rem;
    padding: 1rem 2rem;
  }
}


img{
width: 20%;
height:20%;
margin-top: 20px;
filter: drop-shadow(20px 10px 10px black);
}
img:hover{
  -ms-transform: scale(1.1); /* IE 9 */
  -webkit-transform: scale(1.1); /* Safari 3-8 */
  transform: scale(1.1); 
}

#button-container {
  margin-top: 20px;
}

</style>

</head>


<body>
<img alt="" src="images\laughing.gif">
<h1>Joke of the Day!</h1>
<h3>🤣<%=request.getParameter("joke")%> </h3>
<h1>Ans = <%=request.getParameter("ans")%>🚩</h1>

<div id="button-container">
  <button onclick="location.href='index.html'">Home</button>
  <button onclick="location.href='history.jsp'">History</button>
</div>

</body>
</html>
