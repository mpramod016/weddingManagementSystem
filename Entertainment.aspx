<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="Entertainment.aspx.cs" Inherits="Entertainment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="jumbotron jumbotron-sm" style="background-image: url('Image/Weddingtitle.jpg');">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-lg-12">
                                    <h1>Entertainment<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h1>
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
                               <h3 class="featurette-heading">Entertainment Id :<span class="text-muted"><%#Eval("EntertainmentId")%></span></h3>
                              <h3 class="featurette-heading">Entertainment Name :<span class="text-muted"><%#Eval("EntertainmentName")%></span></h3>
                              <h3 class="featurette-heading">Entertainment Price :<span class="text-muted"><%#Eval("EntertainmentPrice")%></span></h3>
                              <p class="lead"><%#Eval("EntertainmentDescription")%></p>
                            </div>
                            <div class="col-md-5">
                              <img class="featurette-image img-responsive center-block" src='data:<%#Eval("ContentType")%>;base64,<%# Eval("EntertainmentImage") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("EntertainmentImage")) : string.Empty %>' alt="Generic placeholder image">
                            </div>
                            </div>
                       </ItemTemplate>
                        </asp:Repeater> 
    </div>
</asp:Content>

