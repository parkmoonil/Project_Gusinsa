package com.tech.project_shopping_mall.controller;

import java.io.FileInputStream;

import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.project_shopping_mall.dao.ReviewDao;
import com.tech.project_shopping_mall.dto.ReviewDto;

import com.tech.project_shopping_mall.vopage.reSearchVO;

@Controller
public class ReviewController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/review_list")
	public String review_list(HttpServletRequest request, reSearchVO researchVO, Model model) {
		System.out.println("======review_list()======");

		ReviewDao dao = sqlSession.getMapper(ReviewDao.class);

		String r_title = "";
		String r_contents = "";

		String[] retitle = request.getParameterValues("searchType");
		if (retitle != null) {
			for (int i = 0; i < retitle.length; i++) {
				System.out.println("retitle : " + retitle[i]);
			}
		}
		/* 경우의 수 4가지, 변수에 저장 */
		if (retitle != null) {
			for (String val : retitle) {
				if (val.contentEquals("r_title")) {
					model.addAttribute("r_title", "true");// 검색체크유지
					r_title = "r_title";
				} else if (val.contentEquals("r_contents")) {
					model.addAttribute("r_contents", "true");// 검색체크유지
					r_contents = "r_contents";
				}
			}
		}

		// 검색결과 유지하기
		String rt = request.getParameter("r_title");
		String rc = request.getParameter("r_contents");

		if (rt != null) {
			if (rt.equals("r_title")) {
				r_title = rt;
				model.addAttribute("r_title", "true");
			}
		}
		if (rc != null) {
			if (rc.equals("r_contents")) {
				r_contents = rc;
				model.addAttribute("r_contents", "true");
			}
		}

		/* paging */
		String strPage = request.getParameter("page"); // HttpServletRequest request, 가져오기
		System.out.println("pagggge1 :" + strPage);
		// null검사
		if (strPage == null)// 처음 리스트에서 list페이지로 넘어갈 때, null임.
			strPage = "1";
		System.out.println("pagggge2 :" + strPage);
		int page = Integer.parseInt(strPage);
		researchVO.setPage(page);

		// total 글의 갯수 구하기
		int total=dao.selectReviewTotCount();
		System.out.println("totalrow : "+total);

		// 조건에 따른 갯수 구하기
//		int total = 0;
//		if (r_title.equals("r_title") && r_contents.equals("")) {
//			total = dao.selectReviewTotCount1(searchKeyword);
//		} else if (r_title.equals("") && r_contents.equals("r_contents")) {
//			total = dao.selectReviewTotCount2(searchKeyword);
//		} else if (r_title.equals("r_title") && r_contents.equals("r_contents")) {
//			total = dao.selectReviewTotCount3(searchKeyword);
//		} else if (r_title.equals("") && r_contents.equals("")) {
//			total = dao.selectReviewTotCount4(searchKeyword);
//		}

		researchVO.pageCalculate(total);

		// 계산된 내용 출력
		System.out.println("totRow : " + total);
		System.out.println("clickPage : " + strPage);
		System.out.println("pageStart : " + researchVO.getPageStart());
		System.out.println("pageEnd : " + researchVO.getPageEnd());
		System.out.println("pageTot : " + researchVO.getTotPage());
		System.out.println("rowStart : " + researchVO.getRowStart());
		System.out.println("rowEnd : " + researchVO.getRowEnd());

		int rowStart = researchVO.getRowStart();
		int rowEnd = researchVO.getRowEnd();

		ArrayList<ReviewDto> review_list=dao.review_list(rowStart,rowEnd);

		model.addAttribute("review_list",review_list);
		model.addAttribute("totRowcnt", total);
		model.addAttribute("researchVO", researchVO);
		
		/*
		 * int avgstar = dao.review_staravg(avgstar);
		 * model.addAttribute("review_avgstar", avgstar);
		 */
		
		HttpSession session=request.getSession();
	    String mid = (String)session.getAttribute("mid");
		model.addAttribute("mid", mid);
		System.out.println("mid : " + mid);

		return "review/review_list";
	}

	@RequestMapping("/review_write_view")
	public String review_write_view(HttpServletRequest request,Model model) {
		System.out.println("======review_write_view()======");
//		입력데이터폼화면으로 전환
		HttpSession session=request.getSession();
	    String mid = (String)session.getAttribute("mid");
	    //String pcode = (String)session.getAttribute("pcode");
	    
	    int pcode = Integer.parseInt(request.getParameter("p_code"));
	    int ocode = Integer.parseInt(request.getParameter("o_code"));
	    
	    model.addAttribute("mid",mid);
	    model.addAttribute("p_code",pcode);
	    model.addAttribute("o_code",ocode);
	//	System.out.println("mid : " + mid);
		System.out.println("p_code : " + pcode);
		return "review/review_write_view";
	}

	@RequestMapping("/review_write")
	public String review_write(HttpServletRequest request,
			Model model) throws Exception {
		System.out.println("======review_write()======");
//		db에 데이터 저장
		//toss
//		model.addAttribute("request",request);
//		bServiceInter=new BWriteService();
//		bServiceInter.execute(model);
//		String bname=request.getParameter("bname");
//		String btitle=request.getParameter("btitle");
//		String bcontent=request.getParameter("bcontent");
		
		//upload
		
	      String attachPath="resources\\upload\\";
	      String uploadPath=request.getSession().getServletContext().getRealPath("/");
	      System.out.println("uploadPath : "+uploadPath);
	      String path=uploadPath+attachPath;
	      
	    //멀티파트폼 데이터로 받음
	      MultipartRequest req=
	            new MultipartRequest(request, path, 1024*1024*20, "utf-8",
	                  new DefaultFileRenamePolicy());
	      		//같은 이름이 있는 파일은 숫자를 넣어줘라 bo.jpg bo1.jpg
	      //maxPostSize 몇 메가 파일 크기
	      
	      
	      int pcode = Integer.parseInt(req.getParameter("pcode"));
	      //String pcode = request.getParameter("pcode");
	      System.out.println("p_code : "+pcode);
	      String mid=req.getParameter("mid");
	      String r_starpoint=req.getParameter("r_starpoint");
	      String r_title=req.getParameter("r_title");
	      String r_contents=req.getParameter("r_contents");
	      String fname=req.getFilesystemName("r_img");
	      int ocode = Integer.parseInt(req.getParameter("o_code"));
	      System.out.println("o_code : "+ocode);

		System.out.println("filename : "+fname);
		if (fname==null) {
			fname="";
		}
		
		ReviewDao dao=sqlSession.getMapper(ReviewDao.class);
		dao.review_write(pcode, mid, r_starpoint, r_title, r_contents,fname,ocode);
		
		
		return "redirect:/review_list";
	}



 @RequestMapping("/review_view") 
	 public String review_view(HttpServletRequest request, Model model) {
	 System.out.println("======review_view()======"); 
	 // db에 데이터 저장 //toss //
	// model.addAttribute("request",request); 
	 // bServiceInter=new ReviewViewService(); 
	 // bServiceInter.execute(model); 
		/*
		 * String rh_num=request.getParameter("r_num"); ReviewDao
		 * dao=sqlSession.getMapper(ReviewDao.class);
		 * 
		 * dao.review_upHit(rh_num);
		 * 
		 * ReviewDto dto=dao.review_view(rh_num); model.addAttribute("review_view",dto);
		 */
	 
	 return "review/review_view"; 
	 }

 @RequestMapping("/download") 
 public String download(HttpServletRequest
 request,HttpServletResponse response, Model model) 
		 throws Exception {
 System.out.println("download");
 
 String path=request.getParameter("p"); 
 String fname=request.getParameter("f"); 
 String r_num=request.getParameter("r_num");
 
 //down //header에 신호주기 이것은 
 response.setHeader("Content-Disposition",
 "Attachment;filename="+URLEncoder.encode(fname,"utf-8"));
 
 String attachPath="resources\\upload\\"; 
 String realPath=request.getSession().getServletContext().getRealPath(attachPath)+"\\"+fname; 
 System.out.println("realPath : "+realPath);
 
 //stream연결 
 FileInputStream fin=new FileInputStream(realPath);
 ServletOutputStream sout=response.getOutputStream();
 
 byte[] buf=new byte[1024]; 
 int size=0; 
 while ((size=fin.read(buf,0,1024))!=-1) { 
	 sout.write(buf,0,size); 
 } 
 fin.close();
 sout.close();
 
 return "review/review_view?r_num="+r_num; 
 	}
 
 @RequestMapping("/review_update") 
	 public String review_update(HttpServletRequest request, Model model) {
	  System.out.println("======review_update()======"); // db에 데이터 저장 //toss //
		/*
		 * model.addAttribute("request",request); //
		 *//*  bServiceInter=new BReview_ViewService(); // 
	  bServiceInter.execute(model);*/
	  
	  String sr_num=request.getParameter("r_num"); 
	  ReviewDao dao=sqlSession.getMapper(ReviewDao.class);
	  
	  ReviewDto dto=dao.review_view(sr_num); 
	  model.addAttribute("review_view",dto);
	    
	  return "review/review_update"; 
	  }
  
  @RequestMapping(method = RequestMethod.POST,value = "/review_modify") 
  public String review_modify(HttpServletRequest request, Model model) {
  System.out.println("======review_modify()======"); // db에 데이터 저장 //toss //
  //model.addAttribute("request",request); 
  // bServiceInter=new BModifyService();
  // bServiceInter.execute(model);
  
  String sr_num=request.getParameter("r_num"); 
  String r_starpoint=request.getParameter("r_starpoint"); 
  String r_title=request.getParameter("r_title"); 
  String r_contents=request.getParameter("r_contents");
  
  ReviewDao dao=sqlSession.getMapper(ReviewDao.class); 
  dao.review_modify(sr_num, r_starpoint, r_title, r_contents);
  
  return "redirect:/review_list"; 
  }
  
 
  @RequestMapping("/review_delete") 
  public String review_delete(HttpServletRequest request,
  Model model) { 
System.out.println("======review_delete()======"); // db에 데이터 삭제

  //toss // 
  /*model.addAttribute("request",request);*/ 
//  bServiceInter=new BDeleteService(); // bServiceInter.execute(model); 
  String sr_num=request.getParameter("r_num"); 
  ReviewDao dao=sqlSession.getMapper(ReviewDao.class); 
  dao.review_delete(sr_num);
  
  return "redirect:/review_list";
  }
}