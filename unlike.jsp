<%-- 
    Document   : unlike
    Created on : 6 Jan, 2022, 6:12:21 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
    String ucode = "hello";
    String email = null;
    String vcode = request.getParameter("vcode");
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
            ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
            if (rs.next()) {
                ucode = rs.getString("code");
            }
            if (vcode == "") {
                out.println("error");
            } else {
                ResultSet rs1 = st.executeQuery("select * from unlike where vcode='" + vcode + "' AND ucode='" + ucode + "'");
                if (rs1.next()) {
                    PreparedStatement ps1 = cn.prepareStatement("delete from unlike where vcode='" + vcode + "' AND ucode='" + ucode + "'");
                    if (ps1.executeUpdate() > 0) {
                        out.print("dislike_remove");
                    } else {
                        out.print("dlt_error");
                    }
                } else {
                    Statement st1 = cn.createStatement();
                    ResultSet rs2 = st1.executeQuery("select * from like1 where vcode='" + vcode + "' AND ucode='" + ucode + "'");
                    if (rs2.next()) {
                        PreparedStatement ps1 = cn.prepareStatement("delete from like1 where vcode='" + vcode + "' AND ucode='" + ucode + "'");
                        if (ps1.executeUpdate() > 0) {
                            out.print("like_remove");
                        }
                    }
                    PreparedStatement ps = cn.prepareStatement("insert into unlike values(?,?)");
                    ps.setString(1, vcode);
                    ps.setString(2, ucode);
                    if (ps.executeUpdate() > 0) {
                        out.print("success");
                    } else {
                        out.print("unsuccess");
                    }
                }
            }
        } catch (SQLException e) {
            out.println(e.getMessage());
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    }

%>
