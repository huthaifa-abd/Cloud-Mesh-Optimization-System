<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>

<!DOCTYPE html>
<html class="no-js">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Alpha-Lab</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!-- Fonts -->




    <!-- CSS -->

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/responsive.css">


    <!-- Js -->
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    <script>
        new WOW(
           ).init();
    </script>

</head>
<body>
    <form id="form1" runat="server">

        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-xs-6 col-sm-3">
                        <a href="#" class="logo">
                            <img src="images/logo.png" alt="">
                        </a>
                    </div>
                    <div class="col-md-6 col-xs-6 col-sm-6">
                        <div class="menu">
                            <nav class="navbar navbar-default" role="navigation">
                                <div class="container-fluid">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                    </div>

                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                            <li><a href="#banner">Home</a></li>
                                            <li><a href="#service">Feature</a></li>
                                            <li><a href="http://huthaifa-abd.com">About</a></li>
                                            <li><a href="#subscribe">Subscribe</a></li>
                                        </ul>

                                    </div>
                                    <!-- /.navbar-collapse -->
                                </div>
                                <!-- /.container-fluid -->
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-12 col-sm-3">
                        <ul class="social-info">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>




        <section id="banner" class="wow fadeInUp uploadfileview">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-6">
                        <div class="block">
                            <img class="app-img img-responsive" src="images/app.png" alt="">
                        </div>

                    </div>
                    <div class="col-md-6 col-md-offset-1 col-sm-6">
                        <div class="block">
                            <h1>Beautiful, simple and easy to use optimization system.
                            </h1>
                            <p>
                                An Enterprise solution to optimize complex architecture models for use on desktop and mobile devices , the system aims to provide multiple level of resolution / Quality , and aims to support all types of meshes , also it has a full support for unity engine
                            </p>

                            <ul class="download-btn">
                                <li>
                                    <a href="#" class="btn btn-default btn-apple"><i class="fa fa-code"></i>Source Code</a>
                                </li>
                                <li>
                                    <a href="#" class="btn btn-default btn-andriod"><i class="fa fa-user"></i>Client App</a>
                                </li>
                                <li>
                                    <a href="#" class="btn btn-default btn-windows" onclick="showBrowseDialog()"><i class="fa fa-cloud-upload"></i>Upload Mesh</a>
                                </li>
                            </ul>


                        </div>
                    </div>
                </div>
            </div>
        </section>



        <section id="banner" class="wow fadeInUp optimizemeshview">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-6">
                        <div class="block">
                            <img class="app-img img-responsive" src="images/app.png" alt="">
                        </div>

                    </div>
                    <div class="col-md-6 col-md-offset-1 col-sm-6">
                        <div class="block">
                            <h1>File has been uploaded successfully.
                            </h1>
                            <p>
                                Uploaded File information : 
                            </p>
                        </div>
                        <p>Original Poly Count :<span><asp:Label ID="labPolyCount" runat="server" Text="0"></asp:Label></span></p>

                        <p>Optimization Percentage :<span><asp:Label ID="labOptPercentage" runat="server" Text="0"></asp:Label></span></p>

                        <p>Optimized Polycount :<span><asp:Label ID="labOptPolyCount" runat="server" Text="0"></asp:Label></span></p>

                        <p><asp:Label id="labResultNotification" runat="server" Text="You may now view this mesh using the Unity client ."></asp:Label></p>
                        <div class="block">
                            <ul class="download-btn">
                                <li>
                                    <a href="#" class="btn btn-default btn-apple"><i class="fa fa-code"></i>Source Code</a>
                                </li>
                                <li>
                                    <a href="#" class="btn btn-default btn-andriod"><i class="fa fa-user"></i>Client App</a>
                                </li>
                                <li>
                                    <a href="#" class="btn btn-default btn-windows" onclick="showBrowseDialog()"><i class="fa fa-cloud-upload"></i>Upload Mesh</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section id="service">
            <div class="container">
                <div class="service-wrapper">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="block wow fadeInRight" data-wow-delay="1s">
                                <div class="icon">
                                    <i class="fa fa-desktop"></i>
                                </div>

                                <h3>Dynamic Asset Generation</h3>
                                <p>Get exactly what you want without compromising quality or customization</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="block wow fadeInRight" data-wow-delay="1.3s">
                                <div class="icon">
                                    <i class="fa  fa-paper-plane"></i>
                                </div>
                                <h3>Levels of detail the smart way</h3>
                                <p>Stop spending time decimating your polycount by hand and let us handle your mesh decimation with our online tool.</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="block wow fadeInRight" data-wow-delay="1.6s">
                                <div class="icon">
                                    <i class="fa  fa-file-text"></i>
                                </div>
                                <h3>Grab a mesh and get moving.</h3>
                                <p>We have a collection of building models that can’t wait to star in your next project.</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="block wow fadeInRight" data-wow-delay="1.9s">
                                <div class="icon">
                                    <i class="fa  fa-laptop"></i>
                                </div>
                                <h3>Always Opensource</h3>
                                <p>Enjoy the power and the flexibility of open source always remember to contribute back to the community.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section id="subscribe">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 wow fadeInDown" data-wow-delay=".8s">
                        <div class="block">
                            <div class="title text-center">
                                <h2>Stay Connected</h2>
                                <p>Feel free to watch the github repo for new updates and notifications !</p>
                                <a href="https://github.com/huthaifa-abd/Cloud-Mesh-Optimization-System">Github Repository</a>
                            </div>




                        </div>


                    </div>
                </div>
            </div>
        </section>

        <footer class="wow fadeInUp" data-wow-delay=".8s">
            <div class="container text-center">
                <div class="row">
                    <div class="col-md-12">
                        <a class="footer-logo" href="#">
                            <img class="img-responsive" src="images/footer-logo.png" alt="">
                        </a>
                        <p>Copyright © 2015 Huthaifa-abd. All rights reserved.</p>

                    </div>
                </div>
            </div>
        </footer>



        <div>
            <asp:Panel ID="Panel1" runat="server">
                <input type="button" value="Browse" onclick="showBrowseDialog()" />
                <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="hidden" />
                <asp:Button ID="btnUpload" Text="Upload File" OnClick="btnUpload_Click" runat="server" />

            </asp:Panel>
        </div>
    </form>

    <script type="text/javascript">
        function showBrowseDialog() {
            var fileuploadctrl = document.getElementById('<%=FileUploadControl.ClientID%>');
            fileuploadctrl.click();

        }

        $('input#' + '<%=FileUploadControl.ClientID%>').change(function () {
            $('#' + '<%=btnUpload.ClientID%>').trigger("click")
        });


        $(document).ready(function () {
            var SFileName = '<%= Session["FileName"] %>';
            if (SFileName != "") {
                $('.uploadfileview').hide();
                $('.optimizemeshview').show();
            }
            else {
                $('.optimizemeshview').hide();
            }
        });

    </script>
</body>
</html>
