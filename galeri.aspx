<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="galeri.aspx.cs" Inherits="galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnt" runat="Server">
    <div class="galeri">
        <div class="row" style="margin-bottom: 15px;">
            <h1>GALLERY</h1>
        </div>
        <div class="row" style="display:flex;display: -ms-flexbox;-ms-flex-wrap: wrap;flex-wrap: wrap;">

            <div class="column">
                <asp:Literal ID="ltrl_col_1" runat="server"></asp:Literal>     
            </div>
            <div class="column">
                 <asp:Literal ID="ltrl_col_2" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
</asp:Content>

