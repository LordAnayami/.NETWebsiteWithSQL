<%@ Page Title="Geodeci" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Geodeci1.aspx.cs" Inherits="GEOAPP0711.Geodeci1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <span class="auto-style1" style="font-size: xx-large">Geodeci</span><br />
    <br />Lista dostępnych geodetów:</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Geo" DataSourceID="Geodeci2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" InsertVisible="False" ReadOnly="True" SortExpression="NR_Geo" />
            <asp:BoundField DataField="ImieG" HeaderText="ImieG" SortExpression="ImieG" />
            <asp:BoundField DataField="NazwiskoG" HeaderText="NazwiskoG" SortExpression="NazwiskoG" />
            <asp:BoundField DataField="PeselG" HeaderText="PeselG" SortExpression="PeselG" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <asp:SqlDataSource ID="Geodeci2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [GEODETA] WHERE [NR_Geo] = @original_NR_Geo AND [ImieG] = @original_ImieG AND [NazwiskoG] = @original_NazwiskoG AND [PeselG] = @original_PeselG" InsertCommand="INSERT INTO [GEODETA] ([ImieG], [NazwiskoG], [PeselG]) VALUES (@ImieG, @NazwiskoG, @PeselG)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [GEODETA]" UpdateCommand="UPDATE [GEODETA] SET [ImieG] = @ImieG, [NazwiskoG] = @NazwiskoG, [PeselG] = @PeselG WHERE [NR_Geo] = @original_NR_Geo AND [ImieG] = @original_ImieG AND [NazwiskoG] = @original_NazwiskoG AND [PeselG] = @original_PeselG">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_ImieG" Type="String" />
            <asp:Parameter Name="original_NazwiskoG" Type="String" />
            <asp:Parameter Name="original_PeselG" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ImieG" Type="String" />
            <asp:Parameter Name="NazwiskoG" Type="String" />
            <asp:Parameter Name="PeselG" Type="Int64" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ImieG" Type="String" />
            <asp:Parameter Name="NazwiskoG" Type="String" />
            <asp:Parameter Name="PeselG" Type="Int64" />
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_ImieG" Type="String" />
            <asp:Parameter Name="original_NazwiskoG" Type="String" />
            <asp:Parameter Name="original_PeselG" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="NR_Geo" DataSourceID="Geodeci2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" InsertVisible="False" ReadOnly="True" SortExpression="NR_Geo" />
            <asp:BoundField DataField="ImieG" HeaderText="ImieG" SortExpression="ImieG" />
            <asp:BoundField DataField="NazwiskoG" HeaderText="NazwiskoG" SortExpression="NazwiskoG" />
            <asp:BoundField DataField="PeselG" HeaderText="PeselG" SortExpression="PeselG" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
    <p>
        &nbsp;</p>
    <p>
        Podaj nazwisko szukanego geodety:</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Kliknij" />
</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Geo" DataSourceID="Geodeci3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" InsertVisible="False" ReadOnly="True" SortExpression="NR_Geo" />
                <asp:BoundField DataField="ImieG" HeaderText="ImieG" SortExpression="ImieG" />
                <asp:BoundField DataField="NazwiskoG" HeaderText="NazwiskoG" SortExpression="NazwiskoG" />
                <asp:BoundField DataField="PeselG" HeaderText="PeselG" SortExpression="PeselG" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Geodeci3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [GEODETA] WHERE [NR_Geo] = @original_NR_Geo AND [ImieG] = @original_ImieG AND [NazwiskoG] = @original_NazwiskoG AND [PeselG] = @original_PeselG" InsertCommand="INSERT INTO [GEODETA] ([ImieG], [NazwiskoG], [PeselG]) VALUES (@ImieG, @NazwiskoG, @PeselG)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [GEODETA] WHERE NazwiskoG like @param+'%'" UpdateCommand="UPDATE [GEODETA] SET [ImieG] = @ImieG, [NazwiskoG] = @NazwiskoG, [PeselG] = @PeselG WHERE [NR_Geo] = @original_NR_Geo AND [ImieG] = @original_ImieG AND [NazwiskoG] = @original_NazwiskoG AND [PeselG] = @original_PeselG">
            <DeleteParameters>
                <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
                <asp:Parameter Name="original_ImieG" Type="String" />
                <asp:Parameter Name="original_NazwiskoG" Type="String" />
                <asp:Parameter Name="original_PeselG" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ImieG" Type="String" />
                <asp:Parameter Name="NazwiskoG" Type="String" />
                <asp:Parameter Name="PeselG" Type="Int64" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="param" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ImieG" Type="String" />
                <asp:Parameter Name="NazwiskoG" Type="String" />
                <asp:Parameter Name="PeselG" Type="Int64" />
                <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
                <asp:Parameter Name="original_ImieG" Type="String" />
                <asp:Parameter Name="original_NazwiskoG" Type="String" />
                <asp:Parameter Name="original_PeselG" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
