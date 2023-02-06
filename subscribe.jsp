<%-- 
    Document   : subscribe
    Created on : 12 Jan, 2022, 7:11:02 PM
    Author     : raviraj singh
--%>
<%@page contentType="text/html" import= "java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
    String ucode = "";
    int flag = 0;
    int status = 0;
    
    String email = null;
    String ch_code = request.getParameter("ccode");
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
            ResultSet rs3 = st.executeQuery("select * from channel1 where code='" + ch_code + "'");
            while (rs3.next()) {
                if (rs3.getString("user_code").equals(ucode)) {
                    flag=1;
                    response.sendRedirect("watch.jsp?vcode=" + vcode + "&unsuccessful=1");
                }
            }
            
            if (flag == 0) {
                ResultSet rs1 = st.executeQuery("select * from subscribe where ch_code='" + ch_code + "' AND ucode='" + ucode + "'");
                if (rs1.next()) {
                    PreparedStatement ps1 = cn.prepareStatement("delete from subscribe where ch_code='" + ch_code + "' AND ucode='" + ucode + "'");
                    if (ps1.executeUpdate() > 0) {
                        out.print("success");
                    } else {
                        out.print("error");
                    }
                } else {
                    if (ch_code == "") {
                        out.println("error");
                    } else {
                        
                        java.sql.Timestamp dte = new java.sql.Timestamp(new java.util.Date().getTime());
                        String dt = dte.toString();
                        PreparedStatement ps = cn.prepareStatement("insert into subscribe values(?,?,?,?)");
                        ps.setString(1, ucode);
                        ps.setString(2, ch_code);
                        ps.setInt(3, status);
                        ps.setString(4, dt);
                        if (ps.executeUpdate() > 0) {
                            out.print("success");
                        } else {
                            out.print("unsuccess");
                        }
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
