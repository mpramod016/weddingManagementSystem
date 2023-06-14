<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="FeedBackPage.aspx.cs" Inherits="FeedBackPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="jumbotron jumbotron-sm" style="background-image: url('Image/Weddingtitle.jpg');">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-lg-12">
                            <h1>Feed Back</h1>
                            <h3 id="name-header">
                            Logged:&nbsp;<asp:Label ID="lblusername" runat="server" Text=""></asp:Label>&nbsp;<asp:Label ID="Label27" runat="server" Text="" CssClass="text-hide" Font-Size="XX-Large" Visible="false"></asp:Label><asp:Label ID="lbluser" runat="server" Text="" CssClass="text-hide" Font-Size="XX-Large" Visible="false"></asp:Label></h3>
                        </div>
                    </div>
                </div>
            </div>
    
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="well well-sm">
                        <form>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="name">
                                            FeedBack&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Write Message." ControlToValidate="txtmessage" ForeColor="Red"></asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="txtmessage" runat="server" CssClass="form-control" Rows="9" cols="50" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <asp:Button ID="btnsend" runat="server" Text=" Send Message" CssClass="btn btn-primary pull-right" OnClick="btnsend_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    
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
</asp:Content>

