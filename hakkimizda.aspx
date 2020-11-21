<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hakkimizda.aspx.cs" Inherits="hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnt" runat="Server">
    
    <div class="hakkimizda">
        <div class="row" style="margin-bottom:15px;">
            <h1>ABOUT</h1>
        </div>
            <img src="img/hakkimizda.jpg" class="img-fluid">
            
            <asp:Repeater ID="rpHakkimdaYazi" runat="server">
                <ItemTemplate>
                    <p class="hakkimizdaYazi"><%#Eval("HakkimdaYazi") %></p>
                </ItemTemplate>
            </asp:Repeater>


            <%--<p class="hakkimizdaYazi">
                    Thanks to the design and functions of the building, IAC- Istanbul Architecture Center ensures that the crowd and 
                    circulation of the district is felt within the building. In our center, we have facilities such as Library, 
                    Hobby areas, various activity areas, conference halls, study rooms. There is no specific age range.
            </p>


            <p class="hakkimizdaYazi">
                In our building, we have two slides going down from the hobby rooms to the ground floor. 
                You can socialize in our cafes, recreation rooms and chat areas, as well as have a pleasant time. 
                Our main goal is to create a functional area by combining the activities to be done both architecturally and 
                culturally in our Center.
            </p>
            <p class="hakkimizdaYazi">
                Every detail of the building has been carefully prepared and at the same time, every detail is functional. 
                Before entering the center, an appointment must be made through the website. Each person is given a special code. 
                The center can only be entered with the codes given. When they enter the building and when the time is over, 
                the bracelet given to them will turn into red and they will be warned that they should exit. 
                We wish you a pleasant time.
            </p>--%>
        </div>
</asp:Content>

