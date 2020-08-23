package com.bksoftwarevn.itstudent.controller.upload_file;

import com.bksoftwarevn.itstudent.model.JsonResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@WebServlet(name = "UploadFile", value = "/upload-file/*")
@MultipartConfig(fileSizeThreshold = 1024*1024*2, //nếu kích thước của file upload lên lớn hơn định nghĩa thì hệ thống tự ghi file vào trực tiếp ổ cứng ko thông qua bộ đệm
        maxFileSize = 1024*1024*50, //kích thước tối đa của 1 file
        maxRequestSize = 1024*1024*50) //kích thước tối đa của 1 request

public class UploadFile extends HttpServlet {
    private JsonResult jsonResult = new JsonResult();
    private static final String SAVE_DIRECTORY = "file-upload";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rs = "";
        try {
            Collection<Part> partCollection = request.getParts(); //chứa các file mà mình upload lên
            List<String> list = new ArrayList<>();
            long time = new Date().getTime();
            for (Part part : partCollection) {
                String fileName = getFileName(part);
                if (fileName.length()>0) {
                    //lấy ra đường dẫn thư mục upload
                    String filePath = getFolderUpload(time).getAbsolutePath() + File.separator + fileName;
                    System.out.println("Write file: "+filePath);
                    part.write(filePath);
                    list.add(SAVE_DIRECTORY+"/" + time +"/"+fileName);
                }
            }
            rs = jsonResult.jsonSuccess(list);
        } catch (Exception e) {
            e.printStackTrace();
            rs = jsonResult.jsonFail("Upload fail");
        }
        response.getWriter().write(rs);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    private File getFolderUpload(long time) {
        String appPath = "C:\\Server\\apache-tomee-plume-8.0.0\\webapps\\"+ SAVE_DIRECTORY + "\\" + time;
        File folderUpload = new File(appPath);
        if(!folderUpload.exists()) {
            folderUpload.mkdirs();
        }
        return folderUpload;
    }
    private String getFileName(Part part) {
        String fileNameRs = "";
        //thuộc tính header của đối tượng part tương ứng với key content-disposition sẽ chứa 1 chuỗi có định dạng:
        //form-data; name="file"; filename="C:\file1.jpg"
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s: items) {
            if(s.trim().startsWith("filename")) {
                fileNameRs = s.substring(s.indexOf("=")+2, s.length()-1);
                fileNameRs = fileNameRs.replace("\\", "/");
                int i = fileNameRs.lastIndexOf("/");
                fileNameRs = fileNameRs.substring(i+1);
            }
        }
        return fileNameRs;
    }
}
