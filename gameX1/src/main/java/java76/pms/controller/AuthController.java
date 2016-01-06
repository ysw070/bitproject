package java76.pms.controller;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java76.pms.dao.MemberDao;
import java76.pms.domain.Member;

@Controller
@RequestMapping("/auth/*")
public class AuthController {  
  @Autowired MemberDao memberDao;

  @RequestMapping(value="login", method=RequestMethod.GET)
  public String loginform() {
    return "auth/LoginForm";
  }
  
  @RequestMapping(value="login", method=RequestMethod.POST)
  public String login(
      String id,
      String password,
      String saveEmail,
      HttpServletResponse response,
      HttpSession session) {
    Cookie idCookie = null;
    if (saveEmail != null) { // 이메일 저장을 체크했으면,
      idCookie = new Cookie("id", id);
      idCookie.setMaxAge(60 * 60 * 24 * 15);
    } else {
      idCookie = new Cookie("id", "");
      idCookie.setMaxAge(0); // 웹브라우저에게 id 쿠키 삭제를 명령한다.
    }
    response.addCookie(idCookie);

    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("id", id);
    paramMap.put("password", password);
    
    Member member = memberDao.login(paramMap);

    if (member == null) { // 로그인 실패!
      session.invalidate(); // 세션을 무효화시킴. => 새로 세션 객체 생성!
      return "auth/LoginFail";
    }

    session.setAttribute("loginUser", member);
    return "redirect:../review/main.do";
  }
  
  @RequestMapping("logout")
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:login.do";
  }
}