<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>GameX</title>
    
    <script src="http://thunderstrucksales.com/wp-content/themes/tsm-child/js/jquery-1.7.0.min.js"></script>
<script src='http://thunderstrucksales.com/wp-content/themes/tsm-child/js/snowfall.jquery.min.js'></script>
<link rel='stylesheet' href='../css/common.css'/>

<script type='text/javascript'>     
        $(document).ready(function(){
               $(document).snowfall({deviceorientation : true, round : true, minSize: 5, maxSize:8});
        });
      

</script>
    	<style>
     video#bgvid {
    	    position: fixed;
    	    top: 50%;
    	    left: 50%;
    	    min-width: 100%;
    	    min-height: 100%;
    	    width: auto;
    	    height: auto;
    	    z-index: -100;
    	    -webkit-transform: translateX(-50%) translateY(-50%);
    	    transform: translateX(-50%) translateY(-50%);
    	    
    	    background-size: cover!important;
    	}
    	 .container {
        width: 80%;
        margin: auto;
      }
      .wrap {
        position: relative;
        width: 70%;
      }
      
h1 {
  font-family: 'CreakyFrank';
  font-size: 90px;
  font-weight: 300;
  color:white;
  text-align: center;
}  
      
h3 {
  font-family: 'CreakyFrank';
  font-size: 30px;
  font-weight: 300;
  color:white;
  text-align: center;
}  

</style>
  </head>
    <h1> G a m e X</h1>
    <h3>by <a href="https://www.facebook.com/ysw070" style="color:#ffffff;">Yoo,Seung-woo</a> Jo,Gi-zin Song-Yeung-ho</h3>
  <body>
          <video autoplay loop id="bgvid">
               <source src="../rVideo/snow-back.mp4" type="video/mp4">
          </video>
          <div class="container" align="center">
          <video autoplay class="wrap" >
               <source src="../image/introVideops4.mp4" type="video/mp4" >
          </video>
          <br>
          <div>
      			<a href="../review/main.do" style=" font-family: 'CreakyFrank';font-size:40px; color:white;">Home !</a>
      			</div>
      </div>
  </body>
</html>

