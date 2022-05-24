package user.command;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import mvc.command.CommandHandler;

public class UserJoinHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/userForm.jsp";
	private String filename;

	@Override
	public String process(HttpServletRequest rq, HttpServletResponse rp) throws Exception {

		if (rq.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(rq, rp);

		} else if (rq.getMethod().equalsIgnoreCase("GET")) {
			return processForm(rq, rp);
		} else
			return null;

	}

	private String processSubmit(HttpServletRequest rq, HttpServletResponse rp){
		/*
		 * C:\Users\i\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\
		 * tmp0\wtpwebapps\POM \ upload
		 */

		String uploadPath = rq.getRealPath("/upload");
		System.out.println("uploadPath : " + uploadPath);

		int size = 10 * 1024 * 1024; // byte
		String filename = "";
		String origfilename = "";

		try {
			MultipartRequest multi = new MultipartRequest(rq, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
			Enumeration<String> files = multi.getFileNames();
			String file = files.nextElement();
			filename = multi.getFilesystemName(file);
			origfilename = multi.getOriginalFileName(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		rq.setAttribute("img", filename);
		return FORM_VIEW;
	}

	private String processForm(HttpServletRequest rq, HttpServletResponse rp) throws IOException {

		return FORM_VIEW;
	}
}
