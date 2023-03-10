<%@ Page Title="Punkty pomiarowe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PKTPOM1.aspx.cs" Inherits="GEOAPP0711.PKTPOM1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <span class="auto-style1"><span style="font-size: xx-large">Punkty pomiarowe</span></span><span style="font-size: xx-large"><br /></span>
    <br />Lista stworzonych punktów pomiarowych:<br />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Pomiar" DataSourceID="PKTPOM2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NR_Pomiar" HeaderText="NR_Pomiar" InsertVisible="False" ReadOnly="True" SortExpression="NR_Pomiar" />
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" SortExpression="NR_Geo" />
            <asp:BoundField DataField="NazwaP" HeaderText="NazwaP" SortExpression="NazwaP" />
            <asp:BoundField DataField="XP" HeaderText="XP" SortExpression="XP" />
            <asp:BoundField DataField="YP" HeaderText="YP" SortExpression="YP" />
            <asp:BoundField DataField="ZP" HeaderText="ZP" SortExpression="ZP" />
            <asp:BoundField DataField="KlasaP" HeaderText="KlasaP" SortExpression="KlasaP" />
            <asp:BoundField DataField="DataP" HeaderText="DataP" SortExpression="DataP" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="PKTPOM2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [POMIAR] WHERE [NR_Pomiar] = @original_NR_Pomiar AND (([NR_Dzialki] = @original_NR_Dzialki) OR ([NR_Dzialki] IS NULL AND @original_NR_Dzialki IS NULL)) AND [NR_Geo] = @original_NR_Geo AND [NazwaP] = @original_NazwaP AND [XP] = @original_XP AND [YP] = @original_YP AND [ZP] = @original_ZP AND [KlasaP] = @original_KlasaP AND (([DataP] = @original_DataP) OR ([DataP] IS NULL AND @original_DataP IS NULL))" InsertCommand="INSERT INTO [POMIAR] ([NR_Dzialki], [NR_Geo], [NazwaP], [XP], [YP], [ZP], [KlasaP], [DataP]) VALUES (@NR_Dzialki, @NR_Geo, @NazwaP, @XP, @YP, @ZP, @KlasaP, @DataP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [POMIAR]" UpdateCommand="UPDATE [POMIAR] SET [NR_Dzialki] = @NR_Dzialki, [NR_Geo] = @NR_Geo, [NazwaP] = @NazwaP, [XP] = @XP, [YP] = @YP, [ZP] = @ZP, [KlasaP] = @KlasaP, [DataP] = @DataP WHERE [NR_Pomiar] = @original_NR_Pomiar AND (([NR_Dzialki] = @original_NR_Dzialki) OR ([NR_Dzialki] IS NULL AND @original_NR_Dzialki IS NULL)) AND [NR_Geo] = @original_NR_Geo AND [NazwaP] = @original_NazwaP AND [XP] = @original_XP AND [YP] = @original_YP AND [ZP] = @original_ZP AND [KlasaP] = @original_KlasaP AND (([DataP] = @original_DataP) OR ([DataP] IS NULL AND @original_DataP IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_Pomiar" Type="Decimal" />
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_NazwaP" Type="String" />
            <asp:Parameter Name="original_XP" Type="Single" />
            <asp:Parameter Name="original_YP" Type="Single" />
            <asp:Parameter Name="original_ZP" Type="Single" />
            <asp:Parameter Name="original_KlasaP" Type="Int16" />
            <asp:Parameter Name="original_DataP" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="NR_Geo" Type="Decimal" />
            <asp:Parameter Name="NazwaP" Type="String" />
            <asp:Parameter Name="XP" Type="Single" />
            <asp:Parameter Name="YP" Type="Single" />
            <asp:Parameter Name="ZP" Type="Single" />
            <asp:Parameter Name="KlasaP" Type="Int16" />
            <asp:Parameter Name="DataP" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="NR_Geo" Type="Decimal" />
            <asp:Parameter Name="NazwaP" Type="String" />
            <asp:Parameter Name="XP" Type="Single" />
            <asp:Parameter Name="YP" Type="Single" />
            <asp:Parameter Name="ZP" Type="Single" />
            <asp:Parameter Name="KlasaP" Type="Int16" />
            <asp:Parameter Name="DataP" Type="DateTime" />
            <asp:Parameter Name="original_NR_Pomiar" Type="Decimal" />
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_NazwaP" Type="String" />
            <asp:Parameter Name="original_XP" Type="Single" />
            <asp:Parameter Name="original_YP" Type="Single" />
            <asp:Parameter Name="original_ZP" Type="Single" />
            <asp:Parameter Name="original_KlasaP" Type="Int16" />
            <asp:Parameter Name="original_DataP" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="NR_Pomiar" DataSourceID="PKTPOM2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="NR_Pomiar" HeaderText="NR_Pomiar" InsertVisible="False" ReadOnly="True" SortExpression="NR_Pomiar" />
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" SortExpression="NR_Geo" />
            <asp:BoundField DataField="NazwaP" HeaderText="NazwaP" SortExpression="NazwaP" />
            <asp:BoundField DataField="XP" HeaderText="XP" SortExpression="XP" />
            <asp:BoundField DataField="YP" HeaderText="YP" SortExpression="YP" />
            <asp:BoundField DataField="ZP" HeaderText="ZP" SortExpression="ZP" />
            <asp:BoundField DataField="KlasaP" HeaderText="KlasaP" SortExpression="KlasaP" />
            <asp:BoundField DataField="DataP" HeaderText="DataP" SortExpression="DataP" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
</asp:Content>
