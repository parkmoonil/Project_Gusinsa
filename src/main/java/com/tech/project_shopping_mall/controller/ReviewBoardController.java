package com.tech.project_shopping_mall.controller;


import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tech.project_shopping_mall.dao.ReviewBoardDao;
import com.tech.project_shopping_mall.dto.ReviewBoardDto;
import com.tech.project_shopping_mall.vopage.reBoardSearchVO;

@Controller
public class ReviewBoardController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/reviewboard_list")
	public String reviewboard_list(HttpServletRequest request, reBoardSearchVO reboardsearchVO, Model model) {
		System.out.println("======reviewboard_list()======");

		ReviewBoardDao dao = sqlSession.getMapper(ReviewBoardDao.class);

		/* paging */
		String strPage = request.getParameter("page"); // HttpServletRequest request, 가져오기
		System.out.println("pagggge1 :" + strPage);
		// null검사
		if (strPage == null)// 처음 리스트에서 list페이지로 넘어갈 때, null임.
			strPage = "1";
		System.out.println("pagggge2 :" + strPage);
		int page = Integer.parseInt(strPage);
		reboardsearchVO.setPage(page);

		// total 글의 갯수 구하기
		int total=dao.selectReviewBoardTotCount();
		System.out.println("totalrow : "+total);

		reboardsearchVO.pageCalculate(total);

		// 계산된 내용 출력
		System.out.println("totRow : " + total);
		System.out.println("clickPage : " + strPage);
		System.out.println("pageStart : " + reboardsearchVO.getPageStart());
		System.out.println("pageEnd : " + reboardsearchVO.getPageEnd());
		System.out.println("pageTot : " + reboardsearchVO.getTotPage());
		System.out.println("rowStart : " + reboardsearchVO.getRowStart());
		System.out.println("rowEnd : " + reboardsearchVO.getRowEnd());

		int rowStart = reboardsearchVO.getRowStart();
		int rowEnd = reboardsearchVO.getRowEnd();

		ArrayList<ReviewBoardDto> reviewboard_list=dao.reviewboard_list(rowStart,rowEnd);

		model.addAttribute("reviewboard_list",reviewboard_list);
		model.addAttribute("totRowcnt", total);
		model.addAttribute("reboardsearchVO", reboardsearchVO);

		return "reviewboard/reviewboard_list";
	}

 @RequestMapping("/reviewboard_view") 
	 public String reviewboard_view(HttpServletRequest request, Model model) {
	 System.out.println("======reviewboard_view()======"); 

	 String rh_num=request.getParameter("r_num"); 
	 ReviewBoardDao dao=sqlSession.getMapper(ReviewBoardDao.class);
	 
	 dao.reviewboard_upHit(rh_num);
	 
	 ReviewBoardDto dto=dao.reviewboard_view(rh_num); 
	 model.addAttribute("reviewboard_view",dto);
	 
	 return "reviewboard/reviewboard_view"; 
	 }
}