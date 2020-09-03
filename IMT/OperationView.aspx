<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OperationView.aspx.cs" Inherits="IMT.OperationView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="LotNum" HeaderText="LotNum" SortExpression="LotNum" />
                <asp:BoundField DataField="Operation" HeaderText="Operation" SortExpression="Operation" />
                <asp:BoundField DataField="OperNum" HeaderText="OperNum" SortExpression="OperNum" />
                <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" />
                <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
                <asp:BoundField DataField="LotStatus" HeaderText="LotStatus" SortExpression="LotStatus" />
                <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnProceed" Text="Proceed" runat="server"
                        CommandName ="Proceed"
                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                    
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IMTL1DBCS %>" SelectCommand="SELECT * FROM [LotList]"></asp:SqlDataSource>
    </form>
</body>
</html>
