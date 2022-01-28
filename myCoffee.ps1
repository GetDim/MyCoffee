$now = Get-Date                                # Tuesday, March 23, 2021 5:29:47 PM
$today = (get-date).dayofweek         #  ... "It's today," squeaked Piglet. "My favorite day," said Pooh.
$where =  $pwd.path                         # Current directory
$Body =@"
<center>
<h1>Today is $today</h1>              <!--  day of the week -->
	<p id="myF"></p>       <!--  First line ID -->
	<p id="myS"></p>       <!--  Second line ID -->
<button style="color:green;border-radius:5px;margin:5px;"  onclick="myMusic28()">Stairway to Heaven</button> 
<button style="color:green;border-radius:5px;margin:5px;"  onclick="myMusic25()">Highway to Hell</button>
 <br><br> 
<a href="https://www.bloomberg.com/technology/" target="_blank"><button style="color:green;border-radius;10px;margin:5px;">Bloomberg</button></a>
<a href="https://finance.yahoo.com//" target="_blank"><button style="color:green;border-radius;10px;">Yahoo Finance</button></a>
<a href="https://news.sky.com/story/watch-sky-news-live-10315632" target="_blank"><button style="color:green;border-radius;10px;">Sky News UK</button></a>
<br><br> 
<a href="https://www.youtube.com/watch?v=nFZP8zQ5kzk" target="_blank"><button  id="myC" style="background: url(https://res.cloudinary.com/dimiter/image/upload/v1610745941/Coffee_lckuvz.jpg)">All I need is<br>a Cup of Coffee</button></a>
</center>
<script>
   function myMusic28() {
	document.getElementById("myF").innerHTML = "The fact there’s a highway to hell and only a stairway to heaven says a lot about anticipated traffic." ;		
	document.getElementById("myS").innerHTML = "One step at the time " ;    	
	var myT = window.open("https://www.youtube.com/watch?v=6hBLHkmBKDg", "MsgWindow", "width=680, height=400, top=300, left=-10");
}    function myMusic25() {
	document.getElementById("myF").innerHTML = "The fact there’s a highway to hell and only a stairway to heaven says a lot about anticipated traffic." ;		
	document.getElementById("myS").innerHTML = "Seat belts on: Going to Hell " ;   
	var myT = window.open("https://www.youtube.com/watch?v=yv6jiqVmmSI", "MsgWindow", "width=680, height=400, top=300, left=-10");
}
var localArr= "$today, $now";
localStorage.setItem("yourarray", JSON.stringify(localArr));
console.log('Local Storage key yourarray created :-) ');
 
</script>
<style>
button { 
  background-color:  #faf0e6     
  border: none;
  color: black;
  padding: 2px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 18px;
}	
	
p {
	font-size: 28px;
	color: maroon; 
	margin-left: 40px;
	}	
h1 {
	color: maroon;
	margin-left: 40px;
		}	
#myC {	
    height:200px;
    width:200px;
    font-size: 18px;
    color: white;
	}	
body {
	background-color: linen;
	font-size: 1.5em;
	}
</style>
	<p>myCoffee.html Created: $now </p>
	<p> Press F12 to see Console output & Local Storage content</p>
	<p> execute myCoffee.bat to create myCoffee.html</p><br>
	<!-- https://www.youtube.com/watch?v=jSHIKqUgANg&t=402s -->
"@
# Create the CSS style for the entire report
# $Head = "<Style> body {Background-color: lightblue; }
# </style> "
# Cram the body and the Head into completed HTML code
$HTML = ConvertTo-Html -Body $Body -Head $Head
# Create an HTML file in a current directory
$HTML | Out-File -filepath "$where\myCoffee.html" -Force
# Open newly created html file
Start-Sleep 3;  Invoke-Expression $where\myCoffee.html