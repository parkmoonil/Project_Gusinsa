package com.tech.project_shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.project_shopping_mall.dao.CSDao;
import com.tech.project_shopping_mall.dto.MembersDto;

@Controller
public class CommuController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/communication")
	public String communication() {
		System.out.println("=====communication=====");
		
		return "CS/communication/communication";
	}
	
	@RequestMapping("/communication2")
	public String communication2(HttpServletRequest request,Model model) {
		System.out.println("=====communication2=====");
		
		
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("mid");
		
		if (mid==null) {
			
			return "redirect:login/loginform";
		} else {

			System.out.println("mid : "+mid);
			
			CSDao dao=sqlSession.getMapper(CSDao.class);
			MembersDto dto = dao.CSMembers(mid);
			model.addAttribute("Members",dto);
			
			return "CS/communication/communication2";
			
		}
	}
	
	@RequestMapping("/Commu_write")
	public String Commu_write(HttpServletRequest request) throws Exception {
		System.out.println("=====Commu_write=====");
		

		String attachPath="resources\\upload\\";
		String uploadPath=request.getSession().getServletContext().getRealPath("/");
		System.out.println("uploadPath : "+uploadPath);
		String path=uploadPath+attachPath;
		
		MultipartRequest req=
				new MultipartRequest(request, path, 1024*1024*20, "utf-8",
						new DefaultFileRenamePolicy());
		
		
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("mid");
		
		String cselect1=req.getParameter("cselect1"); 
		String cselect2=req.getParameter("cselect2"); 
		String cselect3=req.getParameter("cselect3"); 
		String cselect4=req.getParameter("cselect4"); 
		String ctitle=req.getParameter("ctitle"); 
		String ccontent=req.getParameter("ccontent"); 
		String cfile=req.getFilesystemName("cfile");
		
		
		System.out.println("filename : "+cfile);
		if (cfile==null) {
			cfile="";
		}
		
		CSDao dao=sqlSession.getMapper(CSDao.class);

		dao.Commu_write(cselect1, cselect2, cselect3, cselect4, ctitle, ccontent, cfile,mid);

		
		return "redirect:communication4";
	}
	
	@RequestMapping("/communication3")
	public String communication3(HttpServletRequest request) {
		System.out.println("========write========");
		
		String mid=(String)request.getParameter("mid");
		
		System.out.println("mid : " + mid);

		return "CS/communication/communication3";
	}
	
	@RequestMapping("/communication4")
	public String communication4(HttpServletRequest request) {
		System.out.println("========write========");
		
		return "CS/communication/communication4";
	}

}
