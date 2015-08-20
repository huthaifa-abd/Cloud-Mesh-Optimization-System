<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUploadControl" runat="server" />
            <asp:Button ID="btnUpload" Text="Upload File" OnClick="btnUpload_Click" runat="server" />
            <asp:Label ID="labUploadStatus" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnDecimateMesh" runat="server" Text="DecimateMesh" OnClick="btnDecimateMesh_Click" />
            <asp:Button ID="btnGenerateAssetBundel" runat="server" Text="Generate Asset Bundel" OnClick="btnGenerateAssetBundel_Click" />

            <br />
            <asp:TextBox ID="txtResults" TextMode="MultiLine" runat="server" Height="143px" Width="826px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
