<%-- 
    Document   : video_insert
    Created on : 31 Dec, 2021, 1:33:29 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
       <%
            int sn = 0;
             int status = 0;
            String code = "";
            String title = request.getParameter("title");
            String cat = request.getParameter("cat");
            String dec = request.getParameter("des");
            String ch_code = request.getParameter("cid");
            try {
                if (title.length() == 0 || cat.length() == 0 || dec.length() == 0 || ch_code.length() == 0) {
                    response.sendRedirect("video_add.jsp?cid='"+ch_code+"'&error=1");
                } else {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select * from video where sn=(select max(sn) from video)");
                    if (rs.next()) {
                        sn = rs.getInt("sn");
                    }
                    sn++;
                        java.sql.Timestamp dte = new java.sql.Timestamp(new java.util.Date().getTime());
                         String dt = dte.toString();
                        Random rand = new Random();
                        code = rand.nextInt(900000) + 100000 + "";
                        code = code + "_" + sn;

                        PreparedStatement ps = cn.prepareStatement("insert into video values(?,?,?,?,?,?,?,?)");
                         ps.setInt(1, sn);
                        ps.setString(2, code);
                        ps.setString(3, title);
                        ps.setString(4, dec);
                        ps.setString(5, cat);
                        ps.setString(6, ch_code);
                        ps.setInt(7, status);
                        ps.setString(8, dt);
                        if (ps.executeUpdate() > 0) {
                            response.sendRedirect("video_add.jsp?cid="+ch_code+"&v_id="+code);
                        } else {
                            response.sendRedirect("video_add.jsp?cid='"+ch_code+"'&error=1");
                        }
                }
            } catch (SQLException e) {
                out.println(e.getMessage());
           }
%>
