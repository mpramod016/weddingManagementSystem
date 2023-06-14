<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="BookEventPage.aspx.cs" Inherits="BookEventPage" EnableEventValidation="false" ValidateRequest="false" %>

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
   <!--Budget-->
                    <div class="jumbotron jumbotron-sm" style="background-image: url('Image/Weddingtitle.jpg');">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-lg-12">
                                    <h1>Book Event<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row cart-body">
                            <form class="form-horizontal" method="post" action="">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                                    <!--REVIEW ORDER-->
                                    <div class="panel panel-info">
                                        <div class="panel-heading">
                                            Your requirement
                                <div class="pull-right"></div>
                                        </div>
                                        <asp:Label ID="lblBalance" runat="server" Text="" Visible="false"></asp:Label>
                                        <div class="panel-body">
                                         <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                    <label>Date:</label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" CssClass="text-danger" ControlToValidate="txtdate"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" placeholder="MM/DD/YYYY" TextMode="Date"></asp:TextBox>
                                                     <asp:CustomValidator ID="CustomValidator1" ControlToValidate="txtDate" runat="server" CssClass="text-center text-danger" ErrorMessage="Enter valid date in the future" Display="Dynamic" onservervalidate="CustDateValidator_ServerValidate" ></asp:CustomValidator>
                                            </div>
                                            <div class="form-group">
                                               <label>No of Member</label>
                                               <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Capcity Not Match" CssClass="text-danger" Operator="LessThanEqual" ControlToCompare="lblCapcity" Type="Integer" ControlToValidate="txtMember"></asp:CompareValidator>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field"  CssClass="text-danger" ControlToValidate="txtMember"></asp:RequiredFieldValidator>
                                               <asp:TextBox ID="txtMember" runat="server" CssClass="form-control" placeholder="Enter No's of Member"></asp:TextBox>
                                            </div>
                                            </div>
                                            <div class="col-lg-12">
                                            <div class="form-group">
                                            <label>Capcity</label>
                                                <asp:TextBox ID="lblCapcity" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                            </div>
                                            </div>
                                        <div class="col-lg-12">
                                        <div class="form-group">
                                                <div class="form-group">
                                                    <asp:Label ID="LblTotal" runat="server" Font-Size="XX-Large" Text="Total Budget" Visible="false"></asp:Label>
                                                    <label>Total:</label>
                                                    <asp:Label ID="Total" runat="server"  Text="0.00"></asp:Label>
                                                </div>
                                            
                                                <div class="form-group">
                                                    <asp:Button ID="Button1" runat="server" Text="Calculate" CssClass="btn btn-warning btn-block btn-lg" OnClick="Button1_Click1" CausesValidation="false" />
                                                </div>
                                            <div class="form-group">
                                                <label>Advance Payment</label>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field"  CssClass="text-danger" ControlToValidate="txtAdvance"></asp:RequiredFieldValidator>
                                               <asp:TextBox ID="txtAdvance" Enabled="false" runat="server" CssClass="form-control" placeholder="Enter No's of Member"></asp:TextBox>
                                            </div>
                                                <div class="form-group">
                                                    <asp:Button ID="btnsubmit" runat="server" Text="Book" 
                                                        CssClass="btn btn-success btn-block btn-lg" onclick="btnsubmit_Click" CausesValidation="true" />
                                                </div>

                                            </div>
                                        </div>
                                            </div>
                                            </div>
                                        </div>
                                    <!--REVIEW ORDER END-->
                                </div>

                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                                    <!--SHIPPING METHOD-->
                                    <div class="panel panel-info">
                                        <div class="panel-heading">Your details</div>
                                        <div class="panel-body">
                                         <div class="row">
                                        <div class="col-lg-12">
                                             <div class="form-group">
                                            <label>Book ID</label>&nbsp;<asp:Label ID="lblBookid" runat="server" Text="Label" Visible="false"></asp:Label>
                                            <asp:TextBox ID="txtBookID" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                             <div class="form-group">
                                                                                       <label>Prefered For</label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="Required field" ControlToValidate="ddlPrefered"></asp:RequiredFieldValidator>
                                                <asp:DropDownList ID="ddlPrefered" runat="server"  CssClass="form-control">
                                                    <asp:ListItem>All</asp:ListItem>
                                                    <asp:ListItem>Marriage</asp:ListItem>
                                                    <asp:ListItem>Famliy Function</asp:ListItem>
                                                    <asp:ListItem>Birthday Party</asp:ListItem>
                                                    <asp:ListItem>Anniversary Party</asp:ListItem>
                                                    <asp:ListItem>College Events</asp:ListItem>
                                                    <asp:ListItem>Farewell Praty</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                             <div class="form-group">
                                            <label>Venue Name</label>
                                             <asp:DropDownList ID="ddlVenueName" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlVenueName_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                               <div class="form-group">
                                            <label>Venue Price</label>
                                          <asp:TextBox ID="txtRS" runat="server" CssClass="form-control"  Text="0"   Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                            <label>Decoration Name</label>
                                             <asp:DropDownList ID="DropDownList1Decoration" runat="server" 
                                                     CssClass="form-control" AutoPostBack="true" 
                                                     onselectedindexchanged="DropDownList1Decoration_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                               <div class="form-group">
                                            <label>Decoration Price</label>
                                          <asp:TextBox ID="TextBox1Decoration" runat="server" CssClass="form-control" Text="0"   Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                            <label>Entertainment Name</label>
                                             <asp:DropDownList ID="DropDownList2Entertainment" runat="server" 
                                                     CssClass="form-control" AutoPostBack="true" 
                                                     onselectedindexchanged="DropDownList2Entertainment_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                               <div class="form-group">
                                            <label>Entertainment Price</label>
                                          <asp:TextBox ID="TextBox2Entertainment" runat="server" CssClass="form-control"  Text="0"   Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                            <label>Hotel Name</label>
                                             <asp:DropDownList ID="DropDownList3Hotel" runat="server" CssClass="form-control" 
                                                     AutoPostBack="true" 
                                                     onselectedindexchanged="DropDownList3Hotel_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                               <div class="form-group">
                                            <label>Hotel Price</label>
                                          <asp:TextBox ID="TextBox3Hotel" runat="server" CssClass="form-control"  Text="0"   Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                            <label>Location Name</label>
                                             <asp:DropDownList ID="DropDownList4Location" runat="server" CssClass="form-control" 
                                                     AutoPostBack="true" 
                                                     onselectedindexchanged="DropDownList4Location_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                               <div class="form-group">
                                            <label>Location Price</label>
                                          <asp:TextBox ID="TextBox4Location" runat="server" CssClass="form-control" Text="0"  Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                            <label>Photoshoot Name</label>
                                             <asp:DropDownList ID="DropDownList5Photoshoot" runat="server" 
                                                     CssClass="form-control" AutoPostBack="true" 
                                                     onselectedindexchanged="DropDownList5Photoshoot_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                               <div class="form-group">
                                            <label>Photoshoot Price</label>
                                          <asp:TextBox ID="TextBox5Photoshoot" runat="server" CssClass="form-control"  Text="0"  Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                            <label>VideoShoot Name</label>
                                             <asp:DropDownList ID="DropDownList6VideoShoot" runat="server" 
                                                     CssClass="form-control" AutoPostBack="true" 
                                                     onselectedindexchanged="DropDownList6VideoShoot_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                               <div class="form-group">
                                            <label>VideoShoot Price</label>
                                          <asp:TextBox ID="TextBox6VideoShoot" runat="server" CssClass="form-control"  Text="0"   Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                        </div>
                                            </div>
                                        </div>
                                        <!--SHIPPING METHOD END-->
                                        <!--CREDIT CART PAYMENT-->
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
</asp:Content>

