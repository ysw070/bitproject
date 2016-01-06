<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<jsp:include page="../Link.jsp"></jsp:include>
<link href="http://store.akamai.steamstatic.com/public/shared/css/user_reviews.css?v=eK35SdE11BqT" rel="stylesheet" type="text/css" >
<link href="http://store.akamai.steamstatic.com/public/shared/css/store_game_shared.css?v=nP6_Ej917_PN" rel="stylesheet" type="text/css" >
<link href="http://store.akamai.steamstatic.com/public/css/v6/recommended.css?v=n1NdgwXfCZ2v" rel="stylesheet" type="text/css" >
<link href="http://store.akamai.steamstatic.com/public/shared/css/apphub.css?v=pCG6EHTy9byu" rel="stylesheet" type="text/css" >
<link href="http://store.akamai.steamstatic.com/public/shared/css/shared_responsive.css?v=1gbp7tFqaQum" rel="stylesheet" type="text/css" >

</head>
<jsp:include page="../Header.jsp"></jsp:include>
<body class="v6 app game_bg responsive_page">




 <div class="page_content_ctn" itemscope itemtype="http://schema.org/Product">

    <meta itemprop="image" content="http://cdn.akamai.steamstatic.com/steam/apps/353370/capsule_231x87.jpg?t=1449185630">
        <div class="page_title_area game_title_area page_content">
      <div class="breadcrumbs">
      <div class="blockbg" >
                     작성자 : <a>  ${review.writer}</a>
        </div>
        <br>
        <div style="clear: left;"></div>
              </div> 
      <div class="apphub_HomeHeaderContent">

  <div class="apphub_HeaderStandardTop">

    <div class="apphub_AppName">${review.title }</div>
    <div style="clear: both"></div>
  </div>

</div>

    </div>
    <div style="clear: left;"></div>

    <div class="block">
            <script type="text/javascript">
        var strRequiredVersion = "9";
        if ( typeof( g_bIsOnMac ) != 'undefined' && g_bIsOnMac )
          strRequiredVersion = "10.1.0";

        
        var bShouldUseHTML5 = BCanPlayWebm() || BDoesUserPreferHTML5() || !swfobject.hasFlashPlayerVersion(strRequiredVersion);
      </script>
      <div class="game_background_glow">
      <div class="block_content page_content" id="game_highlights">

        <div class="rightcol">
          <div class="glance_ctn">
           <%--  <div class="game_header_image_ctn">
              <img class="game_header_image_full" src="../rPhoto/${review.photo}">
            </div> --%>
                          <div class="game_description_snippet" style="color:white;margin-top:20px;">
                          <h3>Review about...</h3><br>
                          <h2  style="color:white;">제목 : ${review.title}</h2><br>
                          <h2  style="color:white;">플랫폼 : ${review.style}</h2><br>
                          <h2  style="color:white;">장르 : ${review.genre}</h2><br>
               내용 : ${review.text }             </div>
            
            
            
            <div class="glance_ctn_responsive_left">
                              
                <div onclick="window.location='#app_reviews_hash'" style="cursor: pointer;" data-store-tooltip="이 리뷰에 대한 사용자 조회가 ${review.views}입니다." itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                  <div class="release_date">
                    사용자 조회수 :                                         <span class="game_review_summary positive" >${review.views}번의</span>조회가있습니다.
                      <span class="responsive_hidden">
                       
                      </span>
                                      </div>
                </div>
              
                          </div>


            <div style="clear: both;"></div>
          </div>
        </div>




<div class="leftcol">
          <div class="highlight_ctn">
            <div class="highlight_overflow">
              <div id="highlight_player_area" >
                <div class="highlight_player_area_spacer">
                  <img src="../image/novideo.jpg">
                </div>
                                                                  <div class="highlight_player_item highlight_movie" id="highlight_movie_2039936" style="display: none;">
                    <script type="text/javascript">
                      if( bShouldUseHTML5 )
                      {
                        document.write('<video class="highlight_player_item highlight_movie" src="../rVideo/${review.video}" data-hd-src="../rVideo/${review.video}" poster="../image/novideo.jpg" id="movie_2039936" preload="none"><p>이 페이지를 보려면 최신 Flash 플러그인을 <a href="http://www.adobe.com/go/getflashplayer" target="_blank">설치</a>해야 합니다.</p></video>');
                        jQuery("#movie_2039936").videoControls();
                      }
                      else
                      {
                        document.write('<div id="movie_2039936" class="highlight_flash_player_notice" style="display: none;"><p>이 페이지를 보려면 최신 Flash 플러그인을 <a href="http://www.adobe.com/go/getflashplayer" target="_blank">설치</a>해야 합니다.</p></div>');
                      }
                    </script>
                  </div>
                
                                                  <div class="highlight_player_item highlight_screenshot" id="highlight_screenshot_ss_d2f5e7325666df6119ff1d42be73bac9594c5b1e.jpg" style="display: none;">
                    <div class="screenshot_holder">
                      <a class="highlight_screenshot_link" data-screenshotid="ss_d2f5e7325666df6119ff1d42be73bac9594c5b1e.jpg" target="_blank" href="../rPhoto/${review.photo}">
                        <img src="../rPhoto/${review.photo}">
                      </a>
                    </div>
                  </div>

                
                                <script type="text/javascript">
                  var rgMovieFlashvars = {
                                          'movie_2039936': {
                        FILENAME: "http://cdn.akamai.steamstatic.com/steam/apps/2039936/movieLrg.flv?t=1433435267",
                        MOVIE_NAME: "Steam+Controller+Commercial"
                       },
                                        '' : ''
                  };
                  var rgCommonFlashVars = {
                      clientLanguage: "korean",
                      capsuleSize: "huge",
                      STAGE_WIDTH: 600,
                      STAGE_HEIGHT: 338,
                      AUTO_PLAY: "true",
                      ALLOW_JSPAUSE: "true",
                      TRACK_MUTE: "true",
                      CHECKBOX_AUTOPLAY_SHOW: "true",
                      CHECKBOX_AUTOPLAY_TEXT: "%EB%8F%99%EC%98%81%EC%83%81+%EC%9E%90%EB%8F%99%EC%9E%AC%EC%83%9D"
                  };
                                    var rgScreenshotURLs = {"ss_d2f5e7325666df6119ff1d42be73bac9594c5b1e.jpg":"../rPhoto/${review.photo}"};
                </script>
              </div>
                           
                              <div class="slider_ctn">
                  <div id="highlight_slider_left" class="slider_left"><span></span></div>
                  <div class="slider" id="highlight_slider" >
                    <div class="slider_bg">
                    </div>
                    <div class="handle">
                    </div>
                  </div>
                  <div id="highlight_slider_right" class="slider_right"><span></span></div>
                </div>
                <script type="text/javascript">
                  $J( function() {
                    var player = new HighlightPlayer( {
                      elemPlayerArea: 'highlight_player_area',
                      elemStrip: 'highlight_strip',
                      elemStripScroll: 'highlight_strip_scroll',
                      elemSlider: 'highlight_slider',
                      rgMovieFlashvars: rgMovieFlashvars,
                      rgScreenshotURLs: rgScreenshotURLs,
                      rgDefaultMovieFlashvars: rgCommonFlashVars,
                      bUseHTMLPlayer: bShouldUseHTML5
                    } );
                    $J('#highlight_slider_right').click( function() {
                      player.Transition( true );
                    });
                    $J('#highlight_slider_left').click( function() {
                      player.TransitionBack( true );
                    });

                    if( window.location.hash )
                    {
                      var ssid = window.location.hash.substr(1);
                      player.HighlightScreenshot(ssid);
                    }
                  } );
                </script>
                          </div>
        </div>
        <c:if test="${loginUser.id eq review.writer}">
           <div class="newmodal">
              <div class="buttons">
                <a href="../review/delete.do?no=${review.reviewNo}"
                  class="btn_medium"> <span>게시물 삭제</span>
                </a>
                <a href="../review/update.do?no=${review.reviewNo}"
                  class="btn_medium"> <span>리뷰 변경 </span>
                </a>
              </div>
            </div>
            </c:if>
          </div>
</div>
</div>
</div>
</div>




</body>
</html>