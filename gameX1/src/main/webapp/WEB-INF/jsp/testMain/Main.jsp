<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#pop {
  width: 620px;
  height: 420px;
  background:;
  position: absolute;
  top: -420px;
  left: 15px;
  text-align: center;
  border: ;
}

</style>
</head>
<body>

  <!-- Tocplus 15.1 -->
  <script type="text/javascript"> 
tocplusTop=550;
tocplusLeft=40;
tocplusMinimizedImage='http://kr01.tocplus007.com/img/minimized_ko.gif';
tocplusHAlign='right';
tocplusWidth=200;
tocplusHeight=250;
tocplusUserName='냥냥이';
tocplusFrameColor='#05121c';
tocplusFloatingWindow=true;
var tocplusHost = (("https:" == document.location.protocol) ? "https://" : "http://");
document.write(unescape("%"+"3Cscript src='" + tocplusHost + "kr01.tocplus007.com/chatLoader.do?userId=dogboycat' type='text/javascript'"+"%"+"3E"+"%"+"3C/script"+"%"+"3E"));
</script>
  <!-- End of Tocplus -->


</head>
<body>

      <div class="home_cluster_ctn home_ctn">
        <div class="home_page_content">
          
        <div class="home_leftcol">
            <div id="home_main_cluster" class="main_cluster_ctn">
              <div class="main_cluster_content">
                <div id="main_cluster_scroll" class="cluster_scroll_area">
                </div>
              </div>
              <div id="main_cluster_control_ctn" class="slider_ctn">
                <div id="main_cluster_control_previous" class="slider_left">
                  <span></span>
                </div>
                <div class="slider" id="main_cluster_control">
                  <div class="slider_bg"></div>
                  <div class="handle"></div>
                </div>
                <div id="main_cluster_control_next" class="slider_right">
                  <span></span>
                </div>
              </div>
            </div>
          </div>
          
          <div class="home_rightcol">
            <div class="spotlight_block">
              <div class="spotlight_scroll_ctn home_block "
                id="spotlight_scroll">
                <div class="home_area_spotlight underlined_links"
                  id="spotlight_0" style="" data-ds-appid="232090">
                  <div class="spotlight_img">
                    <a
                      href="http://192.168.0.68:8080/travel/index_login.jsp">
                      <img src="../image/1.jpg"
                      alt="#spotlight_weekend_deal" width="100%" height="100%" border="0">
                    </a>
                  </div>

                  <div class="spotlight_content">
                    <h2>김종원</h2>
                    <div class="spotlight_body">작성자 : 권민수
                      </div>
                    <div class="spotlight_body spotlight_price price">
                      <div
                        class="discount_block discount_block_spotlight discount_block_large">
                        <div class="discount_pct">V</div>
                        <div class="discount_prices">
                          <div class="discount_final_price">24</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                    <div class="home_area_spotlight underlined_links"
                  id="spotlight_0" style="" data-ds-appid="232090">
                  <div class="spotlight_img">
                    <a
                      href="http://192.168.0.41:8080/auction/product/list.do">
                      <img src="../image/104.jpg"
                      alt="#spotlight_weekend_deal" style="margin-top: 50px;"width="100%" height="100%" border="0">
                    </a>
                  </div>

                  <div class="spotlight_content">
                    <h2>김장석</h2>
                    <div class="spotlight_body">작성자 : 윤태웅
                      </div>
                    <div class="spotlight_body spotlight_price price">
                      <div
                        class="discount_block discount_block_spotlight discount_block_large">
                        <div class="discount_pct">V</div>
                        <div class="discount_prices">
                          <div class="discount_final_price">101</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
               
              </div>
                <div class="slider_ctn spotlight">
                <div class="slider_left disabled" id="spotlight_scroll_prev"
                  onclick="javascript:PrevSpotlight( 2 );">
                  <span></span>
                </div>
                <div class="slider_right" id="spotlight_scroll_next"
                  onclick="javascript:NextSpotlight( 2 );">
                  <span></span>
                </div>
                <div class="slider slider_text">
                  <span id="spotlight_scroll_count_total">2</span>개 중 <span
                    id="spotlight_scroll_count_cur">1</span> 표시중
                </div>
              </div> 
            </div>
          </div>
          <div style="clear: both;"></div>
        </div>
      </div>

      <div class="home_ctn" style="overflow: visible;">
        <div class="home_page_content">
          <div class="home_leftcol home_tab_col">
            <div class="home_tab_bg"></div>
            <div class="home_tabs_row_ctn">
              <div class="home_tabs_row store_horizontal_minislider">
                <div id="tab_newreleases_content_trigger"
                  onclick="TabSelect( this, 'tab_newreleases_content' );"
                  class="home_tab active">
                  <div class="tab_content">게임 리뷰</div>
                </div>
                <div id="tab_topsellers_content_trigger"
                  onclick="LoadDelayedImages('home_tabs'); TabSelect( this, 'tab_topsellers_content' );"
                  class="home_tab">
                  <div class="tab_content">상점</div>
                </div>
                <div id="tab_upcoming_content_trigger"
                  onclick="LoadDelayedImages('home_tabs'); TabSelect( this, 'tab_upcoming_content' );"
                  class="home_tab">
                  <div class="tab_content">출시 예정</div>
                </div>
              
              </div>
            </div>
            <input id="last_tab" type="hidden" value="">
            <div class="home_tabs_content" style="background-color: rgba( 0, 0, 0, 0.5 ); z-index: -100">
              <div class="tab_content" id="tab_newreleases_content">
             <c:forEach var="review" items="${reviews}">
                <div class="tab_item" data-ds-appid="342200"
                  onmouseover="GameHover( this, event, 'global_hover', {&quot;type&quot;:&quot;app&quot;,&quot;id&quot;:342200,&quot;public&quot;:1,&quot;v6&quot;:1} );"
                  onmouseout="HideGameHover( this, event, 'global_hover' )">
                  <a class="tab_item_overlay" href="../review/detail.do?no=${review.reviewNo}">
                    <img
                    src="http://store.akamai.steamstatic.com/public/images/blank.gif"  >
                  </a>
                  <div class="tab_item_overlay_hover"></div>
                  <div class="tab_item_cap">
                    <img class="tab_item_cap_img"
                      src="../rPhoto/${review.photo}" style="height:70px; width:100px;">
                  </div>
                  <div class="discount_block tab_item_discount no_discount">
                    <div class="discount_prices no_discount">
                      <div class="discount_final_price">추천수: ${review.thumbs}</div>
                    </div>
                  </div>
                  <div class="tab_item_content">
                    <div class="tab_item_name" style="color:white;">${review.title}</div>
                    <div class="tab_item_details">
                    <span class="platform_img mac" style="color:white;"></span>
                      <div class="tab_item_top_tags">
                        <span class="top_tag" style="color:white;">${review.style}</span><span class="top_tag" style="color:white;">, ${review.genre}</span>
                      </div>
                    </div>
                  </div>
                </div>
              
              
                </c:forEach>
      

              <div class="tab_see_more">
                  더 보기: <a
                    href="../review/list.do"
                    class="btnv6_blue_hoverfade btn_small_tall"> <span>게임 리뷰</span>
                  </a>
                </div>
                    </div>
              <div class="tab_content" id="tab_topsellers_content"
                style="display: none;">
                <div class="tab_item" data-ds-appid="345350"
                  onmouseover="GameHover( this, event, 'global_hover', {&quot;type&quot;:&quot;app&quot;,&quot;id&quot;:345350,&quot;public&quot;:1,&quot;v6&quot;:1} );"
                  onmouseout="HideGameHover( this, event, 'global_hover' )">
                  <a class="tab_item_overlay"
                    href="http://store.steampowered.com/app/345350/?snr=1_4_4__104">
                    <img
                    src="http://store.akamai.steamstatic.com/public/images/blank.gif">
                  </a>
                  <div class="tab_item_overlay_hover"></div>
                  <div class="tab_item_cap">
                    <img class="tab_item_cap_img"
                      src="http://store.akamai.steamstatic.com/public/shared/images/trans.gif"
                      id="delayedimage_home_tabs_0">
                  </div>
                  <div class="discount_block tab_item_discount">
                    <div class="discount_pct">-10%</div>
                    <div class="discount_prices">
                      <div class="discount_original_price">₩ 19,500</div>
                      <div class="discount_final_price">₩ 17,550</div>
                    </div>
                  </div>
                  <div class="tab_item_content">
                    <div class="tab_item_name">LIGHTNING RETURNS™: FINAL
                      FANTASY® XIII</div>
                    <div class="tab_item_details">
                      <span class="platform_img win"></span>
                      <div class="tab_item_top_tags">
                        <span class="top_tag">RPG</span><span class="top_tag">,
                          JRPG</span><span class="top_tag">, Female Protagonist</span><span
                          class="top_tag">, Great Soundtrack</span>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="tab_see_more">
                  더 보기: <a
                    href="http://store.steampowered.com/search/?filter=comingsoon&os=win"
                    class="btnv6_blue_hoverfade btn_small_tall"> <span>출시
                      예정</span>
                  </a>
                </div>
                
                
              </div>
              <div class="tab_content" id="tab_upcoming_content"
                style="display: none;">
                <div class="tab_item" data-ds-appid="369700"
                  onmouseover="GameHover( this, event, 'global_hover', {&quot;type&quot;:&quot;app&quot;,&quot;id&quot;:369700,&quot;public&quot;:1,&quot;v6&quot;:1} );"
                  onmouseout="HideGameHover( this, event, 'global_hover' )">
                  <a class="tab_item_overlay"
                    href="http://store.steampowered.com/app/369700/?snr=1_4_4__tab-Upcoming">
                    <img
                    src="http://store.akamai.steamstatic.com/public/images/blank.gif">
                  </a>
                  <div class="tab_item_overlay_hover"></div>
                  <div class="tab_item_cap">
                    <img class="tab_item_cap_img"
                      src="http://store.akamai.steamstatic.com/public/shared/images/trans.gif"
                      id="delayedimage_home_tabs_10">
                  </div>
                  <div class="tab_item_content">
                    <div class="tab_item_name">Tanzia</div>
                    <div class="tab_item_details">
                      <span class="platform_img win"></span>
                      <div class="tab_item_top_tags">
                        <span class="top_tag">Action</span><span class="top_tag">,
                          Adventure</span><span class="top_tag">, RPG</span>
                      </div>
                    </div>
                  </div>
                </div>
                
                
                <div class="tab_see_more">
                  더 보기: <a
                    href="http://store.steampowered.com/search/?filter=comingsoon&os=win"
                    class="btnv6_blue_hoverfade btn_small_tall"> <span>출시
                      예정</span>
                  </a>
                </div>

              </div>
            </div>
            </div>   
 

      <div id="pop">
      <p>냥냥</p><br>
      새로워진 "AION" 붉은 카탈람 4.0 패치 메인티져영상>
      <br><br>
        <embed src="../rVideo/aion.mp4" width="620px" height="320px">
        
      </div>
      
 </div>
  </div>
</body>
</html>