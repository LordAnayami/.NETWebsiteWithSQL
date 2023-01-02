<%@ Page Title="Zlecenia" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zlecenia1.aspx.cs" Inherits="GEOAPP0711.Zlecenia1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <span class="auto-style1" style="font-size: xx-large">Zlecenia</span><br />
    <br />Lista wykonanych zleceń:</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Zlec" DataSourceID="Zlecenia2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NR_Zlec" HeaderText="NR_Zlec" InsertVisible="False" ReadOnly="True" SortExpression="NR_Zlec" />
            <asp:BoundField DataField="NR_Klient" HeaderText="NR_Klient" SortExpression="NR_Klient" />
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" SortExpression="NR_Geo" />
            <asp:BoundField DataField="DataZ" HeaderText="DataZ" SortExpression="DataZ" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="NR_Zlec" DataSourceID="Zlecenia2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="NR_Zlec" HeaderText="NR_Zlec" InsertVisible="False" ReadOnly="True" SortExpression="NR_Zlec" />
            <asp:BoundField DataField="NR_Klient" HeaderText="NR_Klient" SortExpression="NR_Klient" />
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" SortExpression="NR_Geo" />
            <asp:BoundField DataField="DataZ" HeaderText="DataZ" SortExpression="DataZ" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="Zlecenia2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [ZLECENIE] WHERE [NR_Zlec] = @original_NR_Zlec AND (([NR_Klient] = @original_NR_Klient) OR ([NR_Klient] IS NULL AND @original_NR_Klient IS NULL)) AND [NR_Dzialki] = @original_NR_Dzialki AND (([NR_Geo] = @original_NR_Geo) OR ([NR_Geo] IS NULL AND @original_NR_Geo IS NULL)) AND [DataZ] = @original_DataZ" InsertCommand="INSERT INTO [ZLECENIE] ([NR_Klient], [NR_Dzialki], [NR_Geo], [DataZ]) VALUES (@NR_Klient, @NR_Dzialki, @NR_Geo, @DataZ)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ZLECENIE]" UpdateCommand="UPDATE [ZLECENIE] SET [NR_Klient] = @NR_Klient, [NR_Dzialki] = @NR_Dzialki, [NR_Geo] = @NR_Geo, [DataZ] = @DataZ WHERE [NR_Zlec] = @original_NR_Zlec AND (([NR_Klient] = @original_NR_Klient) OR ([NR_Klient] IS NULL AND @original_NR_Klient IS NULL)) AND [NR_Dzialki] = @original_NR_Dzialki AND (([NR_Geo] = @original_NR_Geo) OR ([NR_Geo] IS NULL AND @original_NR_Geo IS NULL)) AND [DataZ] = @original_DataZ">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_Zlec" Type="Decimal" />
            <asp:Parameter Name="original_NR_Klient" Type="Decimal" />
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_DataZ" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_Klient" Type="Decimal" />
            <asp:Parameter Name="NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="NR_Geo" Type="Decimal" />
            <asp:Parameter Name="DataZ" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NR_Klient" Type="Decimal" />
            <asp:Parameter Name="NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="NR_Geo" Type="Decimal" />
            <asp:Parameter Name="DataZ" Type="DateTime" />
            <asp:Parameter Name="original_NR_Zlec" Type="Decimal" />
            <asp:Parameter Name="original_NR_Klient" Type="Decimal" />
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_DataZ" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
