<%-- 
    Document   : channel
    Created on : 30 Dec, 2021, 11:48:44 AM
    Author     : raviraj singh
--%>

<%@page contentType="text/html" import= "java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt", "root", "");
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
            if (rs.next()) {
                String user_code = rs.getString("code");
%>
<html>
    <head
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
        <style>
            .card{
                padding-left: 20px;
                padding-right: 20px;
                box-shadow: 0 0px 20px 0 rgba(0,0,0,0.2);
                background-color: rgba(0,0,0,0.2);
                transition: 0.3s;
            }
        </style>
    </head> 
    <body class="">
        <div class="main-content">
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
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="notification_header">
                                            <h3>You have 3 new messages</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                            <div class="user_img"><img src="images/1.png" alt=""></div>
                                            <div class="notification_desc">
                                                <p>Lorem ipsum dolor amet</p>
                                                <p><span>1 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li class="odd"><a href="#">
                                            <div class="user_img"><img src="images/2.png" alt=""></div>
                                            <div class="notification_desc">
                                                <p>Lorem ipsum dolor amet </p>
                                                <p><span>1 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li><a href="#">
                                            <div class="user_img"><img src="images/3.png" alt=""></div>
                                            <div class="notification_desc">
                                                <p>Lorem ipsum dolor amet </p>
                                                <p><span>1 hour ago</span></p>
                                            </div>
                                            <div class="clearfix"></div>	
                                        </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">See all messages</a>
                                        </div> 
                                    </li>
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
                                    <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
                                    <li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
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
                                    <input type="file" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
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
            <div id="page-wrapper">
                <div class="main-page">
                    <!-- videos will show here-->
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="card" style="width: 50rem;">
                                <span class="prfil-img">
                                    <img src="user_images/<%=rs.getString("code")%>.jpg" class = "img-circle" style="width:50px;height:50px" alt=""> </span> 
                                <div class="card-body">
                                    <form action="channel_add.jsp" method="post">
                                        <div class="form-group">
                                            <label class="mb-2">Channel Name</label>
                                            <input type="text" class="form-control" name="cname" value="" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                            <small id="emailHelp" class="form-text text-muted"></small>
                                        </div>
                                        <div class="form-group">
                                            <!-- -->
                                            <label class="mb-2">About channel</label>
                                            <input type="text" class="form-control" name="about" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                        </div>
                                        <button type="submit" class="btn btn-primary submit mb-4">Create</button><br><br>
                                    </form>
                                </div>
                            </div>
                            <div class="clearfix"> </div>		
                        </div>
                        <div class="col-md-2"></div>
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
</html>
<%
            }
        } catch (SQLException e) {
            out.println(e.getMessage());
        }
    }%>
