<%@ Page Title="Działki" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dzialki1.aspx.cs" Inherits="GEOAPP0711.Dzialki1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <span class="auto-style1" style="font-size: xx-large">Działki</span><br />
    <br />
    Lista działek z ich opisem:</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Dzialki" DataSourceID="Dzialki2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" InsertVisible="False" ReadOnly="True" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Klient" HeaderText="NR_Klient" SortExpression="NR_Klient" />
            <asp:BoundField DataField="NazwaD" HeaderText="NazwaD" SortExpression="NazwaD" />
            <asp:BoundField DataField="Ulica" HeaderText="Ulica" SortExpression="Ulica" />
            <asp:BoundField DataField="Pow" HeaderText="Pow" SortExpression="Pow" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="NR_Dzialki" DataSourceID="Dzialki2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" InsertVisible="False" ReadOnly="True" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Klient" HeaderText="NR_Klient" SortExpression="NR_Klient" />
            <asp:BoundField DataField="NazwaD" HeaderText="NazwaD" SortExpression="NazwaD" />
            <asp:BoundField DataField="Ulica" HeaderText="Ulica" SortExpression="Ulica" />
            <asp:BoundField DataField="Pow" HeaderText="Pow" SortExpression="Pow" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="Dzialki2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [DZIALKI] WHERE [NR_Dzialki] = @original_NR_Dzialki AND (([NR_Klient] = @original_NR_Klient) OR ([NR_Klient] IS NULL AND @original_NR_Klient IS NULL)) AND [NazwaD] = @original_NazwaD AND (([Ulica] = @original_Ulica) OR ([Ulica] IS NULL AND @original_Ulica IS NULL)) AND (([Pow] = @original_Pow) OR ([Pow] IS NULL AND @original_Pow IS NULL))" InsertCommand="INSERT INTO [DZIALKI] ([NR_Klient], [NazwaD], [Ulica], [Pow]) VALUES (@NR_Klient, @NazwaD, @Ulica, @Pow)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DZIALKI]" UpdateCommand="UPDATE [DZIALKI] SET [NR_Klient] = @NR_Klient, [NazwaD] = @NazwaD, [Ulica] = @Ulica, [Pow] = @Pow WHERE [NR_Dzialki] = @original_NR_Dzialki AND (([NR_Klient] = @original_NR_Klient) OR ([NR_Klient] IS NULL AND @original_NR_Klient IS NULL)) AND [NazwaD] = @original_NazwaD AND (([Ulica] = @original_Ulica) OR ([Ulica] IS NULL AND @original_Ulica IS NULL)) AND (([Pow] = @original_Pow) OR ([Pow] IS NULL AND @original_Pow IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Klient" Type="Decimal" />
            <asp:Parameter Name="original_NazwaD" Type="Int64" />
            <asp:Parameter Name="original_Ulica" Type="String" />
            <asp:Parameter Name="original_Pow" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_Klient" Type="Decimal" />
            <asp:Parameter Name="NazwaD" Type="Int64" />
            <asp:Parameter Name="Ulica" Type="String" />
            <asp:Parameter Name="Pow" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NR_Klient" Type="Decimal" />
            <asp:Parameter Name="NazwaD" Type="Int64" />
            <asp:Parameter Name="Ulica" Type="String" />
            <asp:Parameter Name="Pow" Type="Double" />
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Klient" Type="Decimal" />
            <asp:Parameter Name="original_NazwaD" Type="Int64" />
            <asp:Parameter Name="original_Ulica" Type="String" />
            <asp:Parameter Name="original_Pow" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>
