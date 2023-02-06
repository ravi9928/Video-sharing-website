<%-- 
    Document   : edit_channel_ret
    Created on : 30 Jan, 2022, 11:42:18 AM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String c_code = request.getParameter("cid");
    String cname = request.getParameter("cname");
    String abt = request.getParameter("about");
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
            
                    PreparedStatement ps = cn.prepareStatement("update channel1 set cname=?,about=? where code=?");
                    ps.setString(1, cname);
                    ps.setString(2, abt);
                    ps.setString(3, c_code);
                    if (ps.executeUpdate() > 0) {
                        response.sendRedirect("edit_channel.jsp?cid="+c_code+"&success=1");
                    } else {
                        response.sendRedirect("edit_channel.jsp?cid="+c_code+"&error=1");
                    }
            
        } catch (SQLException e) {
            out.println(e.getMessage());
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    }

%>
