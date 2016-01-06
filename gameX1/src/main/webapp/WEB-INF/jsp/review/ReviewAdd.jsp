<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="../css/globalv2.css" rel="stylesheet" />
<jsp:include page="../Link.jsp"></jsp:include>
</head>
<jsp:include page="../Header.jsp"></jsp:include>
<c:if test="${not empty loginUser}">
<body class="flat_page responsive_page">
<div class="responsive_page_frame with_header">
<div class="responsive_page_content">
<div class="responsive_page_template_content">
	<div class="pagecontent ">

  <div class="profile_small_header_bg">
  <div class="profile_small_header_texture">

    <div class="profile_small_header_text">
      <span class="profile_small_header_name"><a class="whiteLink" >${loginUser.id}</a></span>
           </div>
               <div class="profile_small_header_text" style="margin-left: 110px">
        <span class="profile_small_header_name"><a class="whiteLink">리뷰 작성 페이지 </a></span>
      
          </div>
  
      </div>
</div>

		<div class="grouppage_content_area groupadmin_content">
			<div class="maincontent">


				<div class="leftcol hasContentBoxes">


					<form class="smallForm" id="reviewAdd" name="reviewAdd" method="POST"
						action="../review/add.do" enctype="multipart/form-data">
						

						<div class="group_content group_summary">
							<div class="formRow">
								<div class="formRowTitle">제목</div>
								<div class="formRowFields">
									<div class="gray_bevel for_text_input">
										<input class="dynInput" type="text" name="title" id="title"
											size="30" placeholder="제목을 입력하세요">
									</div>
								</div>
							</div>
							<div class="formRow">
								<div class="formRowTitle">작성자</div>
								<div class="formRowFields">
									<div class="gray_bevel for_text_input">
										<input class="dynInput" type="text" name="writer" id="writer"
											size="30" value="${loginUser.id}" readonly="readonly">
									</div>
								</div>
							</div>


							<div class="formRow">
								<div class="formRowTitle">플랫폼</div>
								<div class="formRowFields">
									<select name="style" id="style" class="gray_bevel dynInput">
										<option value="PS4">PS4</option>
										<option value="XboxOne">XboxOne</option>
										<option value="PC">PC</option>
										<option value="WiiU">WiiU</option>
										<option value="Others">Others</option>

									</select>
								</div>
							</div>
							<div class="formRow" id="cityContainer">
								<div class="formRowTitle">장르</div>
								<div class="formRowFields">
									<select name="genre" id="genre" class="gray_bevel dynInput">
										<option value="Action">Action</option>
										<option value="Indi">Indi</option>
										<option value="RPG/simulation">RPG/simulation</option>
										<option value="casual">casual</option>
										<option value="Adventure">Adventure</option>
										<option value="Sports">Sports</option>
										<option value="FPS">FPS</option>
										<option value="Other">Other</option>
									</select>
								</div>
							</div>
						</div>
						    <div class="formRow">
                <div class="formRowTitle" >사진</div>
	 <div class="avatar_upload_ctn" id="avatar_upload_ctn"  style="margin-left: 140px">
                  <div class="gray_bevel">
                    <div class="upload_controls">
                      <div class="avatar_upload_input_ctn">
                        <input type="file" id="avatar_upload_input" name="pFile" size="16">
                      </div>
                    </div>
 </div>
 </div>
                </div>
                      <div class="formRow">
                <div class="formRowTitle" >영상</div>
   <div class="avatar_upload_ctn" id="avatar_upload_ctn"  style="margin-left: 140px">
                  <div class="gray_bevel">
                    <div class="upload_controls">
                      <div class="avatar_upload_input_ctn">
                        <input type="file" id="avatar_upload_input" name="vFile" size="16">
                      </div>
                    </div>
 </div>
 </div>
                </div>
                

						<div class="group_content group_summary">
							<div class="formRow">
								<div class="formRowTitle">리뷰 내용</div>
								<div class="formRowFields">
									<div class="gray_bevel fullwidth">
										<textarea class="dynInput" rows="8" name="text"
											id="text" placeholder="내용을 작성하세요."></textarea>
									</div>
									<div style="text-align: right;"></div>
								</div>
							</div>
						</div>



						<div class="group_content_bodytext">
							<div class="forum_manage_actions">
								<a href="../review/list.do"
									class="btn_grey_white_innerfade btn_medium"> <span>Cancel</span>
								</a>
								<button type="submit"
									class="btn_green_white_innerfade btn_medium">
									<span>리뷰 게시</span>
								</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>


		<div style="clear: both;"></div>
	</div>
</div>
</div>
</div>
</c:if>
<c:if test="${empty loginUser}">

<div class="page_content">

        <div id="error_display" class="checkout_error" style="display: none; color: #cc3300">
        </div>

    <div class="leftcol">

      
           
             <form name="login" action="../auth/login.do" method="POST">
      <div class="checkout_content_box">
        <div class="loginbox">
          <div class="loginbox_left">
            <h2 style="color:white">로그인</h2>
            <p style="color:white">GameX 계정으로 로그인</p>
            <br>
              <div class="login_row" style="color:white">
                <div class="input_title" style="color:white">GameX 계정 이름</div>
                <input class="text_input" type="text" name="id" id="input_username" placeholder="ID를 입력하세요"><br>
              <input type="checkbox" name="saveEmail" 
  ${(empty cookie.id)?"":"checked"} > ID 저장<br>
              </div>
              <div class="login_row">
                <div class="input_title" style="color:white">비밀번호</div>
                <input class="text_input" type="password" name="password" id="input_password" placeholder="비밀번호를 입력하세요" autocomplete="off"/>
              </div>
                            <div class="login_row" id="captcha_entry" style="display: none;">
               
                <br>
                <div class="input_title" style="color:white">위에 있는 문자들을 입력해주세요.</div>
                <input class="text_input" id="input_captcha" type="text" name="captcha_text">
              </div>
              <div style="display: none;"><input type="submit"></div> 

          </div>
          <div class="loginbox_sep">
          </div>
          <div class="loginbox_right" style="color:white">
          <p><br></p>
            <h2 style="color:white">글을 작성하기 위하여</h2>
            <h2 style="color:white">GameX에 로그인하세요</h2>
            <h2 style="color:white"> 처음이시라면 오늘 새로 가입하세요</h2>
          </div>
          <div style="clear: left;"></div>
          <div class="loginbox_left btn_ctn">
            <div id="login_btn_signin">
              <button type="submit" class="btnv6_blue_hoverfade  btn_medium">
                <span>로그인</span>
              </button>
            </div>
            <div id="login_btn_wait" style="display: none;">
              <img src="../image/throbber.gif">
            </div>
          </div>
          <div class="loginbox_right">
            <a href="../member/add.do" class="btnv6_blue_hoverfade btn_medium">
              <span>GameX 가입</span>
            </a>
          </div>
          <div style="clear: left;"></div>
        </div>
      </div>
                  </form>
      <br>


    </div>
    </div>



</c:if>

</body>
</html>