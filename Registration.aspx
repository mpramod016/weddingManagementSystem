<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration"  EnableEventValidation="false" ValidateRequest="false"%>

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
        h2{
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
                                <a class="navbar-brand" href="EventHome.aspx">Wedding management</a>
                            </div>
                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="HomePage.aspx"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                                    <li><a href="AboutPage.aspx"><span class="glyphicon glyphicon-book"></span>&nbsp;About</a></li>
                                    
                                    <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
                                    <li class="active"><a href="Registration.aspx"><span class="glyphicon glyphicon-user"></span>&nbsp;SignUp</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                </div>
            </div>
            <!--Registration-->
            <div class="container" style="background-image: url('Image/Registrationimage.jpg')">
                <asp:Label ID="lblsrnumber" runat="server" Text="Label"></asp:Label>
                <div class="row">
                    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                        <form role="form">
                            <h2>Please Registration <small>It's free and always will be.</small></h2>
                            <hr class="colorgraph">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtfirstname"
                                    ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." CssClass="text-danger"/>
                                        <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control input-lg" placeholder="First Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter your name...!!" CssClass="text-danger" ControlToValidate="txtfirstname" Font-Size="Medium"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtlastname"
                                    ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." CssClass="text-danger"/>
                                        <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control input-lg" placeholder="Last Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-lg" placeholder="Email Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter your email...!!!" CssClass="text-danger" ControlToValidate="txtemail" Font-Size="Large"></asp:RequiredFieldValidator>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtphone" runat="server" CssClass="form-control input-lg" placeholder="Mobile Number" ></asp:TextBox>
                                        
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="txtphone" ErrorMessage="*enter moblie number is required..!!"
                                            ValidationExpression="[0-9]{10}" Font-Size="Medium" CssClass="text-danger"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtcity" runat="server" CssClass="form-control input-lg" placeholder="Location"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter your location..!!" ControlToValidate="txtcity" CssClass="text-danger" Font-Size="Medium"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control input-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Enter pasword..." ControlToValidate="txtpassword" CssClass="text-danger" Font-Size="Medium" ></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtcfnpassword" runat="server" CssClass="form-control input-lg" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*The password Not match....!!" Controltocompare="txtpassword" ControlToValidate="txtcfnpassword" CssClass="text-danger" Font-Size="Medium"></asp:CompareValidator>
                                    </div>
                                </div>
                            </div>
                            <hr class="colorgraph">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Button ID="btnsubmit" runat="server" Text="Create My Account" 
                                        CssClass="btn btn-primary btn-block btn-lg" onclick="btnsubmit_Click" />
                                </div>
                                <div class="col-md-6">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success btn-block btn-lg" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <br />

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
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
