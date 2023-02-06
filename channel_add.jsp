<%-- 
    Document   : channel_add.jsp
    Created on : 30 Dec, 2021, 12:11:28 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*,java.util.*,java.io.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
                int sn = 0;
                int status = 0;
                String code = "";
                String user_code = "";
                String cname = request.getParameter("cname");
                String about = request.getParameter("about");
                try {
                    if (cname.length() == 0 || about.length() == 0) {
                        response.sendRedirect("youtube.jsp?empty=1");
                    } else {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                        Statement st = cn.createStatement();
                        ResultSet rs = st.executeQuery("select * from channel1 where sn=(select max(sn) from channel1)");
                        if (rs.next()) {
                            sn = rs.getInt("sn");
                        }
                        sn++;
                        Statement st2 = cn.createStatement();
                        ResultSet rs2 = st2.executeQuery("select * from user where email='" + email + "'");
                        if (rs2.next()) {
                            user_code = rs2.getString("code");
                        }
                        java.sql.Timestamp dte = new java.sql.Timestamp(new java.util.Date().getTime());
                        String dt = dte.toString();
                        Random rand = new Random();
                        code = rand.nextInt(900000) + 100000 + "";
                        code = code + "_" + sn;
                        //  java.util.Date date = new java.util.Date();

                        PreparedStatement ps = cn.prepareStatement("insert into channel1 values(?,?,?,?,?,?,?)");
                        ps.setInt(1, sn);
                        ps.setString(2, code);
                        ps.setString(3, cname);
                        ps.setString(4, about);
                        ps.setString(5, user_code);
                        ps.setInt(6, status);
                        ps.setString(7, dt);
                        if (ps.executeUpdate() > 0) {
                            response.sendRedirect("youtube.jsp?success=1");

                        } else {
                            response.sendRedirect("youtube.jsp?error=1");
                        }
                    }
                } catch (SQLException e) {
                    out.println(e.getMessage());
                } catch (NullPointerException e) {
                    out.println(e.getMessage());
                }

            }
        %>
    </body>
</html>
