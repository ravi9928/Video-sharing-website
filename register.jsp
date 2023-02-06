<%-- 
    Document   : register
    Created on : 8 Dec, 2021, 8:27:19 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int sn = 0;
            String code = "";
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            try {
                if (name.length() == 0 || email.length() == 0 || pass.length() == 0) {
                    response.sendRedirect("index.jsp?empty=1");
                } else {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select * from user where sn=(select max(sn) from user)");
                    if (rs.next()) {
                        sn = rs.getInt("sn");
                    }
                    sn++;
                    Statement st2 = cn.createStatement();
                    ResultSet rs2 = st2.executeQuery("select * from user where email='" + email + "'");
                    if (rs2.next()) {
                        response.sendRedirect("index.jsp?email_existed=1");
                    } else {
                        Random rand = new Random();
                        code = rand.nextInt(900000) + 100000 + "";
                        code = code + "_" + sn;

                        PreparedStatement ps = cn.prepareStatement("insert into user values(?,?,?,?,?)");
                        ps.setInt(1, sn);
                        ps.setString(2, code);
                        ps.setString(3, name);
                        ps.setString(4, email);
                        ps.setString(5, pass);
                        if (ps.executeUpdate() > 0) {
                            response.sendRedirect("youtube.jsp?reg_success=1");
                        } else {
                            response.sendRedirect("index.jsp?error=1");
                        }
                    }
                }
            } catch (SQLException e) {
                out.println(e.getMessage());
           }

           // ($sn,'$code','$fname','$lname','$email','$pass','$dob','$gender','$caste','$religion','$state','$cont','$abt') %>
    </body>
</html>
