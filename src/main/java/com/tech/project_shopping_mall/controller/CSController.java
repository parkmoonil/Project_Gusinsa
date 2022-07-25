package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.project_shopping_mall.dao.IDao;
import com.tech.project_shopping_mall.dto.NoticeDto;
import com.tech.project_shopping_mall.vopage.SearchVO;

@Controller
public class CSController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/csmain")
	public String CSmain(Model model) {
		System.out.println("======CSMAIN=======");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		
		ArrayList<NoticeDto> noticeboard=dao.noticeboard(0, 0, null, null);
		model.addAttribute("noticeboard",noticeboard);
		
	
		return "csmain";
		
	}
	
	@RequestMapping("/noticeboard")
	public String notice(HttpServletRequest request,SearchVO searchVO,Model model) {
		System.out.println("======NoticeBoard=======");
			
		IDao dao=sqlSession.getMapper(IDao.class);
//		ArrayList<NoticeDto> noticeboard=dao.noticeboard();
//		model.addAttribute("noticeboard",noticeboard);
		
		String searchKeyword=request.getParameter("sk");
		searchKeyword="";
		
		String ntitle="";
		String ncontent="";
		
		String strPage=request.getParameter("page");
		
		if(strPage==null)
			strPage="1";
		
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		
		int total=0;
		if (ntitle.equals("ntitle") && ncontent.equals("")) {
			total=dao.noticeboardTotCount1(searchKeyword);
		}else if (ntitle.equals("") && ncontent.equals("ncontent")) {
			total=dao.noticeboardTotCount2(searchKeyword);
		}else if (ntitle.equals("ntitle") && ncontent.equals("bcontent")) {
			total=dao.noticeboardTotCount3(searchKeyword);
		}else if (ntitle.equals("") && ncontent.equals("")) {
			total=dao.noticeboardTotCount4(searchKeyword);
		}
		
		searchVO.pageCalculate(total);
		
		System.out.println("totRow : "+total);
		System.out.println("clickpage : "+strPage);
		System.out.println("pageStart : "+searchVO.getPageStart());
		System.out.println("pageEnd : "+searchVO.getPageEnd());
		System.out.println("pageTot : "+searchVO.getTotPage());
		System.out.println("rowStart : "+searchVO.getRowStart());
		System.out.println("rowEnd : "+searchVO.getRowEnd());
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		if (ntitle.equals("ntitle") && ncontent.equals("")) {
			model.addAttribute("noticeboard",dao.noticeboard(rowStart,rowEnd,searchKeyword,"1")); 
		}else if (ntitle.equals("") && ncontent.equals("ncontent")) {
			model.addAttribute("noticeboard",dao.noticeboard(rowStart, rowEnd, searchKeyword, "2"));
		}else if (ntitle.equals("ntitle") && ncontent.equals("ncontent")) {
			model.addAttribute("noticeboard",dao.noticeboard(rowStart, rowEnd, searchKeyword, "2"));
		}else if (ntitle.equals("") && ncontent.equals("")) {
			model.addAttribute("noticeboard",dao.noticeboard(rowStart, rowEnd, searchKeyword, "2"));
		}
		
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVo",searchVO);
		
		return "noticeboard";
	}
	
	@RequestMapping("/inquiry")
	public String inquiry() {
		System.out.println("=====Inquiry=====");
	
		
		return "inquiry";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request,
			Model model) {
		System.out.println("=======write======");
		
		String nname=request.getParameter("nname");
		String ntitle=request.getParameter("ntitle");
		String ncontent=request.getParameter("ncontent");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		dao.write(nname, ntitle, ncontent);
		
		return "redirect:noticeboard";
	}
	
	@RequestMapping("/write_view")
	public String write_view() {
		System.out.println("=====Write_View=====");
		
		return "write_view";
	}
	
	@RequestMapping("/content_view")
	public String content_view(HttpServletRequest request,
			Model model) {
		System.out.println("======content_view======");
		
		String snnum=request.getParameter("nnum");
		IDao dao=sqlSession.getMapper(IDao.class);
		
		NoticeDto dto=dao.contentView(snnum);
		model.addAttribute("content_view",dto);
		
		return "content_view";
	}
	
	@RequestMapping("/content_update")
	public String content_update(HttpServletRequest request,
			Model model) {
		System.out.println("======content_update======");
		
		String snnum=request.getParameter("nnum");
		IDao dao=sqlSession.getMapper(IDao.class);
		
		NoticeDto dto=dao.contentView(snnum);
		model.addAttribute("content_view",dto);
		
		return "content_update";
	}
	
	@RequestMapping(method = RequestMethod.POST, value= "/modify")
	public String modify(HttpServletRequest request,
			Model model) {
		System.out.println("======modify======");
		
		String nnum=request.getParameter("nnum");
		String ntitle=request.getParameter("ntitle");
		String ncontent=request.getParameter("ncontent");
		
		IDao dao=sqlSession.getMapper(IDao.class);
		dao.modify(nnum, ntitle, ncontent);
		
		return "redirect:noticeboard";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request,
			Model model) {
		System.out.println("======delete======");
		
		String snnum=request.getParameter("nnum");
		IDao dao=sqlSession.getMapper(IDao.class);
		dao.delete(snnum);
		
		return "redirect:noticeboard";
	}
	
	@RequestMapping("/communication")
	public String communication() {
		System.out.println("=====communication=====");
		
		return "communication";
	}
	
	@RequestMapping("/communication2")
	public String communication2() {
		System.out.println("=====communication2=====");
		
		return "communication2";
	}
}
