<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="yemek_detay.aspx.cs" Inherits="yemek_detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: large;
        }
        .auto-style8 {
            text-align: left;
            width: 747px;
        }
        .auto-style9 {
            width: 747px;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style12 {
            font-size: large;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; <asp:Label ID="Label3" runat="server" style="font-size: x-large; font-weight: 700; font-style: italic; text-align: center;" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong><span class="auto-style10">AD SOYAD:</span><span class="auto-style5"> </span></strong>
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text='<%# Eval("yorum_adsoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <p>
                            <strong>&nbsp;&nbsp;&nbsp; Fikir:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("yorum_icerik") %>'></asp:Label>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; border-bottom-style: ridge;" class="auto-style9">
                        <asp:Label ID="Label6" runat="server" style="font-size: x-small" Text='<%# Eval("yorum_tarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <hr>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:Panel runat="server">
        <table class="auto-style1" style="background-color: #990000; color: #FFFFFF" border="2">
            <tr>
                <td class="auto-style12">AD SOYAD:</td>
                <td>
                    <asp:TextBox ID="txtAd" runat="server" Width="327px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">MAİL:</td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">YORUM:</td>
                <td>
                    <asp:TextBox ID="txtIcerik" runat="server" Height="178px" TextMode="MultiLine" Width="331px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>
                   <a href="anasayfa.aspx"> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" Width="126px" /></a>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

