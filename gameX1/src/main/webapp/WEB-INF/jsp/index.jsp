<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>YouTube</title>
    
    <script src="http://thunderstrucksales.com/wp-content/themes/tsm-child/js/jquery-1.7.0.min.js"></script>
<script src='http://thunderstrucksales.com/wp-content/themes/tsm-child/js/snowfall.jquery.min.js'></script>

<script type='text/javascript'>     
        $(document).ready(function(){
               $(document).snowfall({deviceorientation : true, round : true, minSize: 5, maxSize:8});
        });
</script>
    <style>
      .container {
        width: 90%;
        margin: auto;
      }
      .youtubeWrap {
        position: relative;
        width: 100%;
        padding-bottom: 56.25%;
      }
      .youtubeWrap iframe {
        position: absolute;
        width: 100%;
        height: 100%;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="youtubeWrap">
        <iframe src="https://www.youtube.com/embed/JE_4hiF4000?rel=0&amp;autoplay=1&amp;loop=1;playlist=JE_4hiF4000"
         frameborder="0" width="450px" height="350px" allowfullscreen> a href="</iframe>
      			<a href="../home/main.do">사이트 입장하기</a>
      </div>
    </div>

  </body>
</html>

