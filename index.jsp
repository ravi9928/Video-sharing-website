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
        <link rel="stylesheet" href="css/clndr.css" type="text/css" />
        <script src="js/underscore-min.js" type="text/javascript"></script>
        <script src= "js/moment-2.2.1.js" type="text/javascript"></script>
        <script src="js/clndr.js" type="text/javascript"></script>
        <script src="js/site.js" type="text/javascript"></script>
        <!--End Calender-->
        <!-- Metis Menu -->
        <script src="js/metisMenu.min.js"></script>
        <script src="js/custom.js"></script>
        <link href="css/custom.css" rel="stylesheet">
        <!--//Metis Menu -->
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script>
            $(document).ready(function(){
            $(".navbar-collapse").fadeOut(1);
            $("#showLeftPush").click(function(){
            $(".navbar-collapse").fadeIn(20);
            });
            });
        </script>
    </head> 
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
                                <a href="#"><i class="fa fa-caret-square-o-right nav_icon"></i>Explore</a>
                              
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#exampleModal1"><i class="fa fa-user nav_icon"></i>User</a>
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
                        <a href="index.html">
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
            <!-- Modal -->
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
                                    <input type="password" class="form-control" name="pass" id="exampleInputPassword1" placeholder="" required="">
                                </div>
                                <div class="form-check mb-2">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
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
            <!-- Modal End-->
            <!-- //header-ends -->
            <!-- main content start-->
            <div id="page-wrapper">
                <div class="main-page">
                    <!-- videos will show here-->
                    <!-- videos will show here-->
                    <div class="row" style="margin-top:-40px">
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
                                Statement st1 = cn.createStatement();
                                ResultSet rs2 = st1.executeQuery("select * from video ORDER BY RAND()");
                                while (rs2.next()) {
                                    int status = rs2.getInt("status");
                                    if (status == 0) {
                                        String code = rs2.getString("code");
                                        String channel_code = rs2.getString("ch_code");

                        %>      
                        <div class="col-md-3" >
                            <a href="watch.jsp?vcode=<%=code%>"><div class="card" style="width:300px;height:auto">
                                    <div class="card-body">
                                        <video class="card-img-top" controls="controls" muted style="width:300px;height:260px" poster="videos/<%out.print(code);%>.jpg" >
                                            <source src="videos/<%out.print(code);%>.mp4" type="video/mp4">
                                        </video>
                                    </div>
                                    <div class="card-footer">
                                        <table class="table table-borderless">
                                            <tr><td rowspan="3">
                                                    <div><img src="channel_images/<%=rs2.getString("ch_code")%>.jpg" class ="img-circle" style="width:40px;height:40px" alt=""></div>
                                                </td><td >
                                                    <label>
                                                        <%out.print(rs2.getString("title"));%>
                                                    </label>
                                                </td></tr>
                                            <tr><td>
                                                    <small>
                                                        <%out.print(rs2.getString("date"));%>
                                                    </small>
                                                </td></tr>
                                                <%
                                                    Statement st2 = cn.createStatement();
                                                    ResultSet rs3 = st2.executeQuery("select * from channel1 where code='" + channel_code + "'");
                                                    while (rs3.next()) {
                                                        out.print("<tr><td rowspan=2><small>" + rs3.getString("cname") + "<i class='fa fa-right'></i></small></td></tr>");
                                                    }
                                                %>
                                        </table>
                                    </div>
                                </div>
                            </a>
                        </div>	

                        <%
                                    }
                                }
                            } catch (SQLException e) {
                                out.println(e.getMessage());
                            }
                        %>
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
    </body>
</html>