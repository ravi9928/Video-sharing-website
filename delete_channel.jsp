<%-- 
    Document   : delete_channel
    Created on : 2 Jan, 2022, 1:09:13 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int sts= 1;
            String code = request.getParameter("cid");
            try {
                if (code.length() == 0) {
                    response.sendRedirect("youtube.jsp?error=1");
                } else {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                    Statement st = cn.createStatement();
                    if(st.executeUpdate("update channel1 set status="+sts+" where code='"+code+"'")>0){
                        Statement st1 = cn.createStatement();
                        if(st1.executeUpdate("update video set status="+sts+" where ch_code='"+code+"'")>0){
                          response.sendRedirect("channel_view.jsp?channel_deleted=1");
                        }
                    }
                    else{
                        response.sendRedirect("channel_view.jsp?not_deleted=1");
                    }
                }
            } catch (Exception e) {
                out.println(e.getMessage());
           }
%>
    </body>
</html>
