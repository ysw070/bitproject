package java76.pms.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java76.pms.dao.ReviewDao;
import java76.pms.domain.Review;
import java76.pms.util.MultipartHelper;

@Controller
@RequestMapping("/review/*")
public class ReviewController { 
  @Autowired ReviewDao reviewDao;
  @Autowired ServletContext servletContext;
  
  @RequestMapping("intro")
  public String indexPage() {
    return "testMain/indexPage";
  }
  @RequestMapping("main")
  public String mainForm(
      @RequestParam(defaultValue="1") int pageNo,
      @RequestParam(defaultValue="5") int pageSize,
      @RequestParam(defaultValue="rno") String keyword,
      HttpServletRequest request) {
    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("startIndex", (pageNo - 1) * pageSize);
    paramMap.put("length", pageSize);
    paramMap.put("keyword", keyword);
    
  List<Review> reviews = reviewDao.selectList(paramMap);
  request.setAttribute("reviews", reviews);
   
    return "testMain/MainForm";
  }
  @RequestMapping("list")
  public String list(      
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "30") int pageSize,
      HttpServletRequest request) {
    
    HashMap<String,Object> paramMap = new HashMap<>();
    paramMap.put("startIndex", (pageNo - 1) * pageSize);
    paramMap.put("length", pageSize);
    
    List<Review> reviews = reviewDao.selectList(paramMap);

    request.setAttribute("reviews", reviews);

    return "review/ReviewForm";
  }
  
  @RequestMapping(value="add", method=RequestMethod.GET)
  public String form() {
    return "review/ReviewAdd";
  }
  
  @RequestMapping(value="add", method=RequestMethod.POST)
  public String add(Review review, MultipartFile pFile, MultipartFile vFile, Model model) throws Exception {
    
    if (pFile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(pFile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath("/rPhoto") 
          + "/" + newFileName);
      pFile.transferTo(attachfile);
      review.setPhoto(newFileName);
    }
    
    if (vFile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(vFile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath("/rVideo") 
          + "/" + newFileName);
      vFile.transferTo(attachfile);
      review.setVideo(newFileName);
    } 
    
    reviewDao.insert(review);
    
    return "redirect:list.do";
  }
  
  @RequestMapping("detail")
  public String detail(int no, Model model) throws Exception {
    
    Review review = null;
    review = reviewDao.selectOne(no);
    model.addAttribute("review", review);
    
    reviewDao.viewUp(no);
    model.addAttribute("review", review);
    
    review = reviewDao.selectOne(no);
    model.addAttribute("review", review);
    return "review/ReviewDetail";
   
  }
  
  @RequestMapping(value="update", method=RequestMethod.GET)
  public String updateform(int no, Model model) throws Exception {
    
    Review review = null;
    
    review = reviewDao.selectOne(no);
    model.addAttribute("review", review);
    return "review/ReviewUpdate";
  }
  
  
  @RequestMapping(value="update", method=RequestMethod.POST)
  public String update(
      Review review, MultipartFile pFile, MultipartFile vFile, Model model) throws Exception {
    
    if (pFile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(pFile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath("/rPhoto") 
                                          + "/" + newFileName);
      pFile.transferTo(attachfile);
      review.setPhoto(newFileName);
    } 
    
    if (vFile.getSize() > 0) {
      String newFileName = MultipartHelper.generateFilename(vFile.getOriginalFilename());  
      File attachfile = new File(servletContext.getRealPath("/rVideo") 
                                          + "/" + newFileName);
      vFile.transferTo(attachfile);
      review.setVideo(newFileName);
    } 
    
    if (reviewDao.update(review) <= 0) {
      model.addAttribute("errorCode", "401");
      return "review/ReviewAuthError";
    } 
    
    return "redirect:list.do";
  }
  
  @RequestMapping("delete")
  public String delete(int no, Model model) 
      throws Exception {
    
    if (reviewDao.delete(no) <= 0) {
      model.addAttribute("errorCode", "401");
      return "review/ReviewAuthError";
    } 

    return "redirect:list.do";
  }
  
  
  @RequestMapping(value="search", method=RequestMethod.GET)
  public String search(
      @RequestParam(defaultValue="0") String keyword,
      @RequestParam(defaultValue="0") String searchword,
      HttpServletRequest request) throws Exception {

    HashMap<String,Object> paramMap = new HashMap<>();
    
      if(!keyword.equals("0")) {
       if(keyword.equals("genre")) {
        
        paramMap.put("genre", searchword);
      }  else if(keyword.equals("style")){
        
        paramMap.put("style", searchword);
      }
      }else {
      if (searchword.equals("0")){ 
        return "redirect:main.do";
      }
      searchword = "%" + searchword + "%"; 
      
      paramMap.put("title", searchword);
      }
    List<Review> reviews = reviewDao.search(paramMap);
    
    request.setAttribute("reviews", reviews);
    
    return "review/ReviewForm";
  }
  
}