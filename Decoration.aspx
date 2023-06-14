  <%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="Decoration.aspx.cs" Inherits="Decoration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="jumbotron jumbotron-sm" style="background-image: url('Image/Weddingtitle.jpg');">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-lg-12">
                                    <h1>Decoration<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h1>
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
                               <h3 class="featurette-heading">Decoration Id :<span class="text-muted"><%#Eval("DecorationID")%></span></h3>
                              <h3 class="featurette-heading">Decoration Name :<span class="text-muted"><%#Eval("DecorationName")%></span></h3>
                              <h3 class="featurette-heading">Decoration Price :<span class="text-muted"><%#Eval("DecorationPrice")%></span></h3>
                            </div>
                            <div class="col-md-5">
                              <img class="featurette-image img-responsive center-block" src='data:<%#Eval("ContentType")%>;base64,<%# Eval("DecorationImage") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("DecorationImage")) : string.Empty %>' alt="Generic placeholder image">
                            </div>
                            </div>
                       </ItemTemplate>
                        </asp:Repeater> 
                      </div>
</asp:Content>

