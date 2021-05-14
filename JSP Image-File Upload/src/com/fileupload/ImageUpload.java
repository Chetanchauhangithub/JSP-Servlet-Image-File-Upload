package com.fileupload;
import java.io.File;
import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.fileupload.dao.FilesDAO;


@WebServlet("/ImageUpload")
public class ImageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public String path = "C:\\Users\\Rivigo\\git\\JSP-Servlet-Image-File-Upload\\JSP Image-File Upload\\Images\\";
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
		
		try {
			List<FileItem> images = upload.parseRequest(request);
			
			
			for(FileItem img: images) {
				String name= img.getName();
				
				name = name.substring(name.lastIndexOf("\\")+1);
									
				new FilesDAO().addFileDetails(new Files(name));
				img.write(new File(path+name));
				//System.out.println("File Name: "+ name);
			}			
			
		} catch (FileUploadException e) {
			
			e.printStackTrace();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
