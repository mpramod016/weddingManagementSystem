<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="Myaccount.aspx.cs" Inherits="Myaccount" %>

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
        /* Head */

        .acc-col {
            min-height: 300px;
            margin-top: 5%;
            background-color: #ffffff;
            padding: 20px;
            /*      border:#333 solid 1px;*/
        }

            .acc-col > h3 {
                padding-bottom: 20px;
            }

        hr {
            border: solid 1px #d6d6d6;
        }

        section > form > div {
            padding: 5px;
        }

        .btn-div {
            margin-top: 10px;
            padding-bottom: 10px;
        }


        .ui-67 .ui-head {
            text-align: center;
            padding: 30px 0px;
            position: relative;
            border-bottom: 2px solid #fff;
            box-shadow: 0px 0px 5px rgba(0,0,0,0.1);
            background-color: #1997c6;
        }
            /* Details */
            .ui-67 .ui-head .ui-details {
                margin: 0px 0px 74px;
            }

                .ui-67 .ui-head .ui-details h3 {
                    color: #fff;
                    font-size: 40px;
                    line-height: 60px;
                    font-weight: 300;
                }

        @media (max-width:400px) {
            .ui-67 .ui-head .ui-details h3 {
                font-size: 25px;
                line-height: 40px;
                font-weight: 400;
            }
        }

        .ui-67 .ui-head .ui-details h4 {
            color: #fff;
            font-size: 18px;
            line-height: 38px;
            font-weight: 400;
        }
        /* Image */
        .ui-67 .ui-head .ui-image {
            width: 100%;
            position: absolute;
            bottom: -55px;
            z-index: 10;
        }

        .ui-67 .ui-head img {
            width: 120px;
            border-radius: 100%;
            margin: 0px auto;
            border: 4px solid #fff;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
                <div class="">
                    <!-- UI - X Starts -->
                    <div class="ui-67">

                        <!-- Head Starts -->
                        <div class="ui-head bg-lblue">
                            <!-- Details -->
                            <div class="ui-details">
                                <!-- Name -->
                                <h3 id="name-header"><asp:Label ID="lblusername" runat="server" Text="" Font-Size="XX-Large"></asp:Label>&nbsp;<asp:Label ID="Label1" runat="server" Text="" CssClass="text-hide" Font-Size="XX-Large" Visible="false"></asp:Label><asp:Label ID="lbluser" runat="server" Text="" CssClass="text-hide" Font-Size="XX-Large" Visible="false"></asp:Label></h3>
                                <!-- Designation -->
                                <h4>User Account<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h4>
                            </div>
                            <!-- Image -->
                            <div class="ui-image">
                                <!-- User Image -->
                                <img src="Image/User-icon.png" alt="Profile Picture" class="img-responsive" width="100" height="100">
                            </div>
                        </div>
                        <!-- Head Ends -->

                        <!-- Content Starts -->
                        <div class="ui-content">

                            <div class="row">

                                <div class="col-sm-8 col-md-8 col-lg-8 col-lg-offset-2 acc-col">
                                    <section>
                                        <h3>Contact Information</h3>
                                        <form class="ng-pristine ng-valid" role="form">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <label for="txtFristname" class="control-label">First Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" ControlToValidate="txtFristname" ForeColor="Red"></asp:RequiredFieldValidator></label>
                                                    <asp:TextBox ID="txtFristname" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-6">
                                                    <label for="txtlastName" class="control-label">Last Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter First Name" ControlToValidate="txtlastName" ForeColor="Red"></asp:RequiredFieldValidator></label>
                                                    <asp:TextBox ID="txtlastName" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <label for="inputEmail3" class="control-label">Email:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter your email" CssClass="text-danger" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator></label>
                                                     <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-6">
                                                    <label for="txtmobilenumber" class="control-label">Mobile Number:  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobilenumber" ErrorMessage="*enter moblie number is required" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator></label>
                                                    <asp:TextBox ID="txtmobilenumber" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <label for="txtaddress" class="control-label">Address:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator></label>
                                                     <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Columns="20"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="btn-div">
                                                    <asp:Button ID="btnupdate" runat="server" Text="Update"  CssClass="btn btn-success pull-right" OnClick="btnupdate_Click"/>
                                                </div>
                                            </div>
                                        </form>
                                    </section>
                                </div>
                                <!-- col-8 -->
                            </div>

                        </div>
                        <!-- Content Ends -->
                    </div>
                    <!-- UI - X Ends -->
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
</asp:Content>

