<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_12.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="Uchet" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="InfoId"
                ShowHeaderWhenEmpty="True"

                OnRowCommand="Uchet_RowCommand" CellPadding="4" GridLines="None" ForeColor="#333333">
                
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />

                <Columns>
                    <asp:TemplateField HeaderText="member">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Sotrudnik") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSotrudnik" Text='<%#Eval("Sotrudnik") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtSotrudnikFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="DataPost">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("DataPost") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDataPost" Text='<%#Eval("DataPost") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDataPostFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="itemName">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("NazvaniePredmeta") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtNazvaniePredmeta" Text='<%#Eval("NazvaniePredmeta") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtNazvaniePredmetaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="CountIt">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Kolichestvo") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtKolichestvo" Text='<%#Eval("Kolichestvo") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtKolichestvoFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="DataVida">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("DataVida") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDataVida" Text='<%#Eval("DataVida") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDataVidaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Adress">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Adress") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAdress" Text='<%#Eval("Adress") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAdressFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="FIOPoluch">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FIOPoluch") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFIOPoluch" Text='<%#Eval("FIOPoluch") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFIOPoluchFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Cena") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCena" Text='<%#Eval("Cena") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCenaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                      <asp:ImageButton ImageUrl="~/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                      <asp:ImageButton ImageUrl="~/Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                        </ItemTemplate>
                         <EditItemTemplate>
                      <asp:ImageButton ImageUrl="~/Images/save.png" runat="server" CommandName="Save" ToolTip="Save" Width="20px" Height="20px" />
                      <asp:ImageButton ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                        </EditItemTemplate>
                        <FooterTemplate>
                      <asp:ImageButton ImageUrl="~/Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px" />
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
             <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
