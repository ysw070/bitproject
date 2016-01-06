<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Game X</title>
</script>
      <div id="fb-root"></div>
      <script>
        (function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id))
            return;
          js = d.createElement(s);
          js.id = id;
          js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.5";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
      </script>
</head>

<body>
<body class="v6 responsive_page">
 <video autoplay loop id="bgvid">
               <source src="../rVideo/snow-back.mp4" type="video/mp4">
          </video>

    <div class="responsive_local_menu_tab" style="display: none;"></div>

    <div class="responsive_page_menu_ctn localmenu">
      <div class="responsive_page_menu" id="responsive_page_local_menu">
        <div class="localmenu_content"></div>
      </div>
    </div>


    <div class="responsive_page_content_overlay"></div>

    <div class="responsive_fixonscroll_ctn nonresponsive_hidden "></div>

    <div class="responsive_page_content">

      <div id="global_header">
        <div class="content">
<div class="logo" align="left" style="font-family: CreakyFrank; font-size:58px;">
            <span id="logo_holder"> <a
              href="../review/main.do"> 
              GameX 
            </a>
            </span>
          </div>
        <!--   <div class="logo">
            <span id="logo_holder"> <a
              href="http://192.168.0.41:8080/auction/product/list.do"> 
              <img src=""
                width="176" height="70">
            </a>
            </span>
          </div> -->


          </div>
          <script type="text/javascript">
    jQuery(function($) {
      $('.tooltip').v_tooltip();
      $('#global_header .supernav').v_tooltip({'location':'bottom', 'tooltipClass': 'supernav_content', 'offsetY':-4, 'offsetX': 1, 'horizontalSnap': 4, 'tooltipParent': '#global_header .supernav_container', 'correctForScreenSize': false});
    });
  </script>
<div id="global_actions">
    <div id="global_action_menu" style="margin-top:20px;">
      <c:if test="${not empty loginUser}">
      <h4 style="margin-right: 50px;">${loginUser.id}님이 접속중입니다.</h4>
      <div class="header_installsteam_btn header_installsteam_btn_green">
      </div>
        <a href="../auth/logout.do" style="margin-left: 70px;">로그아웃</a>
        <br>
        <div class="fb-like"
              data-href="https://developers.facebook.com/docs/plugins/"
              data-layout="button" data-action="like" data-show-faces="true"
              data-share="true"></div>
      </c:if>

      <c:if test="${empty loginUser}">
        <div class="fb-like"
              data-href="https://developers.facebook.com/docs/plugins/"
              data-layout="button" data-action="like" data-show-faces="true"
              data-share="true"></div>
        <a href="../auth/login.do" style="margin-right: 50px;">로그인</a>
      </c:if>
    </div>
  </div>
          </div>
          </div>
    
      <div id="responsive_store_nav_ctn"></div>
      <div class="responsive_page_template_content">

        <script type="text/javascript">
  $J( function() {
    GStoreItemData.AddStoreItemData( {}, {} );

    GHomepage.InitUserData( {
      rgRecommendedGames: [],
      rgAppsRecommendedByCurators: [],
      rgTopSteamCurators: [],
      oSettings: {"main_cluster":{"top_sellers":1,"early_access":1,"games_already_in_library":null,"recommended_for_you":1,"prepurchase":1,"games":null,"software":1,"dlc_for_you":1,"dlc":null,"recently_viewed":1,"new_on_steam":null,"popular_new_releases":null,"games_not_in_library":null,"only_current_platform":1,"video":1,"hidden":null},"new_on_steam":{"top_sellers":null,"early_access":null,"games_already_in_library":null,"recommended_for_you":null,"prepurchase":null,"games":null,"software":1,"dlc_for_you":null,"dlc":null,"recently_viewed":null,"new_on_steam":null,"popular_new_releases":null,"games_not_in_library":null,"only_current_platform":1,"video":1,"hidden":null},"recently_updated":{"top_sellers":null,"early_access":1,"games_already_in_library":null,"recommended_for_you":null,"prepurchase":null,"games":null,"software":1,"dlc_for_you":null,"dlc":null,"recently_viewed":null,"new_on_steam":null,"popular_new_releases":null,"games_not_in_library":1,"only_current_platform":1,"video":1,"hidden":null},"tabs":{"top_sellers":null,"early_access":1,"games_already_in_library":1,"recommended_for_you":null,"prepurchase":null,"games":null,"software":null,"dlc_for_you":null,"dlc":null,"recently_viewed":null,"new_on_steam":null,"popular_new_releases":null,"games_not_in_library":null,"only_current_platform":null,"video":null,"hidden":null},"specials":{"top_sellers":1,"early_access":1,"games_already_in_library":1,"recommended_for_you":1,"prepurchase":null,"games":null,"software":null,"dlc_for_you":null,"dlc":null,"recently_viewed":null,"new_on_steam":null,"popular_new_releases":1,"games_not_in_library":null,"only_current_platform":null,"video":null,"hidden":null},"more_recommendations":{"top_sellers":1,"early_access":1,"games_already_in_library":null,"recommended_for_you":1,"prepurchase":null,"games":null,"software":null,"dlc_for_you":null,"dlc":null,"recently_viewed":null,"new_on_steam":null,"popular_new_releases":1,"games_not_in_library":null,"only_current_platform":1,"video":null,"hidden":null},"friend_recommendations":{"top_sellers":1,"early_access":1,"games_already_in_library":null,"recommended_for_you":null,"prepurchase":null,"games":null,"software":null,"dlc_for_you":null,"dlc":null,"recently_viewed":null,"new_on_steam":null,"popular_new_releases":null,"games_not_in_library":null,"only_current_platform":null,"video":null,"hidden":null},"curators":{"top_sellers":null,"early_access":1,"games_already_in_library":null,"recommended_for_you":null,"prepurchase":null,"games":null,"software":1,"dlc_for_you":null,"dlc":null,"recently_viewed":null,"new_on_steam":null,"popular_new_releases":null,"games_not_in_library":null,"only_current_platform":1,"video":1,"hidden":null},"success":1,"rwgrsn":-2},
      rgFriendRecommendations: []   } );

          $J('#discovery_queue_static').hide();
            } );
</script>

        <div id="store_header" class="">
          <div class="content">
            
            <div id="store_nav_area">
              <div class="store_nav_leftcap"></div>
              <div class="store_nav_bg">
                <div class="store_nav">
                  <a class="tab active "
                    href="../review/main.do"> <span>메인
                      페이지</span>
                  </a>
                  <div class="tab  flyout_tab " id="genre_tab"
                    data-flyout="genre_flyout" data-flyout-align="left"
                    data-flyout-valign="bottom">
                    <span class="pulldown"> <a class="pulldown_desktop"
                      href="../review/list.do">리뷰</a>
                     <span></span>
                    </span>
                  </div>
                  <div
                    class="popup_block_new flyout_tab_flyout responsive_slidedown"
                    id="genre_flyout" style="display: none;">
                    <div class="popup_body popup_menu">
                      <a class="popup_menu_item"
                        href="../review/list.do">
                        전체 리뷰 게시판 </a> 
                        <span></span>
                      
                      <div class="hr"></div>
                      <div class="popup_menu_subheader">장르로 검색:</div>
                      <div class="hr"></div>
                      <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=Action">
                        액션</a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=Indi">
                        인디</a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=RPG/simulation">
                        전략/시뮬레이션</a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=casual">
                        캐쥬얼</a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=Adventure">
                        어드벤쳐</a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=Sports">
                        스포츠</a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=FPS">
                        FPS</a>
                          <a class="popup_menu_item"
                        href="../review/search.do?keyword=genre&searchword=Other">
                        기타</a>
                        
                      <div class="hr"></div>
                      <div class="popup_menu_subheader">플랫폼으로 검색:</div>
                      <a class="popup_menu_item"
                        href="../review/search.do?keyword=style&searchword=PS4">
                        PS4 </a> <a class="popup_menu_item"
                        href="../review/search.do?keyword=style&searchword=XboxOne">
                        XboxOne </a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=style&searchword=WiiU">
                        Wii U </a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=style&searchword=PC">
                        PC </a>
                        <a class="popup_menu_item"
                        href="../review/search.do?keyword=style&searchword=Others">
                        기타 </a>
                    </div>
                  </div>

                  <div class="tab  flyout_tab " id="hardware_tab"
                    data-flyout="hardware_flyout" data-flyout-align="left"
                    data-flyout-valign="bottom">
                    <span class="pulldown"> <a class="pulldown_desktop"
                      href="http://store.steampowered.com/hardware?snr=1_4_4__12">판매 상품</a>
                      <span></span>
                    </span>

                  </div>
                  <div
                    class="popup_block_new flyout_tab_flyout responsive_slidedown"
                    id="hardware_flyout" style="display: none;">
                    <div class="popup_body popup_menu">
                      <a class="popup_menu_item"
                        href="http://store.steampowered.com/app/353370?snr=1_4_4__12">
                       PS4 게임 </a> <a class="popup_menu_item"
                        href="http://store.steampowered.com/app/353380?snr=1_4_4__12">
                        XboxOne 게임 </a> <a class="popup_menu_item"
                        href="http://store.steampowered.com/hardware/?snr=1_4_4__12#Machines">
                      PC 게임 </a>
                      <a class="popup_menu_item" target="_blank"
                        href="http://steamcommunity.com/steamvr?snr=1_4_4__12">
                        Wii U </a>
                       <a class="popup_menu_item" target="_blank"
                        href="http://steamcommunity.com/steamvr?snr=1_4_4__12">
                        콘솔 및 주변기기 </a>
                    </div>
                  </div>



                  <div class="tab  flyout_tab " id="foryou_tab"
                    data-flyout="foryou_flyout" data-flyout-align="left"
                    data-flyout-valign="bottom"
                    onmouseover="EnsureStoreMenuTagsLoaded( '#foryou_yourtags' );">
                    <span class="pulldown">고객 상담 센터<span></span>
                    </span>
                  </div>
                  <div
                    class="popup_block_new flyout_tab_flyout responsive_slidedown"
                    id="foryou_flyout" style="display: none;">
                    <div class="popup_body popup_menu">
                      <a class="popup_menu_item"
                        href="http://store.steampowered.com/recommended/?snr=1_4_4__12">
                        문의하기 </a> <a class="popup_menu_item"
                        href="http://store.steampowered.com/curators/?snr=1_4_4__12">
                        내 문의 내역 </a> <a class="popup_menu_item"
                        href="http://store.steampowered.com/updated/all/?snr=1_4_4__12">
                      자주 물어보는 질문 </a>
                    </div>
                  </div>


                  <div class="search_area">
                    <div id="store_search">
                      <form id="searchform" name="search" method="get"
                        action="../review/search.do"
                        onsubmit="return SearchSuggestCheckTerm(this);">
                        <input type="hidden" name="snr" value="1_4_4__12">
                        <div class="searchbox">
                          <input id="store_nav_search_term" name="searchword" type="text"
                            class="default" placeholder="리뷰 검색" size="22" autocomplete="off">
                          
                        </div>
                      </form>
                    </div>
                    <div id="searchterm_options"
                      class="search_suggest popup_block_new" style="display: none;">
                      <div class="popup_body" style="border-top: none;">
                        <div id="search_suggestion_contents"></div>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
              <div class="store_nav_rightcap"></div>
            </div>
          </div>
        </div>
        <script type="text/javascript">
      $J( function() {
        BindAutoFlyoutEvents();

        var $Window = $J(window);
        var $Header = $J('#store_header');
        var $ResponsiveNavCtn = $J('#responsive_store_nav_ctn');
        var $HeaderWrapper;
        $Window.on('Responsive_SmallScreenModeToggled.StoreMenu', function() {
          var bUseSmallScreenMode =window.UseSmallScreenMode && window.UseSmallScreenMode();

          if ( !$HeaderWrapper )
            $HeaderWrapper = $Header.wrap( $J('<div/>', {'class': 'responsive_store_nav_ctn_spacer'} ) ).parent();

          if ( bUseSmallScreenMode )
            $ResponsiveNavCtn.append( $Header );
          else
            $HeaderWrapper.append( $Header );


          if ( bUseSmallScreenMode )
          {
            $Header.css( 'visibility', 'hidden' );
            $Header.show();
            var nMenuHeight = $J('#store_header' ).height() + $J('#store_header' ).offset().top;
            if ( $Window.scrollTop() < nMenuHeight )
              $Window.scrollTop( nMenuHeight - GetResponsiveHeaderFixedOffsetAdjustment() );

            $Header.css('visibility', 'visible');
          }
        } ).trigger('Responsive_SmallScreenModeToggled.StoreMenu');

        EnableSearchSuggestions( $J('#searchform')[0].elements['term'], '1_4_4_', 'KR', 'korean', '1602066' );
      } );
    </script>
        <script type="text/javascript">
  var g_AccountID = 0;
  var g_sessionID = "d0e61a514d34ca19278340c6";
  var g_ServerTime = 1449819274;

  $J( InitMiniprofileHovers );

    GDynamicStore.Init( 0, false, "win" );
  </script>



      </div>

  
</body>
</html>