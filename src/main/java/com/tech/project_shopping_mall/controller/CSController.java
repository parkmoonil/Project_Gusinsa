package com.tech.project_shopping_mall.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.project_shopping_mall.dao.CSDao;
import com.tech.project_shopping_mall.dto.NoticeDto;
import com.tech.project_shopping_mall.vopage.SearchVO;

@Controller
public class CSController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/csmain")
	public String CSmain(Model model) {
		System.out.println("======CSMAIN=======");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		ArrayList<NoticeDto> noticeboard2=dao.noticeboard2(0, null, null, null);
		model.addAttribute("noticeboard2",noticeboard2);
		
		return "/CS/csmain";
		
	}
	
//	redirect:noticeboard
	@RequestMapping("/noticeboard")
	public String notice(HttpServletRequest request,SearchVO searchVO,Model model) {
		System.out.println("======NoticeBoard=======");
			
		CSDao dao=sqlSession.getMapper(CSDao.class);
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
			model.addAttribute("noticeboard",dao.noticeboard(rowStart, rowEnd, searchKeyword, "3"));
		}else if (ntitle.equals("") && ncontent.equals("")) {
			model.addAttribute("noticeboard",dao.noticeboard(rowStart, rowEnd, searchKeyword, "4"));
		}
		
		model.addAttribute("totRowcnt",total);
		model.addAttribute("searchVo",searchVO);
		
		return "/CS/notice/noticeboard";
	}
	
	@RequestMapping("/inquiry")
	public String inquiry() {
		System.out.println("=====Inquiry=====");
	
		
		return "CS/inquiry/inquiry";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request,
			Model model) {
		System.out.println("=======write======");
		
		String ntitle=request.getParameter("ntitle");
		String ncontent=request.getParameter("ncontent");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.write(ntitle, ncontent);
		
		return "redirect:noticeboard";
	}
	
	@RequestMapping("/write_view")
	public String write_view() {
		System.out.println("=====Write_View=====");
		
		return "/CS/notice/write_view";
	}
	
	@RequestMapping("/content_view")
	public String content_view(HttpServletRequest request,
			Model model) {
		System.out.println("======content_view======");
		
		int snnum=Integer.parseInt(request.getParameter("nnum"));
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		NoticeDto dto=dao.contentView(snnum);
		model.addAttribute("content_view",dto);
		
		return "/CS/notice/content_view";
	}
	
	@RequestMapping("/content_update")
	public String content_update(HttpServletRequest request,
			Model model) {
		System.out.println("======content_update======");
		
		int snnum=Integer.parseInt(request.getParameter("nnum"));
		CSDao dao=sqlSession.getMapper(CSDao.class);
		
		NoticeDto dto=dao.contentView(snnum);
		model.addAttribute("content_view",dto);
		
		return "/CS/notice/content_update";
	}
	
	@RequestMapping(method = RequestMethod.POST, value= "/modify")
	public String modify(HttpServletRequest request,
			Model model) {
		System.out.println("======modify======");
		
		int nnum=Integer.parseInt(request.getParameter("nnum"));
		String ntitle=request.getParameter("ntitle");
		String ncontent=request.getParameter("ncontent");
		
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.modify(nnum, ntitle, ncontent);
		
		return "redirect:noticeboard";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request,
			Model model) {
		System.out.println("======delete======");
		
		int snnum=Integer.parseInt(request.getParameter("nnum"));
		CSDao dao=sqlSession.getMapper(CSDao.class);
		dao.delete(snnum);
		
		return "redirect:noticeboard";
	}
	
	@RequestMapping("/communication")
	public String communication() {
		System.out.println("=====communication=====");
		
		return "/CS/communication/communication";
	}
	
	@RequestMapping("/communication2")
	public String communication2() {
		System.out.println("=====communication2=====");
		
		return "/CS/communication/communication2";
	}
	
	@RequestMapping("/communication3")
	public String communication3() {
		System.out.println("=====communication3=====");
		
		return "/CS/communication/communication3";
	}
	
	@RequestMapping("/membership")
	public String membership() {
		System.out.println("=====membership=====");
		
		return "/CS/mbs/membership";
	}
}
