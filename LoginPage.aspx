<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wedding management</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/LoginCss.css" rel="stylesheet" />
    <link href="css/StyleSheetDesign.css" rel="stylesheet" />
    <style>
        h2 {
            font-family: 'Montserrat', sans-serif;
            color: #fff;
        }
    </style>
    <style>
        /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
        .row.content {
            height: 1500px;
        }

        /* Set gray background color and 100% height */
        .sidenav {
            background-color: #f1f1f1;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <div class="navbar-wrapper">
                <div class="container">
                    <nav class="navbar navbar-inverse navbar-static-top">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">Wedding management</a>
                            </div>
                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="HomePage.aspx"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                                    <li><a href="AboutPage.aspx"><span class="glyphicon glyphicon-book"></span>&nbsp;About</a></li>

                                    <li class="active"><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
                                    <li><a href="Registration.aspx"><span class="glyphicon glyphicon-user"></span>&nbsp;SignUp</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="jumbotron jumbotron-sm" style="background-image: url('Image/Contact-Us.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-lg-12">
                            <hr class="colorgraph">
                            <h1 class="h1">Login To Wedding management</h1>
                            <hr class="colorgraph">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lbl_sucessmsg" runat="server" Font-Bold="True" ForeColor="#00ff00" Font-Size="X-Large"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--loginpage-->
            <div class="container" style="background-image: url('Image/4.jpg'); height`: 100%;">
                <div class="row" style="margin-top: 20px">
                    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                        <form role="form">
                            <fieldset>
                                <h2>Login To Wedding management</h2>
                                <hr class="colorgraph">
                                <div class="form-group">
                                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control input-lg" placeholder="Email Id"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtusername" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control input-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Password" ControlToValidate="txtpassword" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <hr class="colorgraph">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <asp:Button ID="btnsubmit" runat="server" Text="Sign In"
                                            CssClass="btn btn-lg btn-success btn-block" OnClick="btnsubmit_Click" />
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <p><a class="btn btn-lg btn-primary btn-block" href="Registration.aspx" role="button">Register</a></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <a class="btn btn-block btn-primary" href="ForgetPassword.aspx">Forgot Password?</a>
                                    </div>
                                </div>
                                <hr class="colorgraph">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            <!-- FOOTER -->
            <footer class="footer1">
                <div class="footer-bottom">

                    <div class="container">

                        <div class="row">

                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

                                <div class="copyright">
                                    © 2019, Wedding management, All rights reserved
                                </div>

                            </div>

                            <div class="col-xs-10 col-sm-5 col-md-5 col-lg-5">

                                <div class="design">

                                    <a href="#">India </a>|  <a target="_blank" href="#">Web Design & Development</a>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>
            </footer>
        </div>
        <!-- /.container -->
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/LoginJs.js"></script>
</body>
</html>
