<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webControl.aspx.cs" Inherits="WebASP.NET.webControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
        <br />
        <br />
        <asp:DropDownList ID="cboTeams" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cboTeams_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblResult" runat="server" BackColor="YellowGreen" BorderStyle="Double" Width="700px"></asp:Label>


    </form>
</body>
</html>
