<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="EventHomePage.aspx.cs" Inherits="EventHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
                <div class="row">
                    <div class="col-sm-8">
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
                                            <p><a class="btn btn-lg btn-primary" href="HomePage.aspx" role="button">Thank you for login🙏</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="second-slide" src="Image/101016055734-event2.jpg" alt="Second slide">
                                    <div class="container">
                                        <div class="carousel-caption">
                                            <h1>Sangit</h1>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="third-slide" src="Image/banner-3.jpg" alt="Third slide">
                                    <div class="container">
                                        <div class="carousel-caption">
                                            <h1>Wedding to Shadi</h1>
                                          
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="fourth-slide" src="Image/slide03.jpg" alt="fourth slide">
                                    <div class="container">
                                        <div class="carousel-caption">
                                            <h1>Haldi</h1>
                                            
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
                    </div>
                    <div class="col-sm-4">
                        <div class="well">
                            <h2>Welcome,<asp:Label ID="lblusername" runat="server" Text="" Font-Size="XX-Large"></asp:Label><asp:Label ID="lbluser" runat="server" Text="" CssClass="text-hide" Font-Size="XX-Large" Visible="false"></asp:Label></h2>
                            <button type="button" class="btn btn-default btn-sm">
                                            <a href="Myaccount.aspx">My Account</a></button>
                            <button type="button" class="btn btn-default btn-sm">
                                            <a href="BookingHistoryPage.aspx">My Booking</a></button>
                             <button type="button" class="btn btn-default btn-sm">
                                            <a href="HomePage.aspx">Logout</a></button>
                        </div>
                    </div>
                </div>
                <br />
                <marquee title="Holding your cursor over this stops the marquee."
                    onmouseover="this.stop();"
                    onmouseout="this.start();">
         <H3>Welcome to Event Management</H3>
         <P>All-in-one event management software has everything organizers need to plan .</P></marquee>

                <hr class="featurette-divider">
                <div class="container marketing">

                    <!-- Three columns of text below the carousel -->
                    <div class="row">
                        <div class="col-lg-4">
                            <img class="img-circle" src="Image/Wedding.jpg" alt="Generic placeholder image" width="140" height="140">
                            <h2>Wedding Event</h2>
                            <p>We’ve created the ultimate event planning resource to provide crucial, meeting-specific information to meeting and event planning professionals for nearly every major city around the globe.e globe.</p>
                           
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-4">
                            <img class="img-circle" src="Image/party.jpg" alt="Generic placeholder image" width="140" height="140">
                            <h2>Haldi Event</h2>
                            <p>We’ve created the ultimate event planning resource to provide crucial, meeting-specific information to meeting and event planning professionals for nearly every major city around the globe.</p>
                           
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-4">
                            <img class="img-circle" src="Image/meetings.jpg" alt="Generic placeholder image" width="140" height="140">
                            <h2>Sangeet Event</h2>
                            <p>If you need 10-25 hotel rooms or event space for up to 50 people, you can book online today at participating hotels in the Virar and Mumbai. ... Marriott makes it easy to search for meeting venues, compare rates and availability, submit proposal requests and get all the details right.</p>
                           
                        </div>
                        <!-- /.col-lg-4 -->
                    </div>
                    <!-- /.row -->


                    <!-- START THE FEATURETTES -->

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7">
                            <h2 class="featurette-heading">Birthday Party <span class="text-muted">(it special for children & kids.)</span></h2>
                            <p class="lead">Kids Theme Birthday Party Organizers Organisers Planners in All Over Mumbai Event ... Venue Management; F&B Catering; Theme Cakes(Photo/3d);</p>
                        </div>
                        <div class="col-md-5">
                            <img class="featurette-image img-responsive center-block" src="Image/bdaykids.jpg" alt="Generic placeholder image">
                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7 col-md-push-5">
                            <h2 class="featurette-heading">Family event <span class="text-muted"></span></h2>
                            <p class="lead">Event Management for Family Events. Family events are fun and enjoyable to participate in. But they offer a number of challenges in the planning. The host of the event will usually select the date, and have some ideas about preferred locations.</p>
                        </div>
                        <div class="col-md-5 col-md-pull-7">
                            <img class="featurette-image img-responsive center-block" src="Image/family.jpg" alt="Generic placeholder image">
                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7">
                            <h2 class="featurette-heading">Event Security<span class="text-muted"></span></h2>
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

                                        <a href="#">India </a>|  <a target="_blank" href="#">Web Design & Development by</a>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>
                </footer>
                </div>
                <!-- /.container -->

            </div>
</asp:Content>

