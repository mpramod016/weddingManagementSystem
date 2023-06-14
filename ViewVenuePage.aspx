<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="ViewVenuePage.aspx.cs" Inherits="ViewVenuePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron jumbotron-sm" style="background-image: url('Image/Weddingtitle.jpg');">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-lg-12">
                                    <h1>Venue<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h1>
                                </div>
                            </div>
                        </div>
                    </div>
<div class="container">
                      <hr class="featurette-divider">
                          <asp:Repeater ID="rptrProducts" runat="server">
                             <ItemTemplate>
                            <div class="row featurette">
                            <div class="col-md-7">
                               <h3 class="featurette-heading">Venue Id :<span class="text-muted"><%#Eval("VID")%></span></h3>
                              <h3 class="featurette-heading">Venue Name :<span class="text-muted"><%#Eval("VenueName")%></span></h3>
                              <h3 class="featurette-heading">Venue Address :<span class="text-muted"><%#Eval("VenueAddress")%></span></h3>
                                      <h3 class="featurette-heading">Capcity :<span class="text-muted"><%#Eval("Capcity")%></span></h3>
                              <h3 class="featurette-heading">Prefered by :<span class="text-muted"><%#Eval("Preferedby")%></span></h3>
                              <h3 class="featurette-heading">Price :<span class="text-muted"><%#Eval("Price")%></span></h3>
                            </div>
                            <div class="col-md-5">
                              <img class="featurette-image img-responsive center-block" src='data:<%#Eval("ContentType")%>;base64,<%# Eval("VenueImage") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("VenueImage")) : string.Empty %>' alt="Generic placeholder image">
                            </div>
                            </div>
                       </ItemTemplate>
                        </asp:Repeater> 
                      </div>
</asp:Content>

