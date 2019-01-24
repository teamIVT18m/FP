<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrudInGridView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="gvUchet" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="MainID"
                ShowHeaderWhenEmpty="True"

                OnRowCommand="gvUchet_RowCommand" OnRowEditing="gvUchet_RowEditing" OnRowCancelingEdit="gvUchet_RowCancelingEdit"
                OnRowUpdating="gvUchet_RowUpdating" OnRowDeleting="gvUchet_RowDeleting"

                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <%-- Theme Properties --%>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle ForeColor="#333333" BackColor="White" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
                
                <Columns>
                    <asp:TemplateField HeaderText="ФИО сотрудника">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("member") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtmember" Text='<%# Eval("member") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtmemberFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Дата поставки товара">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("DataPost") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDataPost" Text='<%# Eval("DataPost") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDataPostFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Наименование предмета">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("itemName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtitemName" Text='<%# Eval("itemName") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtitemNameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Количество (шт.)">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CountI") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCountI" Text='<%# Eval("CountI") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCountIFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="Дата выдачи">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("DataVida") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDataVida" Text='<%# Eval("DataVida") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDataVidaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="Адресс выдачи">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Adress") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAdress" Text='<%# Eval("Adress") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAdressFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="ФИО получателя">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FIOPoluch") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFIOPoluch" Text='<%# Eval("FIOPoluch") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFIOPoluchFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="Цена">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Price") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPrice" Text='<%# Eval("Price") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtPriceFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
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
