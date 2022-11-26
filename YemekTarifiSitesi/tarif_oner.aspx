<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="tarif_oner.aspx.cs" Inherits="tarif_oner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-weight: bold;
            text-align: center;
        }
        .auto-style5 {
            font-weight: bold;
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">TARİF ADI:</td>
            <td>
                <asp:TextBox ID="txttarifad" runat="server" Width="380px"></asp:TextBox>
            </td>          
        </tr>
        <hr>
        <tr>
            <td class="auto-style5">MALZEMELER:</td>
            <td>
                <asp:TextBox ID="txtmalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="380px"></asp:TextBox>
            </td>
        </tr>
        <hr>
        <tr>
            <td class="auto-style5">TARİF:</td>
            <td>
                <asp:TextBox ID="txttarif" runat="server" Height="200px" TextMode="MultiLine" Width="380px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">RESİM:</td>
            <td>
                <asp:FileUpload ID="FileUploadPicture" runat="server" Width="380px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">TARİFİ ÖNEREN:</td>
            <td>
                <asp:TextBox ID="txt_tarifoneren" runat="server" Width="380px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">MAİL:</td>
            <td>
                <asp:TextBox ID="txtmail" runat="server" TextMode="Email" Width="380px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btnoner" runat="server" CssClass="auto-style4" Text="ÖNER" Width="144px" Height="29px" OnClick="btnoner_Click" />
            </td>
        </tr>
    </table>
    <hr>
    <hr>
</asp:Content>

