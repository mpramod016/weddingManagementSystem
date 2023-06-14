<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="BookingHistoryPage.aspx.cs" Inherits="BookingHistoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron jumbotron-sm" style="background-image: url('Image/Weddingtitle.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <h1>Booking History<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="RepeaterRole" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                             <th>View&nbsp;Bill</th>
                                                <th>#</th>
                                                <th>VenueName</th>
                                                <th>VenuePrice</th>
                                                <th>DecorationName</th>
                                                <th>DecorationPrice</th>
                                                <th>EntertainmentName</th>
                                                <th>EntertainmentPrice</th>
                                                <th>HotelName</th>
                                                <th>HotelPrice</th>
                                                <th>LocationName</th>
                                                <th>LocationPrice</th>
                                                <th>PhotoshootName</th>
                                                <th>PhotoshootPrice</th>
                                                <th>VideoShootName</th>
                                                <th>VideoShootPrice</th>
                                                <th>WeddingDate</th>
                                                <th>NoOfMemeber</th>
                                                <th>Total</th>
                                                <th>AdvancePayment</th>
                                                <th>PaymentType</th>
                                                <th>PaymentStatus</th>
                                                <th>DateOfPayment</th>
                                                <th>Preferedby</th>
                                                <th>Balance</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                    <td><a href="Invoice.aspx?BookingID=<%# Eval("BookingID")%>" class="btn btn-primary">View Invoice</a></td>
                                        <td><%# Eval("BookingID")%></td>
                                        <td><%# Eval("VenueName")%></td>
                                        <td><%# Eval("VenuePrice")%></td>
                                        <td><%# Eval("DecorationName")%></td>
                                        <td><%# Eval("DecorationPrice")%></td>
                                        <td><%# Eval("EntertainmentName")%></td>
                                        <td><%# Eval("EntertainmentPrice")%></td>
                                        <td><%# Eval("HotelName")%></td>
                                        <td><%# Eval("HotelPrice")%></td>
                                        <td><%# Eval("LocationName")%></td>
                                        <td><%# Eval("LocationPrice")%></td>
                                        <td><%# Eval("PhotoshootName")%></td>
                                        <td><%# Eval("PhotoshootPrice")%></td>
                                        <td><%# Eval("VideoShootName")%></td>
                                        <td><%# Eval("VideoShootPrice")%></td>
                                        <td><%# Eval("WeddingDate")%></td>
                                        <td><%# Eval("NoOfMemeber")%></td>
                                        <td><%# Eval("Total")%></td>
                                        <td><%# Eval("AdvancePayment")%></td>
                                        <td><%# Eval("PaymentType")%></td>
                                        <td><%# Eval("PaymentStatus")%></td>
                                        <td><%# Eval("DateOfPayment")%></td>
                                        <td><%# Eval("Preferedby")%></td>
                                        <td><%# Eval("Balance")%></td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                     </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>

