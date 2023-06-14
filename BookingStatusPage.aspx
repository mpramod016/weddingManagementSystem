<%@ Page Title="" Language="C#" MasterPageFile="~/EventHomePage.master" AutoEventWireup="true" CodeFile="BookingStatusPage.aspx.cs" Inherits="BookingStatusPage" %>

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
                            <h1>Booking Status<asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></h1>
                           <h3 id="name-header">
                            Logged:&nbsp;<asp:Label ID="lblusername" runat="server" Text=""></asp:Label>&nbsp;<asp:Label ID="Label27" runat="server" Text="" CssClass="text-hide" Font-Size="XX-Large" Visible="false"></asp:Label><asp:Label ID="lbluser" runat="server" Text="" CssClass="text-hide" Font-Size="XX-Large" Visible="false"></asp:Label></h3>
                    </div>
                    </div>
                </div>
            </div>

                    <div class="container">
            <div class="row">
                <div class="col-md-8">
                <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">  
               <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover">
               </asp:GridView>
                  </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
                </div>
                </div>
</asp:Content>

