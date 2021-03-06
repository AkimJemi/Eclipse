package main.command;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.model.Edu;
import main.model.Paging;
import main.model.WorkExperience;
import main.service.EduService;
import main.service.WEService;
import mvc.command.CommandHandler;
import personnel.model.Personnel;
import personnel.service.PersonnelService;
import user.model.License;

public class MainHandler implements CommandHandler {
	private final static String MAIN_FORM = "WEB-INF/view/main.jsp";
	private Personnel personnel = new Personnel();
	private WEService weService = new WEService();
	private EduService eduService = new EduService();
	private PersonnelService personalService = new PersonnelService();
	private ArrayList<WorkExperience> weList = null;
	private ArrayList<Edu> eduList = null;
	private ArrayList<Personnel> personnelList = null;

	@Override
	public String process(HttpServletRequest rq, HttpServletResponse rp) {
		String no = null;
		int No_int = 0;
		if (rq.getParameter("init") != null)
			return MAIN_FORM;

		if (rq.getParameter("searchField") != null && rq.getParameter("searchField") != "") {
			int search = Integer.parseInt(rq.getParameter("search"));
			String searchField = rq.getParameter("searchField");
			int startPage = 1;
			if (rq.getParameter("startPage") != null)
				startPage = Integer.parseInt(rq.getParameter("startPage"));

			int currentPage = 1;
			if (rq.getParameter("currentPage") != null)
				currentPage = Integer.parseInt(rq.getParameter("currentPage"));

			int total = personalService.getTotalPage(search, searchField);

			Paging paging = new Paging(total, startPage, currentPage);

			rq.setAttribute("search", search);
			rq.setAttribute("searchField", searchField);
			rq.setAttribute("paging", paging);
			if (Integer.parseInt(rq.getParameter("search")) == 9) {
				search = 9;
				rq.setAttribute("searchError2", Boolean.TRUE);
				return MAIN_FORM;
			}
			personnelList = personalService.getSearchPersonnel(search, searchField, paging);
		}
		rq.setAttribute("personnelList", personnelList);

		if (rq.getParameter("choose") != null) {
			if (rq.getParameter("choose").equalsIgnoreCase("personnel"))
				rq.setAttribute("choose", Boolean.TRUE);
			else
				rq.setAttribute("choose", Boolean.FALSE);
		}

		if (rq.getParameter("modify") != null)
			rq.setAttribute("modify", Boolean.TRUE);
		
		
		if (rq.getParameter("no") != null && rq.getParameter("no") != "") {
			no = rq.getParameter("no");
			No_int = Integer.parseInt(no);
			rq.setAttribute("no", no);
			personnel = personalService.getPeronsonel(personnel, No_int);
			rq.setAttribute("personnel", personnel);
			rq.setAttribute("money", toString(personnel.getMoney()));
			eduList = new ArrayList<Edu>();
			eduList = eduService.GetAllEduList(No_int);
			weList = new ArrayList<WorkExperience>();
			weList = weService.GetAllWEList(No_int);
			rq.setAttribute("eduList", eduList);
			rq.setAttribute("workexperience", weList);
			rq.setAttribute("personnel", personnel);
		} else if (rq.getParameter("NoSummit") != null) {

		} else {
//			rq.setAttribute("wrongRoute", Boolean.TRUE);
//			return MAIN_FORM;
		}
		if (rq.getMethod().equalsIgnoreCase("POST"))
			return processSubmit(rq, rp);
		else if (rq.getMethod().equalsIgnoreCase("GET"))
			return processForm(rq, rp);
		else
			System.out.println("error : MainHandler.process()");
		return null;

	}

	private String processForm(HttpServletRequest rq, HttpServletResponse rp) {
		
		
		
		
		
		return MAIN_FORM;
	}

	private String processSubmit(HttpServletRequest rq, HttpServletResponse rp) {
		Date start_date = null;
		Date end_date = null;
		
		if (rq.getParameter("NoSummit") != null)
			return MAIN_FORM;

		// current
		weList = new ArrayList<WorkExperience>();
		for (int i = 1; i <= 5; i++) {
			if (rq.getParameter("we_no" + i) != null) {
				start_date = Datering(rq, rq.getParameter("begin_date" + i));
				end_date = Datering(rq, rq.getParameter("end_date" + i));
				weList.add(new WorkExperience(Integer.parseInt(rq.getParameter("no")),
						Integer.parseInt(rq.getParameter("we_no" + i)),
						Integer.parseInt(rq.getParameter("dept_no" + i)),
						Integer.parseInt(rq.getParameter("mini_no" + i)), start_date, end_date));
			}
		}
		int no = Integer.parseInt(rq.getParameter("no"));
		weList = weService.InsertAllWE(weList, no);
		
		eduList = new ArrayList<Edu>();
		for (int i = 1; i <= 5; i++) {
			if (rq.getParameter("edu_no" + i) != null) {
				eduList.add(new Edu(Integer.parseInt(rq.getParameter("no")),
						Integer.parseInt(rq.getParameter("edu_no" + i)), rq.getParameter("edu_content" + i)));
			}
		}
		eduList = eduService.InsertAllEdu(eduList, no);

		Date enter_date = null;
		if (rq.getParameter("enter_date") != null)
			enter_date = Datering(rq, rq.getParameter("enter_date"));
		Date resign_date = null;
		if (rq.getParameter("resign_date") != null && rq.getParameter("resign_date") != "")
			resign_date = Datering(rq, rq.getParameter("resign_date"));

		personnel = new Personnel(Integer.parseInt(rq.getParameter("no")), rq.getParameter("name"),
				Integer.parseInt(rq.getParameter("job_position")), Integer.parseInt(rq.getParameter("salary_class")),
				0, Integer.parseInt(rq.getParameter("mini_no")),
				Integer.parseInt(rq.getParameter("dept_no")), enter_date, resign_date);
		personnel = personalService.modifyPersonnel(personnel);
		rq.setAttribute("money", toString(personnel.getMoney()));
		rq.setAttribute("eduList", eduList);
		rq.setAttribute("workexperience", weList);
		rq.setAttribute("personnelList", personnelList);
		rq.setAttribute("personnel", personnel);
		return MAIN_FORM;
	}

	private Date Datering(HttpServletRequest rq, Object value) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dating = null;
		try {
			String param = (String) value;
			dating = new Date(sdf.parse(param).getTime());
		} catch (Exception e) {
			System.out.println("error : MainHandler.Datering()");
			System.out.println(e.getMessage());
		}
		return dating;
	}
	
	 public String toString (int sub) {
		 String result = String.format("%,d", sub);
		 return result;
		 }
}
