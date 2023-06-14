<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage"  EnableEventValidation="false" ValidateRequest="false"%>

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
                                    <li class="active"><a href="HomePage.aspx"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                                    <li><a href="AboutPage.aspx"><span class="glyphicon glyphicon-book"></span>&nbsp;About</a></li>
                                    <li></li>
                                    
                                    <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
                                    <li><a href="Registration.aspx"><span class="glyphicon glyphicon-user"></span>&nbsp;SignUp</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                </div>
            </div>
            <!-- Carousel
    ================================================== -->
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img class="first-slide" src="Image/event management 2.jpg" alt="First slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1></h1>
                                <p></p>
                                <p><a class="btn btn-lg btn-primary" href="LoginPage.aspx" role="button">Join Us Today</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img class="second-slide" src="Image/101016055734-event2.jpg" alt="Second slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Conferences</h1>
                                <p></p>
                                <p><a class="btn btn-lg btn-danger">Browse gallery</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img class="third-slide" src="Image/banner-3.jpg" alt="Third slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Wedding to Shadi</h1>
                                <p></p>
                                <p><a class="btn btn-lg btn-danger" href="#" role="button">Browse gallery</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img class="fourth-slide" src="Image/slide03.jpg" alt="fourth slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Party all night</h1>
                                <p></p>
                                <p><a class="btn btn-lg btn-danger" href="#" role="button">Browse gallery</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- /.carousel -->
            <!-- Marketing messaging and featurettes
    ================================================== -->
            <!-- Wrap the rest of the page in another container to center all the content. -->
            <br />
            <br />
            <br />
            <br />
            <marquee title="Holding your cursor over this stops the marquee."
                onmouseover="this.stop();"
                onmouseout="this.start();">
         <H3>Welcome to Event Management</H3>
         <P>All-in-one event management software has everything organizers need to plan .</P>
      </marquee>
            <br />
            <br />
            <br />
            <hr class="featurette-divider">
            <div class="container marketing">

                <!-- Three columns of text below the carousel -->
                <div class="row">
                    <div class="col-lg-4">
                        <img class="img-circle" src="Image/Wedding.jpg" alt="Generic placeholder image" width="140" height="140">
                        <h2>Wedding Event</h2>
                        <p>We’ve created the ultimate event planning resource to provide crucial, meeting-specific information to meeting and event planning professionals for nearly every major city around the globe.</p>
                        <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img class="img-circle" src="Image/party.jpg" alt="Generic placeholder image" width="140" height="140">
                        <h2>Reception Event</h2>
                        <p>We’ve created the ultimate event planning resource to provide crucial, meeting-specific information to meeting and event planning professionals for nearly every major city around the globe.</p>
                        <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img class="img-circle" src="Image/meetings.jpg" alt="Generic placeholder image" width="140" height="140">
                        <h2>Engagment Event</h2>
                        <p>If you need 10-25 hotel rooms or event space for up to 50 people, you can book online today at participating hotels in the Virar and Mumbai. ... Marriott makes it easy to search for meeting venues, compare rates and availability, submit proposal requests and get all the details right.</p>
                        <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                    </div>
                    <!-- /.col-lg-4 -->
                </div>
                <!-- /.row -->
                <!-- START THE FEATURETTES -->
                <hr class="featurette-divider">
                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Haldi<span class="text-muted">(it special for children & kids.)</span></h2>
                        <p class="lead">Kids Theme Haldi Organizers Organisers Planners in All Over Mumbai Event ... Venue Management; F&B Catering; Theme Cakes(Photo/3d);</p>
                    </div>
                    <div class="col-md-5">
                        <img class="featurette-image img-responsive center-block" src="Image/bdaykids.jpg" alt="Generic placeholder image">
                    </div>
                </div>
                <hr class="featurette-divider">
                <div class="row featurette">
                    <div class="col-md-7 col-md-push-5">
                        <h2 class="featurette-heading">Engagment <span class="text-muted"></span></h2>
                        <p class="lead">Engagment for Family Events. Family events are fun and enjoyable to participate in. But they offer a number of challenges in the planning. The host of the event will usually select the date, and have some ideas about preferred locations.</p>
                    </div>
                    <div class="col-md-5 col-md-pull-7">
                        <img class="featurette-image img-responsive center-block" src="Image/family.jpg" alt="Generic placeholder image">
                    </div>
                </div>
                <hr class="featurette-divider">
                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Reciption <span class="text-muted"></span></h2>
                        <p class="lead">Event Services provides a full array of event staffing and security services including ushers, ticket takers, crowd control professionals, guest services staff ..</p>
                    </div>
                    <div class="col-md-5">
                        <img class="featurette-image img-responsive center-block" src="Image/security.png" alt="Generic placeholder image">
                    </div>
                </div>
                <hr class="featurette-divider">
                <!-- /END THE FEATURETTES -->
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
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
