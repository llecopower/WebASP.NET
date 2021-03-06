<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebASP.NET.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web ASP</title>

    <style type="text/css">

        .auto-style1 {
            text-align: center;
            color:saddlebrown;
        }

        .auto-style2 {
           width:430px;
        }

        .auto-style3 {
           width:400px;
        }

        .auto-style4 {
           width:100px;
           height:50px;
        }

        .auto-style5 {
           margin-left: 0px;
           margin-top:0px;
        }

        .auto-style6 {
           width:270px;
        }

        .auto-style7 {
           width:270px;
           height:50px;
        }

        .auto-style8 {
          margin-top:0px;
          border-radius:30px;
        }

        .auto-style9 {
           width:580px;
           height:730px;
        }

        .auto-style10 {
           width:100px;
          
        }
       .auto-style11 {
           width:500px;
          
        }

         .auto-style12 {
           height:120px;
          
        }
         .stylePanel {
            border-radius:30px;
        }

        .tecboc {

            border-radius:5px;

        }

        .auto-style15 {
          margin-top:0px;
          border-radius:30px;
        }



    </style>


</head>
<body style="background-color:antiquewhite">    
    
    
    <form id="form1" runat="server" class="auto-style9">
        <div>
            <h1 class="auto-style1"> P I Z Z A - H U R T S </h1>
        </div>

        <hr class="auto-style2" />

        <br />

        <table class="auto-style11">

            <tr style="vertical-align:top;">
                <td class="auto-style12">

                    <asp:Panel ID="panPizza" CssClass="stylePanel" BackColor="#cc6600" runat ="server" GroupingText="Pizza Informations" Height="100%" Width="450px">

                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblCustomer" runat="server" AccessKey="c" 
                                        AssociatedControlID="txtCustomer" Text="Customer"></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:TextBox ID="txtCustomer" CssClass="tecboc" runat="server" Width="200px"></asp:TextBox>
                                </td>

                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblTelephone" runat="server" AccessKey="t" 
                                        AssociatedControlID="TextPhone" Text="Telephone"></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:TextBox ID="TextPhone" TextMode="Phone" CssClass="tecboc" runat="server" Width="200px"></asp:TextBox>
                                </td>

                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblDelivery" runat="server" Text="To deliver?"></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:CheckBox ID="chkDelivery"  runat="server" OnCheckedChanged="chkDelivery_CheckedChanged" AutoPostBack="True" ></asp:CheckBox>
                                </td>

                            </tr>

                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                                </td>

                                <td class="auto-style7">
                                    <asp:TextBox ID="txtAddress" runat="server" Height="45px" TextMode="MultiLine" CssClass="tecboc"  Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblPizza" runat="server" Text="Pizza"></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:DropDownList ID="cboPizza" runat="server" CssClass="tecboc" AutoPostBack="True" OnSelectedIndexChanged="cboPizza_SelectedIndexChanged" Width="207px">
                                        <asp:ListItem>  Select a Pizza </asp:ListItem>
                                    </asp:DropDownList>
                    </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblPizzaSize" runat="server" Text="Pizza Size"></asp:Label>
                                </td>

                                <td class="auto-style6">
                         
                                     <asp:ListBox ID="lstPizzaSize" runat="server" CssClass="tecboc" AutoPostBack="true" Width="200px"></asp:ListBox>

                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblToppings" runat="server" Text="Toppings"></asp:Label>
                                </td>

                                <td class="auto-style6">
                         
                                     <asp:CheckBoxList ID="chklstToppings" runat="server" AutoPostBack="true"></asp:CheckBoxList>

                                </td>
                            </tr>

                              <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblPizzaCrust" runat="server" Text="Pizza Crust"></asp:Label>
                                </td>

                                <td class="auto-style6">
                         
                                     <asp:RadioButtonList ID="radlstCrust" runat="server" AutoPostBack="true"></asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>

                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </td> 


                <td class="auto-style12">
                    
                    <asp:Panel ID="panPricing" runat="server" GroupingText="Pricing" Height="250px" Width="250px" BackColor="#cc6600" CssClass="auto-style8">
                        <asp:Image ID="imgHurtz" runat="server" Height="80px" Width="90px" CssClass="auto-style5" ImageUrl="~/logo.png"  />
                          <asp:Literal ID="litPricing" runat="server"></asp:Literal>
                        <asp:Button ID="btnOrderNow" runat="server" Text="Order Now" OnClick="btnOrderNow_Click" />
                    </asp:Panel>
                    <br />

                    <asp:Panel ID="panOrder" runat="server" CssClass="auto-style15" GroupingText="Order Informations" BackColor="#cc6600" >
                        <asp:Literal ID="litOrder" runat="server"> </asp:Literal>
                    </asp:Panel>

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
