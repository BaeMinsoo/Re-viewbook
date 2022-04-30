package kh.semi.reviewBook.user.funding.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.reviewBook.user.funding.model.service.FundingService;
import kh.semi.reviewBook.user.funding.model.vo.FundingVo;

/**
 * Servlet implementation class FundingDonationServlet
 */
@WebServlet("/fundingdonation")
public class FundingDonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FundingService service = new FundingService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FundingDonationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost : fundingdonation/");
		int wbNo = Integer.parseInt(request.getParameter("wbNo"));
		System.out.println(wbNo);
		int result = service.fundingDonation(wbNo);
		
		PrintWriter out = response.getWriter();
		out.print(result);
		out.flush();out.close();
		

	}

}
