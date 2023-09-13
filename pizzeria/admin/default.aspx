<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pizzeria.admin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem disabled="disabled" Text="seleziona una pizza"></asp:ListItem>
                <asp:ListItem Value="margherita" Text="margherita 5.50€"></asp:ListItem>
                <asp:ListItem Value="diavola" Text="diavola 7.00€"></asp:ListItem>
                <asp:ListItem Value="americana" Text="americana 7.50€"></asp:ListItem>
            </asp:DropDownList>
            <h2>seleziona ingredienti da aggiungere</h2>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">

                <asp:ListItem Value="1,50" Text=" farina integrale 1.50€"></asp:ListItem>
                <asp:ListItem Value="1,00" Text="mozzarella senza lattosio 1.00€"></asp:ListItem>
                <asp:ListItem Value="2,50" Text="mozzarella di bufala lattosio 2.50€"></asp:ListItem>
                <asp:ListItem Value="2,00" Text="maggiore condimento 2.00€"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="Button1" runat="server" Text="aggiungi una pizza" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="conto" OnClick="Button2_Click" />
            <p id="p1" runat="server"></p>
            <p id="p2" runat="server"></p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="btn btn-danger">logOut</asp:LinkButton>
        </div>


    </form>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
