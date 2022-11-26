<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="gunun_yemegi.aspx.cs" Inherits="gunun_yemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <p style="text-align: center">
                            <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large; text-align: center;" Text='<%# Eval("gununyemegi_ad") %>'></asp:Label>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>MALZEMELER:</h3>
&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("gununyemegi_malzeme") %>'></asp:Label>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>TARİF:</h3>
                                &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("gununyemegi_tarif") %>'></asp:Label>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="197px" Width="294px" ImageUrl="~/Image/firinda-soslu-tavuk-but-11.jpg" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: left"><strong style="text-align: left">PUAN:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("gununyemegi_puan") %>'></asp:Label>
                                </td>
                                <td><strong>TARİH:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("gununyemegi_tarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

