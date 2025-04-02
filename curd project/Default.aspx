<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="curd_project.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Student Record Managemet</h1>
        <div>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="222px" Width="495px">
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Table] ([Id], [Name], [Father Name], [Age], [Contact]) VALUES (@Id, @Name, @Father_Name, @Age, @Contact)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Name], [Father Name] AS Father_Name, [Age], [Contact] FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Father Name] = @Father_Name, [Age] = @Age, [Contact] = @Contact WHERE [Id] = @original_Id">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Father_Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Contact" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Father_Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Contact" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
