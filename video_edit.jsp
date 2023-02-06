<%-- 
    Document   : video_edit
    Created on : 27 Feb, 2022, 1:41:41 AM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*" pageEncoding="UTF-8"%>
<%
    String vcode = request.getParameter("vcode");
    String title = request.getParameter("title");
    String cat = request.getParameter("cat");
    String dec = request.getParameter("des");
    String ch_code = request.getParameter("cid");
    try {
        if (title.length() == 0 || cat.length() == 0 || dec.length() == 0 || ch_code.length() == 0) {
            response.sendRedirect("myvideos.jsp?cid="+ch_code+"&error=1");
        } else {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
            PreparedStatement ps = cn.prepareStatement("update video set title=?,description=?,category=? where code=?");
            ps.setString(1, title);
            ps.setString(2, dec);
            ps.setString(3, cat);
            ps.setString(4, vcode);
            if (ps.executeUpdate() > 0) {
                response.sendRedirect("myvideos.jsp?cid="+ch_code+"&updated=1");
            } else {
                response.sendRedirect("myvideos.jsp?cid="+ch_code+"&error=1");
            }
        }
    } catch (SQLException e) {
        response.sendRedirect("myvideos.jsp?cid="+ch_code+"&wrong=1");
    }
    catch (Exception e) {
        response.sendRedirect("myvideos.jsp?cid='" +ch_code+ "'&wrong=1");
    }
%>
