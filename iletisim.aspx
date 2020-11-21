<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnt" runat="Server">
    <div class="iletisim">
        <div class="row">
            <h1>CONTACT</h1>
        </div>
        <div class="row harita">
            <div class="embed-responsive embed-responsive-21by9">
                <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10057.649212082008!2d29.021814947390627!3d40.98531509578977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab860c6408d07%3A0xc64ef9202cce1562!2zQ2FmZXJhxJ9hLCAzNDcxMCBLYWTEsWvDtnkvxLBzdGFuYnVs!5e0!3m2!1str!2str!4v1604682259550!5m2!1str!2str"></iframe>
            </div>
        </div>
        <div class="row iletisimAlt">
            <div class="col-md-12 ">

                <div class="row">
                    <div class="col-md-6">
                        <div class="row" style="margin: 0; border: 1px solid #BDBDBD;">
                            <div class="col-md-12" style="margin-top: 10px;">
                                <div class="form-group row">

                                    <asp:label runat="server" text="Label" class="col-md-3 col-form-label">Name:</asp:label>
                                    <div class="col-md-9">
                                        <asp:textbox type="text" runat="server" class="form-control" placeholder="Name" required></asp:textbox>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <asp:label runat="server" text="Label" class="col-md-3 col-form-label">Surname:</asp:label>
                                    <div class="col-md-9">
                                        <asp:textbox type="text" runat="server" class="form-control" placeholder="Surname" required></asp:textbox>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <asp:label for="" runat="server" text="Label" class="col-md-3 col-form-label">Your Message:</asp:label>
                                    <div class="col-md-9">
                                        <textarea id="" class="form-control" cols="30" rows="6" placeholder="Message" required></textarea>
                                    </div>
                                </div>
                                <div class="row" style="margin: -10px 5px 15px 0; float: right">
                                    <asp:button ID="btnSend" OnClick="btnSend_Click" runat="server" text="SEND" class="btn btn-secondary" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row iletisimAdres" >
                            <h2>ADDRESS</h2>

                            <asp:Literal ID="ltrl_yazilar" runat="server"></asp:Literal>

                            <span class="iletisimSpan iletisimSocial" style="margin-top:-99px">
                                <asp:Literal ID="ltrl_sosyaller" runat="server"></asp:Literal>   
                            </span>

                            <%--<span class="iletisimSpan">Caferağa, Kadıköy / İstanbul</span>
                            <span class="iletisimSpan" style="margin-top: -60px;">0539 655 76 52</span>
                            <span class="iletisimSpan" style="margin-top: -83px;">aycatarakcioglu@gmail.com</span>--%>
                            <%--<span class="iletisimSpan iletisimSocial" style="margin-top: -99px;">
                                <i class="fab fa-twitter"></i>
                                <i class="fab fa-instagram"></i>
                                <i class="fab fa-facebook"></i>
                                <i class="fab fa-google"></i>
                            </span>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="wp_alert_mask" style="display:none">
        <div class="wp_alert_dis">
            <div class="wp_alert_ust">
                <div class="col-md-6 pading_no">&nbsp;</div>
                <div class="col-md-6 pading_no">
                    <a id="btn_close" class="wp_alert_btn" href="#" ><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="col-md-12 pading_no">
                <div class="alert alert-danger"><div id="mesaj_yaz"></div></div>
            </div>
        </div>
    </div>
</asp:Content>

