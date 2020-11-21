<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnt" runat="Server">

    <div class="col-md-12">
        <div class="row">
            <asp:Repeater ID="rpResimler" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 tablet <%#Eval("ResimClass") %>" style="<%#Eval("ResimStyle") %>">
                        <div class="row">
                            <img class="tabletResim" src="<%#Eval("Resim") %>" />
                        </div>
                        <div class="row" style="margin-top: -2px;">
                            <p class="tabletYazi"><%#Eval("ResimYazi") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <%--<div class="col-md-3 tablet bir">
                <div class="row">
                    <img class="tabletResim" src="img/kolaj1.jpg" />
                </div>
                <div class="row" style="margin-top: -2px;">
                    <p class="tabletYazi">Collage of Kadıköy</p>
                </div>
            </div>

            <div class="col-md-3 tablet iki" style="height: 288px">
                <div class="row">
                    <img class="tabletResim" src="img/kolaj4.jpg" />
                </div>
                <div class="row" style="margin-top: -2px;">
                    <p class="tabletYazi">Collage of Caferağa</p>
                </div>
            </div>
            <div class="col-md-3 tablet uc" style="height: 225px">
                <div class="row">
                    <img class="tabletResim" src="img/kolaj3.jpg" />
                </div>
                <div class="row" style="margin-top: -2px;">
                    <p class="tabletYazi">Graffiti Collage</p>
                </div>
            </div>
            <div class="col-md-3 tablet dort" style="height: 191px">
                <div class="row">
                    <img class="tabletResim" src="img/kolaj2.jpg" />
                </div>
                <div class="row" style="margin-top: -2px;">
                    <p class="tabletYazi">Crowd Collage</p>
                </div>
            </div>--%>
        </div>
        <div class="row" style="margin-top: 15px">
            

            <asp:Repeater ID="rpYazilar" runat="server">
                <ItemTemplate>
                    <div class="col-md-12 yazilar">
                        <div class="row baslik">
                            <%#Eval("Baslik") %>
                        </div>
                        <div class="row yazi">
                            <%#Eval("Aciklama") %>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            <%--<div class="col-md-12 yazilar">
                <div class="row baslik">
                    Library
                </div>
                <div class="row yazi">
                    Our library, where books can be found in every field, is at your service. You can choose and read a book in the library or borrow the book and read and deliver it within the given time.
                </div>
            </div>
            <div class="col-md-12 yazilar">
                <div class="row baslik">
                    Offices
                </div>
                <div class="row yazi">
                    You can benefit from all the possibilities of this area where the offices are located.
                </div>
            </div>
            <div class="col-md-12 yazilar">
                <div class="row baslik">
                    Lecture Hall
                </div>
                <div class="row yazi">
                    You can attend the conferences that will be held regularly, and you have the chance to meet one-on-one with the speakers after the conference.
                </div>
            </div>
            <div class="col-md-12 yazilar">
                <div class="row baslik">
                    Study Rooms (Group)
                </div>
                <div class="row yazi">
                    If you need more than one person, you can take advantage of your own group rooms.
                </div>
            </div>
            <div class="col-md-12 yazilar">
                <div class="row baslik">
                    Activity Spaces
                </div>
                <div class="row yazi">
                    In our activity areas where our hobby rooms are located, you can find hobbies that are close to you and have a pleasant time and learn new things at the same time.
                </div>
            </div>
            <div class="col-md-12 yazilar">
                <div class="row baslik">
                    Multipurpose Hall
                </div>
                <div class="row yazi">
                    In our multi-purpose halls, you can think for what purpose you will use it and after making the necessary appointment, you can use it as you wish and have a pleasant time.
                </div>
            </div>--%>
        </div>
    </div>

</asp:Content>

