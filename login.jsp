<%-- 
    Document   : login_ret
    Created on : 14 Nov, 2021, 12:22:58 PM
    Author     : raviraj singh
--%>
<%@page contentType="text/html" import= "java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email;
            String pass;
            email = request.getParameter("email");
            pass = request.getParameter("pass");
            if (email.length() == 0 || pass.length() == 0) {
                response.sendRedirect("index.jsp?empty=1");
            } else {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
                    if (rs.next()) {
                        if (rs.getString("password").equals(pass)) {
                            Cookie c = new Cookie("login", email);
                            c.setMaxAge(7200);
                            response.addCookie(c);
                            response.sendRedirect("youtube.jsp");
                        } else {
                            response.sendRedirect("index.jsp?invalid_pass=1");
                        }
                    } else {
                        response.sendRedirect("index.jsp?invalid_email=1");
                    }
                } catch (SQLException e) {
                    out.println(e.getMessage());
                }
            }
        %>

    </body>
</html>
