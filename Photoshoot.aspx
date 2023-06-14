<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="Photoshoot.aspx.cs" Inherits="Photoshoot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="jumbotron jumbotron-sm" style="background-image: url('Image/Weddingtitle.jpg');">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-lg-12">
                                    <h1>Shoot<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h1>
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
                               <h3 class="featurette-heading">Photoshoot Id :<span class="text-muted"><%#Eval("PhotoshootId")%></span></h3>
                              <h3 class="featurette-heading">Photoshoot Name :<span class="text-muted"><%#Eval("PhotoshootName")%></span></h3>
                              <h3 class="featurette-heading">Photoshoot Price :<span class="text-muted"><%#Eval("PhotoshootPrice")%></span></h3>
                            </div>
                            <div class="col-md-5">
                              <img class="featurette-image img-responsive center-block" src='data:<%#Eval("ContentType")%>;base64,<%# Eval("PhotoshootImage") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("PhotoshootImage")) : string.Empty %>' alt="Generic placeholder image">
                            </div>
                            </div>
                       </ItemTemplate>
                        </asp:Repeater> 
                         <hr class="featurette-divider">
                          <asp:Repeater ID="Repeater1" runat="server">
                             <ItemTemplate>
                            <div class="row featurette">
                            <div class="col-md-7">
                               <h3 class="featurette-heading">VideoShoot Id :<span class="text-muted"><%#Eval("VideoShootId")%></span></h3>
                              <h3 class="featurette-heading">VideoShoot Name :<span class="text-muted"><%#Eval("VideoShootName")%></span></h3>
                              <h3 class="featurette-heading">VideoShoot Price :<span class="text-muted"><%#Eval("VideoShootPrice")%></span></h3>
                            </div>
                            <div class="col-md-5">
                              <img class="featurette-image img-responsive center-block" src='data:<%#Eval("ContentType")%>;base64,<%# Eval("VideoShootImage") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("VideoShootImage")) : string.Empty %>' alt="Generic placeholder image">
                            </div>
                            </div>
                       </ItemTemplate>
                        </asp:Repeater> 
                      </div>
</asp:Content>

