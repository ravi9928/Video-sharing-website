<%-- 
    Document   : comment
    Created on : 4 Jan, 2022, 9:48:12 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
    String ucode = "";
    String uname= "";
    String email = null;
    String comm = request.getParameter("comment");
    String vcode = request.getParameter("vcode");
    String code = "";
    int sn = 0;
    int status = 0;
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
                uname = rs.getString("name");
            }
            if (comm.length() == 0 || vcode.length() == 0) {
                response.sendRedirect("youtube.jsp?error=1");
            } else {
                Statement st1 = cn.createStatement();
                ResultSet rs1 = st1.executeQuery("select * from comment where sn=(select max(sn) from comment)");
                if (rs1.next()) {
                    sn = rs1.getInt("sn");
                }
                sn++;
                java.sql.Timestamp dte = new java.sql.Timestamp(new java.util.Date().getTime());
                String dt = dte.toString();
                Random rand = new Random();
                code = rand.nextInt(900000) + 100000 + "";
                code = code + "_" + sn;

                PreparedStatement ps = cn.prepareStatement("insert into comment values(?,?,?,?,?,?,?,?)");
                ps.setInt(1, sn);
                ps.setString(2, code);
                ps.setString(3, vcode);
                ps.setString(4, ucode);
                ps.setString(5, uname);
                ps.setString(6, comm);
                ps.setInt(7, status);
                ps.setString(8, dt);
                if (ps.executeUpdate() > 0) {
                    out.print("success");
                } else {
                    response.sendRedirect("youtube.jsp?comment_error=1");
                }
            }
        } catch (SQLException e) {
            out.println(e.getMessage());
        }
        catch (Exception e) {
            out.println(e.getMessage());
        }
    }

%>
