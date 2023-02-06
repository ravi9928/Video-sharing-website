<%-- 
    Document   : index
    Created on : 27 Dec, 2021, 6:32:08 PM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>youtube</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- font CSS -->
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js-->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <!--webfonts-->
        <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <!--//webfonts--> 
        <!--animate-->
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
        <script src="js/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
        <!--//end-animate-->
        <!-- chart -->
        <script src="js/Chart.js"></script>
        <!-- //chart -->
        <!--Calender-->
        <script src="js/underscore-min.js" type="text/javascript"></script>
        <script src= "js/moment-2.2.1.js" type="text/javascript"></script>

        <script src="js/site.js" type="text/javascript"></script>
        <!--End Calender-->
        <!-- Metis Menu -->
        <script src="js/metisMenu.min.js"></script>
        <script src="js/custom.js"></script>
        <link href="css/custom.css" rel="stylesheet">
        <!--//Metis Menu -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <script>
            $(document).ready(function(){
            $(".navbar-collapse").fadeOut(1);
            $("#showLeftPush").click(function(){
            $(".navbar-collapse").fadeIn(20);
            });
            });
        </script>

    </head> 
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
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                Statement st = cn.createStatement();
    %>
    <body class="">
        <div class="main-content">
            <!--left-fixed -navigation-->
            <div class="sidebar" role="navigation">
                <div class="navbar-collapse">
                    <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="index.jsp" class="active"><i class="fa fa-home nav_icon"></i>Home</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-caret-square-o-right nav_icon"></i>Explore<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li>
                                        <a href="videos.html">Videos</a>
                                    </li>
                                    <li>
                                        <a href="shorts.html">Shorts</a>
                                    </li>
                                </ul>
                                <!-- /nav-second-level -->
                            </li>
                            <!-- <li class="">
                                <a href="#"><i class="fa fa-user nav_icon"></i>SignIn<span class="fa arrow"></span></a>
                            </li>
                           <li>
                                <a href="widgets.html"><i class="fa fa-th-large nav_icon"></i>Widgets <span class="nav-badge-btm">08</span></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li>
                                        <a href="inbox.html">Inbox <span class="nav-badge-btm">05</span></a>
                                    </li>
                                    <li>
                                        <a href="compose.html">Compose email</a>
                                    </li>
                                </ul>
                            <!-- //nav-second-level
                        </li>
                        <li>
                            <a href="tables.html"><i class="fa fa-table nav_icon"></i>Tables <span class="nav-badge">05</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-check-square-o nav_icon"></i>Forms<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="forms.html">Basic Forms <span class="nav-badge-btm">07</span></a>
                                </li>
                                <li>
                                    <a href="validation.html">Validation</a>
                                </li>
                            </ul>
                            <!-- //nav-second-level 
                        </li> -->
                            <li>
                                <a href="#"><i class="fa fa-file-text-o nav_icon"></i>User</a>
                                <ul class="nav nav-second-level collapse">
                                    <li>
                                        <a href="login.html"> <i class="fa fa-user nav_icon"></i> Login</a>
                                    </li>
                                    <li>
                                        <a href="signup.html"><i class="fa fa-user nav_icon"></i>SignUp</a>
                                    </li>
                                </ul>
                                <!-- //nav-second-level -->
                            </li>
                            <li>-----------------------------------------------------------------</li>
                            <li>
                                <a href="charts.html" class="chart-nav"><i class="fa fa-music nav_icon"></i>Music</a>
                            </li>
                            <li>
                                <a href="charts.html" class="chart-nav"><i class="fa fa-film nav_icon"></i>Movies</a>
                            </li>
                            <li>
                                <a href="charts.html" class="chart-nav"><i class="fa fa-gamepad nav_icon"></i>Gaming</a>
                            </li>
                            <li>
                                <a href="charts.html" class="chart-nav"><i class="fa fa-trophy nav_icon"></i>Sports</a>
                            </li>
                            <li>
                                <a href="charts.html" class="chart-nav"><i class="fa fa-file-text-o nav_icon"></i>News</a>
                            </li>
                        </ul>
                        <!-- //sidebar-collapse -->
                    </nav>
                </div>
            </div>
            <!--left-fixed -navigation-->
            <!-- header-starts -->
            <div class="sticky-header header-section ">
                <div class="header-left">
                    <!--toggle button start-->
                    <button id="showLeftPush"><i class="fa fa-bars"></i></button>
                    <!--toggle button end-->
                    <!--logo -->
                    <div class="logo">
                        <a href="index.jsp">
                            <h2><i class="fa fa-youtube" style="color:#101010"></i></h2>
                            <h1>Youtube.com</h1>
                        </a>
                    </div>
                    <!--//logo-->
                    <!--search-box-->
                    <div class="search-box">
                        <form class="input">
                            <input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
                            <label class="input__label" for="input-31">
                                <svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                </svg>
                            </label>
                        </form>
                    </div><!--//end-search-box-->
                    <div class="clearfix"> </div>
                </div>
                <div class="header-right">
                    <div class="profile_details_left"><!--notifications of menu start -->
                        <!--  <ul class="nofitications-dropdown">
                              <li class="dropdown head-dpdn">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i></a>
                                  <ul class="dropdown-menu">
                                  </ul>
                              </li>
                              <li class="dropdown head-dpdn">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i></a>
                                  <ul class="dropdown-menu">
                                  </ul>
                              </li>	
                              <li class="dropdown head-dpdn">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i></a>
                                  <ul class="dropdown-menu">
                                  </ul>
                              </li>	
                          </ul>-->
                        <div class="clearfix"> </div>
                    </div>
                    <!--notification menu end -->
                    <div class="profile_details">		
                        <ul>
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <div class="profile_img">	
                                        <span class="prfil-img"><img src="images/avatar.png" alt=""> </span> 
                                        <div class="user-name">
                                            <button class="btn btn-default">Sign In</button>
                                        </div>
                                        <i class="fa fa-angle-down lnr"></i>
                                        <i class="fa fa-angle-up lnr"></i>
                                        <div class="clearfix"></div>	
                                    </div>	
                                </a>
                                <ul class="dropdown-menu drp-mnu">
                                    <li> <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1"><i class="fa fa-user"></i>Login</a> </li> 
                                    <li> <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-user"></i>Register</a> </li> 
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>				
                </div>
                <div class="clearfix"> </div>	
            </div>
            <script>
                $(document).ready(function() {
                $('#myModal').on('shown.bs.modal', function () {
                $('#myInput').trigger('focus');
                });
                });
            </script>
            <!-- Register Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ragister to youtube</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="register.jsp" method="post">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="mb-2">Name </label>
                                    <input type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                    <small id="emailHelp" class="form-text text-muted"></small>
                                </div>
                                <div class="form-group">
                                    <label class="mb-2">Email address</label>
                                    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label class="mb-2">Password</label>
                                    <input type="password" class="form-control" name="pass" placeholder="" required="">
                                </div>
                                <a href="" class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#exampleModal1">already have an account?</a>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary submit mb-4">Sign Up</button><br><br>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--login model-->
            <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel1">Login</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="login.jsp" method="post">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="mb-2">Email address</label>
                                    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label class="mb-2">Password</label>
                                    <input type="password" class="form-control" name="pass" id="exampleInputPassword1" placeholder="" required="">
                                </div>
                                <div class="form-check mb-2">
                                </div>
                                <a href="" class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#exampleModal">Create account ton youtube?</a>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary submit mb-4">Login</button><br><br>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--for login model-->
            <div class="modal fade" id="forloginModel">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" style="color:#ff3333">Want to add your opinion?</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            Sign in to make your opinion count.
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#exampleModal1">Sign In</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal End-->
            <!-- //header-ends -->
            <!-- main content start-->
            <div id="page-wrapper">
                <div class="main-page">
                    <!-- videos will show here-->
                    <!-- videos will show here-->
                    <div class="row" style="margin-top:-10px">
                        <script>
                            $(document).on("click","#login_first",function(){
                            alert("Please login or create account");
                            });
                        </script>
                        <%
                            String vvcode = request.getParameter("vcode");
                            String channel_code = "";
                            String channel_name = "";
                            Statement st3 = cn.createStatement();
                            ResultSet rs4 = st3.executeQuery("select * from video where code='" + vvcode + "'");
                            if (rs4.next()) {
                                channel_code = rs4.getString("ch_code");
                            }
                            Statement st38 = cn.createStatement();
                            ResultSet rs56 = st38.executeQuery("select * from channel1 where code='" + channel_code + "'");
                            if (rs56.next()) {
                                channel_name = rs56.getString("cname");
                            }
                        %>
                        <div class="col-md-8">
                            <video class="card-img-top" controls="controls" autoplay style="width:800px;height:400px" poster="videos/<%out.print(vvcode);%>.jpg" width="300" height="250" >
                                <source src="videos/<%out.print(vvcode);%>.mp4" type="video/mp4">
                            </video>
                            <div class="row">
                                <div class="col-sm-12"><label><%out.print(rs4.getString("title"));%></label></div>
                                <div class="col-sm-12"><small><%out.print(rs4.getString("description"));%></small></div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2"><h4>2662 views</h4></div>
                                <div class="col-sm-5"><small><i class="fa fa-circle"></i> <%out.print(rs4.getString("date"));%></small></div>
                                <div class="col-sm-2">
                                    <%
                                        int like_count = 0;
                                        Statement st12 = cn.createStatement();
                                        ResultSet rs12 = st12.executeQuery("select * from like1 where vcode='" + vvcode + "'");
                                        while (rs12.next()) {
                                            like_count++;
                                        }
                                    %>
                                    <i class="fa fa-thumbs-up" data-dismiss="modal" data-toggle="modal" data-target="#forloginModel" style="font-size:20px;cursor:pointer"></i>&nbsp;<label><%=like_count%></label>
                                </div>
                                <div class="col-sm-2">
                                    <i class="fa fa-thumbs-down" data-dismiss="modal" data-toggle="modal" data-target="#forloginModel" style="font-size:20px;cursor:pointer"></i>
                                </div>
                                <div class="col-sm-1">
                                    <a><i class="fa fa-share-square-o" data-dismiss="modal" data-toggle="modal" data-target="#forloginModel" style="font-size:20px;cursor:pointer">&nbsp;Share</i></a>
                                </div>
                                <div class="col-sm-12"><br></div>
                            </div>
                            <table class="table table-borderless">
                                <tr style="border-bottom: 1px solid;" id="subscribe">
                                    <td> <img src="channel_images/<%=channel_code%>.jpg" class ="img-circle" style="width:40px;height:40px" alt="">&nbsp;&nbsp;<%=channel_name%>&nbsp;<i class="fa fa-check-circle"></i></td>
                                    <td colspan="3" align="right"><a class="btn btn-danger 1" data-dismiss="modal" data-toggle="modal" data-target="#forloginModel">Subscribe</a></td>
                                </tr>
                            </table>
                            <div class="row">
                                <p class="alert-danger"></p>
                                <p class="alert-success"></p>
                                <div class="col-md-1">
                                    <img src="images/avatar.png" class ="img-circle" style="width:40px;height:40px" alt="">
                                </div>
                                <div class="col-md-9">
                                    <input type="text" id="comment" name="comment" class="form-control">
                                    <small>Post your comment here</small>
                                </div>
                                <div class="col-md-2">
                                    <button type="button" class="btn btn-default 1" data-dismiss="modal" data-toggle="modal" data-target="#forloginModel">COMMENT</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12"><h3>All comments<br></h3></div>
                                        <%
                                            Statement st6 = cn.createStatement();
                                            ResultSet rs6 = st6.executeQuery("select * from comment where vcode='" + vvcode + "'");
                                            while (rs6.next()) {
                                                String ucode = rs6.getString("ucode");
                                                int status = rs6.getInt("status");
                                                if (status == 0) {
                                        %>  
                                <table class="table table-hover">
                                    <tr><td>
                                            <div class="col-md-1">&nbsp;</div>
                                            <div class="col-md-2">
                                                <img src="user_images/<%=ucode%>.jpg" class ="img-circle" style="width:40px;height:40px" alt="">
                                            </div>
                                            <div class="col-md-9">
                                                <h6><%=rs6.getString("uname")%></h6>
                                                <small><%=rs6.getString("comment")%></small>
                                            </div>
                                            <div class="col-md-12"></div>
                                        </td></tr>
                                </table>
                                <%
                                        }
                                    }
                                %>
                            </div>
                        </div>
                        <div class="col-md-4" style="margin-top:-10px">
                            <%
                                ResultSet rs2 = st.executeQuery("select * from video ORDER BY RAND()");
                                while (rs2.next()) {
                                    int status = rs2.getInt("status");
                                    if (status == 0) {
                                        String code = rs2.getString("code");
                                        String ccode = rs2.getString("ch_code");

                            %>  
                            <a href="watch.jsp?vcode=<%=code%>">
                                <div class="row" style="margin-top:1px">
                                    <div class="col-sm-5">
                                        <div class="card">
                                            <div class="card-body">
                                                <video class="card-img-top" muted poster="videos/<%out.print(code);%>.jpg" width="150" height="100" >
                                                    <source src="videos/<%out.print(code);%>.mp4" type="video/mp4">
                                                </video>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>

                                    </div>
                                    <div class="col-sm-7">
                                        <table class="table table-borderless">
                                            <tr><td>
                                                    <label>
                                                        <%out.print(rs2.getString("title"));%>
                                                    </label>
                                                </td></tr>
                                                <%
                                                    Statement st4 = cn.createStatement();
                                                    ResultSet rs5 = st4.executeQuery("select * from channel1 where code='" + ccode + "'");
                                                    while (rs5.next()) {
                                                        out.print("<tr><td rowspan=2><small>" + rs5.getString("cname") + "<i class='fa fa-right'></i></small></td></tr>");
                                                    }
                                                %>
                                        </table>
                                    </div>
                                </div>
                            </a>
                            <%
                                    }
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer-->
            <div class="footer">
                <p>&copy; 2022 Youtube. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">Raviraj singh</a></p>
            </div>
            <!--//footer-->
        </div>
        <!-- Classie -->
        <script src="js/classie.js"></script>
        <script>
            var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
            showLeftPush = document.getElementById( 'showLeftPush' ),
            body = document.body;

            showLeftPush.onclick = function() {
            classie.toggle( this, 'active' );
            classie.toggle( body, 'cbp-spmenu-push-toright' );
            classie.toggle( menuLeft, 'cbp-spmenu-open' );
            disableOther( 'showLeftPush' );
            };


            function disableOther( button ) {
            if( button !== 'showLeftPush' ) {
            classie.toggle( showLeftPush, 'disabled' );
            }
            }
        </script>
        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!--//scrolling js-->
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.js"> </script>
        <%            } catch (SQLException e) {
                out.println(e.getMessage());
            }
        } else {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                Statement st = cn.createStatement();
                ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
                if (rs.next()) {
                    String user_code = rs.getString("code");
        %>
        <script>
            $(document).ready(function(){
            $(".btn.btn-default.1").click(function(){
            var comment=$("#comment").val();
            var vcode=$(this).attr("id");
            if(comment===""){
            $(".alert-danger").fadeIn(3);
            $(".alert-danger").html("Please enter a comment first...");
            $(".alert-danger").fadeOut(3000);
            }
            else{
            $.post(
            "comment.jsp",{comment:comment,vcode:vcode},function(data){
            if(data.trim()==="success"){
            $("#comment").val("");
            $(".alert-success").fadeIn(3);
            $(".alert-success").html("commented");
            $(".alert-success").fadeOut(3000);
            }
            else{
            $(".alert-success").fadeIn(3);
            $(".alert-success").html("comment unsuccessful");
            $(".alert-success").fadeOut(3000);
            }
            });
            }
            });
            });
            //for like

            $(document).on("click",".fa.fa-thumbs-up",function(){
            var vcode=$(this).attr("id");
            var a=$("#lcount").attr("rel");
            $.post(
            "like.jsp",{vcode:vcode},function(data){
            if(data.trim()==="success"){
            a++; 
            $(".fa.fa-thumbs-up").css("color","blue");
            $(".fa.fa-thumbs-down").css("color","black");
            $("#lcount").attr("rel",a);
            $("#lcount").html(a);
            }
            else if(data.trim()==="unlike"){
            a--;
            $(".fa.fa-thumbs-up").css("color","black");
            $("#lcount").attr("rel",a);
            $("#lcount").html(a);
            }
            });
            });
            //for unlike
            $(document).on("click",".fa.fa-thumbs-down",function(){
            var vcode=$(this).attr("id");
            $.post(
            "unlike.jsp",{vcode:vcode},function(data){

            if(data.trim()==="like_removesuccess" || data.trim()==="success"){
            $(".fa.fa-thumbs-down").css("color","blue");
            $(".fa.fa-thumbs-up").css("color","black");
            }
            else if(data.trim()==="dislike_remove"){
            $(".fa.fa-thumbs-down").css("color","black");
            }
            if(data.trim()==="like_removesuccess"){
            $(".fa.fa-thumbs-down").css("color","blue");
            var a=$("#lcount").attr("rel");
            a--;
            $("#lcount").attr("rel",a);
            $("#lcount").html(a);
            }
            });

            });
            //subscribe
            $(document).on("click",".btn.btn-danger.1",function(){

            var ccode=$(this).attr("id");
            var vcode=$(this).attr("rel");
            $.post(
            "subscribe.jsp",{vcode:vcode,ccode:ccode},function(data){
            if(data.trim()==="success"){
            $(".btn.btn-danger.1").html("UnSubscribe");
            $(".btn.btn-danger.1").removeClass(" btn btn-danger 1").addClass(" btn btn-default 2"); 
            }
            else {
            alert(data.trim());
            }   
            });
            });
            $(document).on("click",".btn.btn-default.2",function(){
            $(".btn.btn-default.2").html("Subscribe");
            $(".btn.btn-default.2").removeClass("btn btn-default 2").addClass("btn btn-danger 1"); 
            var ccode=$(this).attr("id");
            var vcode=$(this).attr("rel");
            $.post(
            "subscribe.jsp",{vcode:vcode,ccode:ccode},function(data){
            if(data.trim()==="success"){
            $(".btn.btn-default.2").html("Subscribe");
            $(".btn.btn-default.2").removeClass("btn btn-default 2").addClass("btn btn-danger 1"); 

            }
            else {
            alert(data.trim());
            }
            });
            });

        </script>
        <div class="main-content">
            <!--left-fixed -navigation-->

            <!--left-fixed -navigation-->
            <!-- header-starts -->
            <div class="sticky-header header-section ">
                <div class="header-left">
                    <!--toggle button start-->
                    <button id="showLeftPush"><i class="fa fa-bars"></i></button>
                    <!--toggle button end-->
                    <!--logo -->
                    <div class="logo">
                        <a href="youtube.jsp">
                            <h3><i class="fa fa-youtube" style="color:#101010"></i></h3>
                            <h1>Youtube.com</h1>
                        </a>
                    </div>
                    <!--//logo-->
                    <!--search-box-->
                    <div class="search-box">
                        <form class="input">
                            <input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
                            <label class="input__label" for="input-31">
                                <svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                </svg>
                            </label>
                        </form>
                    </div><!--//end-search-box-->
                    <div class="clearfix"> </div>
                </div>
                <div class="header-right">
                    <div class="profile_details_left"><!--notifications of menu start -->
                        <ul class="nofitications-dropdown">
                            <li class="dropdown head-dpdn">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons" >video_call</i></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="notification_header">
                                            <h3>Select channel</h3>
                                        </div>
                                    </li>
                                    <%
                                        Statement st1 = cn.createStatement();
                                        ResultSet rs1 = st1.executeQuery("select * from channel1 where user_code='" + user_code + "'");
                                        while (rs1.next()) {
                                            int status = rs1.getInt("status");
                                            if (status == 0) {
                                    %>
                                    <li><a href="video_add.jsp?cid=<%=rs1.getString("code")%>">
                                            <div class="user_img"><img src="channel_images/<%=rs1.getString("code")%>.jpg" alt=""></div>
                                            <div class="notification_desc">
                                                <p><%=rs1.getString("cname")%></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                        <%
                                                }
                                            }
                                        %>
                                </ul>
                            </li>
                            <li class="dropdown head-dpdn">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i></a>

                            </li>	
                            <li class="dropdown head-dpdn">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="notification_header">
                                            <h3>Your Channels</h3>
                                        </div>
                                    </li>
                                    <li><a href="channel_view.jsp">
                                            <div class="task-info">
                                                <span class="task-desc">All channels</span>
                                                <div class="clearfix"></div>	
                                            </div>
                                            <div class="">
                                                <div class="bar green" style="width:90%;"></div>
                                            </div>
                                        </a></li>
                                    <li><a href="channel_create.jsp">
                                            <div class="task-info">
                                                <span class="task-desc">Create Channel</span>
                                                <div class="clearfix"></div>	
                                            </div>
                                            <div class="">
                                                <div class="bar green" style="width:90%;"></div>
                                            </div>
                                        </a></li>
                                </ul>
                            </li>	
                        </ul>
                        <div class="clearfix"> </div>
                    </div>
                    <!--notification menu end -->
                    <div class="profile_details">		
                        <ul>
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <div class="profile_img">	
                                        <span class="prfil-img"><img src="user_images/<%=rs.getString("code")%>.jpg" class = "img-circle" style="width:50px;height:50px" alt=""> </span> 
                                        <div class="user-name">
                                            <p><% out.println("<b>" + rs.getString("name") + "</b>");%></p>
                                            <span>Administrator</span>
                                        </div>
                                        <i class="fa fa-angle-down lnr"></i>
                                        <i class="fa fa-angle-up lnr"></i>
                                        <div class="clearfix"></div>	
                                    </div>	
                                </a>
                                <ul class="dropdown-menu drp-mnu">
                                    <li> <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-cog" ></i> Change profile image</a> </li> 
                                    <li> <a href="profile.jsp"><i class="fa fa-user"></i> Profile</a> </li> 
                                    <li> <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>				
                </div>
                <div class="clearfix"> </div>	
            </div>
            <script>
                $(document).ready(function() {
                $('#myModal').on('shown.bs.modal', function () {
                $('#myInput').trigger('focus');
                });
                });
            </script>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Change profile image</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="profile_photo.jsp" method="post" ENCTYPE='multipart/form-data'>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="mb-2">Upload photo </label>
                                    <input type="file" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp" required="">
                                    <small id="emailHelp" class="form-text text-muted"></small>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary submit mb-4">Sign Up</button><br><br>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Modal End-->
            <!-- //header-ends -->
            <!-- main content start-->
            <%
                String vvcode = request.getParameter("vcode");
                String channel_code = "";
                Statement st3 = cn.createStatement();
                ResultSet rs4 = st3.executeQuery("select * from video where code='" + vvcode + "'");
                if (rs4.next()) {
                    channel_code = rs4.getString("ch_code");
                }

            %>
            <div id="page-wrapper">
                <div class="main-page">
                    <!-- videos will show here-->
                    <div class="row" >
                        <div class="col-md-8">
                            <video class="card-img-top" controls="controls" autoplay style="width:800px;height:400px" poster="videos/<%out.print(vvcode);%>.jpg" width="300" height="250" >
                                <source src="videos/<%out.print(vvcode);%>.mp4" type="video/mp4">
                            </video>

                            <div class="row">
                                <div class="col-sm-12"><label><%out.print(rs4.getString("title"));%></label></div>
                                <div class="col-sm-12"><small><%out.print(rs4.getString("description"));%></small></div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2"><h4>2662 views</h4></div>
                                <div class="col-sm-5"><small><i class="fa fa-circle"></i> <%out.print(rs4.getString("date"));%></small></div>
                                <div class="col-sm-2"> <%
                                    int like_count = 0;
                                    Statement st12 = cn.createStatement();
                                    ResultSet rs12 = st12.executeQuery("select * from like1 where vcode='" + vvcode + "'");
                                    while (rs12.next()) {
                                        like_count++;
                                    }
                                    Statement st11 = cn.createStatement();
                                    ResultSet rs11 = st11.executeQuery("select * from like1 where vcode='" + vvcode + "' AND ucode='" + user_code + "'");
                                    if (rs11.next()) {
                                    %>

                                    <i class="fa fa-thumbs-up" id="<%=vvcode%>" style="font-size:20px;cursor:pointer;color:blue"></i>&nbsp;<label id="lcount" rel="<%=like_count%>"><%=like_count%></label>

                                    <%
                                    } else {
                                    %>
                                    <i class="fa fa-thumbs-up" id="<%=vvcode%>" style="font-size:20px;cursor:pointer"></i>&nbsp;<label id="lcount" rel="<%=like_count%>"><%=like_count%></label>
                                    <%
                                        }
                                    %>
                                </div>
                                <div class="col-sm-2">
                                    <%
                                        Statement st13 = cn.createStatement();
                                        ResultSet rs13 = st13.executeQuery("select * from unlike where vcode='" + vvcode + "' AND ucode='" + user_code + "'");
                                        if (rs13.next()) {
                                    %>

                                    <i class="fa fa-thumbs-down" id="<%=vvcode%>" style="font-size:20px;cursor:pointer;color:blue"></i>

                                    <%
                                    } else {
                                    %>
                                    <i class="fa fa-thumbs-down" id="<%=vvcode%>" style="font-size:20px;cursor:pointer"></i>
                                    <%
                                        }
                                    %>
                                </div>
                                <div class="col-sm-1">
                                    <a href=""><i class="fa fa-share-square-o" style="font-size:20px">&nbsp;Share</i></a>
                                </div>
                                <div class="col-sm-12"><br></div>
                            </div>
                            <table class="table table-borderless">

                                <tr style="border-bottom: 1px solid;" id="subscribe">
                                    <td>
                                        <%
                                            Statement st2 = cn.createStatement();
                                            ResultSet rs3 = st2.executeQuery("select * from channel1 where code='" + channel_code + "'");
                                            if (rs3.next()) {
                                        %>

                                        <img src="channel_images/<%=channel_code%>.jpg" class ="img-circle" style="width:40px;height:40px" alt="">
                                        <% out.print(rs3.getString("cname"));%><i class="fa fa-check-circle"></i></td>
                                        <%
                                            ResultSet rs6 = st.executeQuery("select * from channel1 where code='" + channel_code + "'");
                                            int sb_flag = 0;
                                            while (rs6.next()) {
                                                if (rs6.getString("user_code").equals(user_code)) {
                                                    sb_flag = 1;
                                        %>
                                    <td colspan="3" align="right"><a href="channel.jsp?cid=<%=channel_code%>" class="btn btn-success"> Manage channel</a></td>
                                    <%
                                            }
                                        }
                                        if (sb_flag == 0) {
                                            Statement st5 = cn.createStatement();
                                            ResultSet rs5 = st5.executeQuery("select * from subscribe where ch_code='" + channel_code + "' AND ucode='" + user_code + "'");
                                            if (rs5.next()) {
                                    %>
                                    <td colspan="3" align="right"><a id="<%=channel_code%>" rel="<%=vvcode%>" class="btn btn-default 2" value="">UnSubscribe</a></td>
                                    <%
                                    } else {
                                    %>
                                    <td colspan="3" align="right"><a id="<%=channel_code%>" rel="<%=vvcode%>" class="btn btn-danger 1" value="">Subscribe</a></td>
                                    <%
                                                }
                                            }
                                        }
                                    %>
                                </tr>
                            </table>
                            <div class="row">
                                <p class="alert-danger"></p>
                                <p class="alert-success"></p>
                                <div class="col-md-1">
                                    <img src="user_images/<%=user_code%>.jpg" class ="img-circle" style="width:40px;height:40px" alt="">
                                </div>
                                <div class="col-md-9">
                                    <input type="text" id="comment" name="comment" class="form-control">
                                    <small>Post your comment here</small>
                                </div>
                                <div class="col-md-2">
                                    <button type="button" class="btn btn-default 1" id="<%=vvcode%>">COMMENT</button>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12"><h3>All comments<br></h3></div>
                                        <%
                                            Statement st6 = cn.createStatement();
                                            ResultSet rs6 = st6.executeQuery("select * from comment where vcode='" + vvcode + "'");
                                            while (rs6.next()) {
                                                String ucode = rs6.getString("ucode");
                                                int status = rs6.getInt("status");
                                                if (status == 0) {
                                        %>  
                                <table class="table">
                                    <tr><td>
                                            <div class="col-md-1">&nbsp;</div>
                                            <div class="col-md-1">
                                                <img src="user_images/<%=ucode%>.jpg" class ="img-circle" style="width:40px;height:40px" alt="">
                                            </div>
                                            <div class="col-md-8">
                                                <h5><b><%=rs6.getString("uname")%></b></h5>
                                                <small><%=rs6.getString("comment")%></small>
                                            </div>
                                            <div class="col-md-2">
                                                <ul class="nofitications-dropdown">
                                                    <li class="dropdown head-dpdn">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-ellipsis-h" aria-hidden="true" style="cursor:pointer"></i></a>
                                                        <ul class="dropdown-menu">
                                                            
                                                            <li><a href="#">
                                                                    <div class="task-info">
                                                                        <h4><i class="fa fa-flag" aria-hidden="true"></i>&nbsp;&nbsp;Report</h4>
                                                                        <div class="clearfix"></div>	
                                                                    </div>
                                                                    <div class="">
                                                                        <div class="bar green" style="width:40%"></div>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-md-12"></div>

                                        </td></tr>
                                </table>
                                <%
                                        }
                                    }
                                %>

                            </div>

                        </div>
                        <div class="col-md-4" style="margin-top:-30px">
                            <%
                                ResultSet rs2 = st1.executeQuery("select * from video ORDER BY RAND()");
                                while (rs2.next()) {
                                    int status = rs2.getInt("status");
                                    if (status == 0) {
                                        String code = rs2.getString("code");
                                        String ccode = rs2.getString("ch_code");

                            %>  

                            <a href="watch.jsp?vcode=<%=code%>">
                                <div class="row" style="margin-top:1px">
                                    <div class="col-sm-5">
                                        <div class="card">
                                            <div class="card-body">
                                                <video class="card-img-top" muted poster="videos/<%out.print(code);%>.jpg" width="150" height="100" >
                                                    <source src="videos/<%out.print(code);%>.mp4" type="video/mp4">
                                                </video>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>

                                    </div>
                                    <div class="col-sm-7">
                                        <table class="table table-borderless">
                                            <tr><td>
                                                    <label>
                                                        <%out.print(rs2.getString("title"));%>
                                                    </label>
                                                </td></tr>
                                                <%
                                                    Statement st4 = cn.createStatement();
                                                    ResultSet rs5 = st4.executeQuery("select * from channel1 where code='" + ccode + "'");
                                                    while (rs5.next()) {
                                                        out.print("<tr><td rowspan=2><small>" + rs5.getString("cname") + "<i class='fa fa-right'></i></small></td></tr>");
                                                    }
                                                %>
                                        </table>
                                    </div>

                                </div>
                            </a>

                            <%
                                    }
                                }
                            %>

                        </div>
                    </div>
                </div>
            </div>
            <!--footer-->
            <div class="footer">
                <p>&copy; 2022 Youtube. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">Raviraj singh</a></p>
            </div>
            <!--//footer-->
        </div>
        <!-- Classie -->
        <script src="js/classie.js"></script>

        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!--//scrolling js-->
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.js"> </script>
    </body>
    <%
                }
            } catch (SQLException e) {
                out.println(e.getMessage());
            }
        }%>

</html>
