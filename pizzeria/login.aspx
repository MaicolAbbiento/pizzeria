<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="pizzeria.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
           <div>
            <asp:TextBox ID="Username" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Accedi"  OnClick="Button1_Click" />
        </div>
        <div id="DatiNonCorretti" class="alert alert-danger" runat="server">
            <p>Dati non corretti! Riprova</p>
        </div>
    </form>
        <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
