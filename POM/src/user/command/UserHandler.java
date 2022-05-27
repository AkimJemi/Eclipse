package user.command;

import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.model.Paging;
import mvc.command.CommandHandler;
import personnel.model.Personnel;
import personnel.service.PersonnelService;
import user.model.User;
import user.service.UserService;

public class UserHandler implements CommandHandler {
	private final static String MAIN_FORM = "WEB-INF/view/main.jsp";
	private UserService userService = new UserService();
	private User user = new User();
	private PersonnelService personalService = new PersonnelService();

	@Override
	public String process(HttpServletRequest rq, HttpServletResponse rp) throws Exception {
		ArrayList<Personnel> personnelList = new ArrayList<Personnel>();
		String no = null;
		if (rq.getParameter("init") != null)
			return MAIN_FORM;

		if (rq.getParameter("searchField") != null && rq.getParameter("searchField") != "") {
			int search = Integer.parseInt(rq.getParameter("search"));
			String searchField = rq.getParameter("searchField");
			int startPage = 1;
			if (rq.getParameter("startPage") != null)
				startPage =Integer.parseInt(rq.getParameter("startPage"));
				
			int currentPage = 1;
			if(rq.getParameter("currentPage") !=null)
			currentPage = Integer.parseInt(rq.getParameter("currentPage"));
			
			
			int total = personalService.getTotalPage(search,searchField);
			
			Paging paging = new Paging(total, startPage, currentPage);
			
			rq.setAttribute("search", search);
			rq.setAttribute("searchField", searchField);
			rq.setAttribute("paging", paging);
			if (Integer.parseInt(rq.getParameter("search")) == 9) {
				search = 9;
				rq.setAttribute("searchError2", Boolean.TRUE);
				return MAIN_FORM;
			}
			personnelList = personalService.getSearchPersonnel(search, searchField ,paging);
		}
		rq.setAttribute("personnelList", personnelList);

		if (rq.getParameter("choose") != null) {
			if (rq.getParameter("choose").equalsIgnoreCase("personnel"))
				rq.setAttribute("choose", Boolean.TRUE);
			else
				rq.setAttribute("choose", Boolean.FALSE);
		}

		if (rq.getParameter("modifyUser") != null)
			rq.setAttribute("modifyUser", Boolean.TRUE);
		
		if (rq.getParameter("no") != null && rq.getParameter("no") != "") {
			no = rq.getParameter("no");
			rq.setAttribute("no", no);
			user = userService.getUser(user, Integer.parseInt(no));
			String uploadPath = rq.getRealPath("/upload/2022_상반기_증명사진");
			String filename = user.getFilename();
			rq.setAttribute("img", filename);
			rq.setAttribute("user", user);
		} else if (rq.getParameter("NoSummit") != null) {
			System.out.println("NoSummit");
		} else {
//			rq.setAttribute("wrongRoute", Boolean.TRUE);
//			return MAIN_FORM;
		}

		if (rq.getMethod().equalsIgnoreCase("POST"))
			return processSubmit(rq, rp);
		else if (rq.getMethod().equalsIgnoreCase("GET"))
			return processForm(rq, rp);
		else
			return null;
	}

	private String processForm(HttpServletRequest rq, HttpServletResponse rs) throws SQLException {
		
		return MAIN_FORM;
	}

	private String processSubmit(HttpServletRequest rq, HttpServletResponse rs) throws SQLException {
		Date school_out = null;
		if (rq.getParameter("school_out") != null)
			school_out = Datering(rq, rq.getParameter("school_out"));
		Date disabled_day = null;
		if (rq.getParameter("disabled_day") != null)
			disabled_day = Datering(rq, rq.getParameter("disabled_day"));
		Date license_day = null;
		if (rq.getParameter("license_day") != null)
			license_day = Datering(rq, rq.getParameter("license_day"));

		user = new User(Integer.parseInt(rq.getParameter("no")), rq.getParameter("filename"),
				rq.getParameter("filerealname"), rq.getParameter("name"), Integer.parseInt(rq.getParameter("reg_num")),
				rq.getParameter("phone"), rq.getParameter("addr"), rq.getParameter("email"),
				rq.getParameter("school_name"), rq.getParameter("school_major"), school_out,
				Integer.parseInt(rq.getParameter("tall")), Integer.parseInt(rq.getParameter("weight")),
				rq.getParameter("eye_l"), rq.getParameter("eye_r"), rq.getParameter("gender"), rq.getParameter("marry"),
				rq.getParameter("disabled"), Integer.parseInt(rq.getParameter("disabled_grade")), disabled_day);
		user = userService.modifyUser(user);
		rq.setAttribute("user", user);
		return MAIN_FORM;
	}

	private Date Datering(HttpServletRequest rq, Object value) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dating = null;
		try {
			String param = (String) value;
			dating = new Date(sdf.parse(param).getTime());
		} catch (Exception e) {
			System.out.println("error : Datering");
			System.out.println(e.getMessage());
		}
		return dating;
	}

}
