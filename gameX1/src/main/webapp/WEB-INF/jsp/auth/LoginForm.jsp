<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../Link.jsp"></jsp:include>
</head>
<jsp:include page="../Header.jsp"></jsp:include>

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
            <h2 style="color:white">만들기</h2>
            <p>새 무료 계정</p>
            <br>
            <p>
              회원 가입을 하시죠!           </p>
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
</body>
</html>