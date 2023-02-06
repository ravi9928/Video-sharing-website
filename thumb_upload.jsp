<%-- 
    Document   : video_insert
    Created on : 31 Dec, 2021, 1:33:29 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String ccode= null;
           String vcode = request.getParameter("vd_id");
            String email = null;
            Cookie c[] = request.getCookies();
            for (int i = 0; i < c.length; i++) {
                if (c[i].getName().equals("login")) {
                    email = c[i].getValue();
                    break;
                }
            }
            if (email == null) {
                response.sendRedirect("index.jsp?not_login=1");
            } else {
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                    Statement st = cn.createStatement();
                     Statement st2 = cn.createStatement();
                    ResultSet rs2 = st2.executeQuery("select * from video where code='" + vcode + "'");
                    if (rs2.next()) {
                        ccode=rs2.getString("ch_code");
                    }
                   
                    /*
                    Statement st1 = cn.createStatement();
                    ResultSet rs1 = st1.executeQuery("select * from channel1 where user_code='" + user_code + "'");
                    if (rs1.next()) {
                        code = rs1.getString("code");
                    }*/

                    String contentType = request.getContentType();

                    String imageSave = null;
                    byte dataBytes[] = null;
                    String saveFile = null;
                    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                        DataInputStream in = new DataInputStream(request.getInputStream());
                        int formDataLength = request.getContentLength();
                        dataBytes = new byte[formDataLength];
                        int byteRead = 0;
                        int totalBytesRead = 0;
                        while (totalBytesRead < formDataLength) {
                            byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                            totalBytesRead += byteRead;
                        }

                        String file = new String(dataBytes);
                        /*saveFile = file.substring(file.indexOf("filename=\"") + 10);
                         saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
                         saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));*/
                        saveFile = vcode + ".jpg";
// out.print(dataBytes);
                        int lastIndex = contentType.lastIndexOf("=");
                        String boundary = contentType.substring(lastIndex + 1, contentType.length());
// out.println(boundary);
                        int pos;
                        pos = file.indexOf("filename=\"");
                        pos = file.indexOf("\n", pos) + 1;
                        pos = file.indexOf("\n", pos) + 1;
                        pos = file.indexOf("\n", pos) + 1;
                        int boundaryLocation = file.indexOf(boundary, pos) - 4;
                        int startPos = ((file.substring(0, pos)).getBytes()).length;
                        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
                        try {
                            FileOutputStream fileOut = new FileOutputStream(request.getRealPath("/") + "/videos/" + saveFile);

// fileOut.write(dataBytes);
                            fileOut.write(dataBytes, startPos, (endPos - startPos));
                            fileOut.flush();
                            fileOut.close();
                            response.sendRedirect("video_add.jsp?cid="+ccode+"&upload_success=1");
                        } catch (Exception e) {
                            //response.sendRedirect("index.jsp?img_error=1");
                            out.println(e.getMessage());
                        }
                }
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            }
        %>
    </body>
</html>
