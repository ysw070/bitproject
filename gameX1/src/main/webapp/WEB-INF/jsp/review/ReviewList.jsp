<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center; position:relative; color:white;font-size: 40px;font-family: CreakyFrank">R e v i e w </h1>
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
					</div>
				</div>
				<c:forEach var="review" items="${reviews}">
					<input id="last_tab" type="hidden" value="" >
					<div class="home_tabs_content" style="background-color: rgba( 0, 0, 0, 0.5 ); z-index: -100">
						<div class="tab_content" id="tab_newreleases_content">
							<div class="tab_item" 
								onmouseover="GameHover( this, event, 'global_hover', {&quot;type&quot;:&quot;app&quot;,&quot;id&quot;:342200,&quot;public&quot;:1,&quot;v6&quot;:1} );"
								onmouseout="HideGameHover( this, event, 'global_hover' )">
								<a class="tab_item_overlay"  
									href="../review/detail.do?no=${review.reviewNo}"> <img 
									src="http://store.akamai.steamstatic.com/public/images/blank.gif"  >
								</a>
								<div class="tab_item_overlay_hover"></div>
								<div class="tab_item_cap">
									<img class="tab_item_cap_img" src="../rPhoto/${review.photo}" style="height:70px; width:100px;">
								</div>
								<div class="discount_block tab_item_discount no_discount">
									<div class="discount_prices no_discount">
										<div class="discount_final_price">조회수: ${review.views}</div>
									</div>
								</div>
								<div class="tab_item_content">
									<div class="tab_item_name" style="color:white;">${review.title}</div>
									<div class="tab_item_details">
										<span class="platform_img win"></span>
										<div class="tab_item_top_tags">
											<span class="top_tag">${review.genre}</span> <span
												class="top_tag">${review.style}</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="tab_see_more">
                  <a
                    href="../review/add.do"
                    class="btnv6_blue_hoverfade btn_small_tall"> <span> 새 리뷰 작성</span>
                  </a>
                </div>
			</div>
		</div>
	</div>

</body>
</html>