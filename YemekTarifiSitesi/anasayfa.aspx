<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }

        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">   
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5" border="3">
                <tr>
                    <td>


                        <h1 style="text-align: center">
                            <a href="yemek_detay.aspx?yemek_id=<%#Eval("yemek_id") %>">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("yemek_ad") %>' BorderColor="White" BorderStyle="None" ForeColor="White" style="font-size: xx-large"></asp:Label>
                        </a>
                           </h1> 
                        


                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>YEMEK MALZEMELERİ:</h4>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemek_malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>YEMEK TARİFİ:</h4>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemek_tarif") %>'></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-weight: 700; font-style: italic">TARİH:<asp:Label ID="Label6" runat="server" Text='<%# Eval("yemek_tarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PUAN:<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemek_puan") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ:<asp:Label ID="Label8" runat="server" Text='<%# Eval("kategori_id") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

