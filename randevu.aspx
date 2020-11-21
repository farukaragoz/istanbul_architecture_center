<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="randevu.aspx.cs" Inherits="randevu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnt" runat="Server">
    <asp:ScriptManager ID="sc" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="randevu">
                <div class="row">
                    <h1>MAKE AN APPOINTMENT</h1>
                </div>

                <div class="col-md-12">
                    <div class="form-group row" style="margin-top: 10px">
                        <asp:Label runat="server" Text="Label" class="col-md-3 col-form-label">Name Surname:</asp:Label>
                        <div class="col-md-9">
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Name Surname" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" Text="Label" class="col-md-3 col-form-label">Identification Number:</asp:Label>
                        <div class="col-md-9">
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Identification Number" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" Text="Label" class="col-md-3 col-form-label">Appointment Date:</asp:Label>
                        <div class="col-md-9">
                            <asp:TextBox type="date" runat="server" class="form-control" placeholder="RANDEVU TARİHİ" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" Text="Label" class="col-md-3 col-form-label">Part:</asp:Label>
                        <div class="col-md-9">
                            <asp:DropDownList class="ddl col-form-label" ID="ddl1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                                <asp:ListItem Value="0">Choose..</asp:ListItem>
                                <asp:ListItem Value="1">Exhibition and Activity Spaces</asp:ListItem>
                                <asp:ListItem Value="2">Library</asp:ListItem>
                                <asp:ListItem Value="3">Offices</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="form-group row">
                        <asp:Label runat="server" Text="Label" class="col-md-3 col-form-label">Section:</asp:Label>
                        <div class="col-md-9">
                            <asp:DropDownList class="ddl col-form-label" ID="ddl2" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row" style="margin: -10px 7px 15px 0; float: right">
                        <asp:Button ID="btnGonder" class="btn btn-secondary" runat="server" Text="MAKE AN APPOINTMENT" OnClick="btnGonder_Click" />

                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <div class="wp_alert_mask" style="display: none">
        <div class="wp_alert_dis">
            <div class="wp_alert_ust">
                <div class="col-md-6">&nbsp;</div>
                <div class="col-md-6 pading_no">
                    <a id="btn_close" class="wp_alert_btn" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="col-md-12 pading_no">
                <div class="alert alert-danger">
                    <div id="mesaj_yaz"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

