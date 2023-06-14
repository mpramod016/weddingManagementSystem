<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutPage.aspx.cs" Inherits="AboutPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wedding management</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/StyleSheetDesign.css" rel="stylesheet" />
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
     <form id="form1" runat="server">
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
                                    <li class="active"><a href="AboutPage.aspx"><span class="glyphicon glyphicon-book"></span>&nbsp;About</a></li>
                                    <li></li>
                                    
                                    <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
                                    <li><a href="Registration.aspx"><span class="glyphicon glyphicon-user"></span>&nbsp;SignUp</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div style="background-image: url('Image/Background.jpg'); width: auto">
            <div class="row featurette col-md-12">
                <div class="col-md-12">
                    <h1 class="featurette-heading text-center">About Us</h1>
                    <p class="lead text-justify">
                        Every Line Up project is individual and, as such, each requires a completely tailored approach. The scope of projects covered is vast and can vary from a singular brief for a stream of content for a website to masterminding a multi-channel brand experience for thousands of people.

Our audiences vary enormously too. From consumers to corporates, press to trading channels, staff to investors, our focus is always on the audience journey and proven results and the awards that we win are testament to our success.

Whatever the project, whoever the audience, Line Up is a one-stop select for experiential marketing and event management. We provide venue searching, delegate management, environmental design and build, set and stage design and build, technical facilitation, content creation, film and audiovisual production, data capture and analysis, digital amplification and project evaluation.

Please take a look at some of our recent work.
                    </p>
                </div>
            </div>
            <div class="row 12">
                <div class="col-md-5 col-lg-offset-3">
                    <img class="img-rounded img-responsive" src="Image/eventteam.jpg" alt="Generic placeholder image">
                </div>
            </div>
                <hr class="featurette-divider">
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
