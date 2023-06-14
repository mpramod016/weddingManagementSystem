﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    #invoice{
    padding: 30px;
}

.invoice {
    position: relative;
    background-color: #FFF;
    min-height: 680px;
    padding: 15px
}

.invoice header {
    padding: 10px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #3989c6
}

.invoice .company-details {
    text-align: right
}

.invoice .company-details .name {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .contacts {
    margin-bottom: 20px
}

.invoice .invoice-to {
    text-align: left
}

.invoice .invoice-to .to {
    margin-top: 0;
    margin-bottom: 0
}

.invoice .invoice-details {
    text-align: right
}

.invoice .invoice-details .invoice-id {
    margin-top: 0;
    color: #3989c6
}

.invoice main {
    padding-bottom: 50px
}

.invoice main .thanks {
    margin-top: -100px;
    font-size: 2em;
    margin-bottom: 50px
}

.invoice main .notices {
    padding-left: 6px;
    border-left: 6px solid #3989c6
}

.invoice main .notices .notice {
    font-size: 1.2em
}

.invoice table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    margin-bottom: 20px
}

.invoice table td,.invoice table th {
    padding: 15px;
    background: #eee;
    border-bottom: 1px solid #fff
}

.invoice table th {
    white-space: nowrap;
    font-weight: 400;
    font-size: 16px
}

.invoice table td h3 {
    margin: 0;
    font-weight: 400;
    color: #3989c6;
    font-size: 1.2em
}

.invoice table .qty,.invoice table .total,.invoice table .unit {
    text-align: right;
    font-size: 1.2em
}

.invoice table .no {
    color: #fff;
    font-size: 1.6em;
    background: #3989c6
}

.invoice table .unit {
    background: #ddd
}

.invoice table .total {
    background: #3989c6;
    color: #fff
}

.invoice table tbody tr:last-child td {
    border: none
}

.invoice table tfoot td {
    background: 0 0;
    border-bottom: none;
    white-space: nowrap;
    text-align: right;
    padding: 10px 20px;
    font-size: 1.2em;
    border-top: 1px solid #aaa
}

.invoice table tfoot tr:first-child td {
    border-top: none
}

.invoice table tfoot tr:last-child td {
    color: #3989c6;
    font-size: 1.4em;
    border-top: 1px solid #3989c6
}

.invoice table tfoot tr td:first-child {
    border: none
}

.invoice footer {
    width: 100%;
    text-align: center;
    color: #777;
    border-top: 1px solid #aaa;
    padding: 8px 0
}

@media print {
    .invoice {
        font-size: 11px!important;
        overflow: hidden!important
    }

    .invoice footer {
        position: absolute;
        bottom: 10px;
        page-break-after: always
    }

    .invoice>div:last-child {
        page-break-before: always
    }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!--Author      : @arboshiki-->
<div id="invoice">

    <div class="toolbar hidden-print">
        <div class="text-right">
            <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
            <a class="btn btn-info" href="EventHomePage.aspx"> Home</a>
        </div>
        <hr>
    </div>
    <div class="invoice overflow-auto">
        <div style="min-width: 600px">
            <header>
                <div class="row">
                    <div class="col">
                        <a target="_blank">
                           Wedding Management System
                            </a>
                    </div>
                    <div class="col company-details">
                        <h2 class="name">
                            <a target="_blank">
                            Wedding Management System
                            </a>
                        </h2>
                        <div>apirna dairy near vitthalwade ssttaion ganesh colony</div>
                        <div>8087466145</div>
                        <div>Weddingmanagmentsystem@gmail.com</div>
                    </div>
                </div>
            </header>
            <main>
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="row contacts">
                    <div class="col invoice-to">
                        <div class="text-gray-light">INVOICE TO:</div>
                        <h2 class="to"><%#Eval("UserMail")%></h2>
                        <div class="address"><%#Eval("UserMobile")%></div>
                    </div>
                    <div class="col invoice-details">
                        <h1 class="invoice-id">INVOICE Details</h1>
                        <div>Booking ID : <%#Eval("BookingID")%></div>
                        <div class="date">Date of Invoice: <%#Eval("DateOfPayment") %></div>
                          <div class="date">Date of Wedding: <%#Eval("WeddingDate")%></div>
                            <div>No Of Memeber: <%#Eval("NoOfMemeber")%></div>
                    </div>
                </div>
                <table border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                            <th class="text-left">DESCRIPTION</th>
                            <th class="text-right">TOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                            <td class="text-left"><%#Eval("VenueName")%></td>
                            <td class="total"><%#Eval("VenuePrice")%></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                            <td class="text-left"><%#Eval("DecorationName")%></td>
                            <td class="total"><%#Eval("DecorationPrice")%></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                            <td class="text-left"><%#Eval("EntertainmentName")%></td>
                            <td class="total"><%#Eval("EntertainmentPrice")%></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                            <td class="text-left"><%#Eval("HotelName")%></td>
                            <td class="total"><%#Eval("HotelPrice")%></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                            <td class="text-left"><%#Eval("LocationName")%></td>
                            <td class="total"><%#Eval("LocationPrice")%></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                            <td class="text-left"><%#Eval("PhotoshootName")%></td>
                            <td class="total"><%#Eval("PhotoshootPrice")%></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                            <td class="text-left"><%#Eval("VideoShootName")%></td>
                            <td class="total"><%#Eval("VideoShootPrice")%></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2"></td>
                            <td colspan="2">Total</td>
                            <td><%#Eval("Total")%>.00</td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                            <td colspan="2">AdvancePayment</td>
                            <td><%#Eval("AdvancePayment")%></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                            <td colspan="2">Balance</td>
                            <td><%#Eval("Balance")%></td>
                        </tr>
                    </tfoot>
                </table>
                </ItemTemplate>
                </asp:Repeater>
                <div class="thanks">Thank you!</div>
            </main>
            <footer>
                Invoice was created on a computer and is valid without the signature and seal.
            </footer>
        </div>
        <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
        <div></div>
    </div>
</div>
    </div>
    </form>
    <script type="text/javascript">
        $('#printInvoice').click(function () {
            Popup($('.invoice')[0].outerHTML);
            function Popup(data) {
                window.print();
                return true;
            }
        });
    </script>
</body>
</html>
