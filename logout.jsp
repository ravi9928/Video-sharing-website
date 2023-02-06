<%-- 
    Document   : logout
    Created on : 6 Jan, 2022, 2:35:43 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*" pageEncoding="UTF-8"%>
<%
    Cookie c[] = request.getCookies();
    String email = null;
    try {
        for (int i = 0; i < c.length; i++) {
            if (c[i].getName().equals("login")) {
                email = c[i].getValue();
                c[i].setMaxAge(0);
                response.addCookie(c[i]);
                response.sendRedirect("index.jsp");
                break;
            }
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>