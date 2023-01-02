<%@ PAGE Title="Punkty osnowy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pktosn1.aspx.cs" Inherits="GEOAPP0711.Pktosn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <span class="auto-style1"><span style="font-size: xx-large">Punkty osnowy</span></span><span style="font-size: xx-large"><br /></span>
    <br />Lista stworzonych punktów osnowy:<br />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Osnowy" DataSourceID="PKTOSN">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NR_Osnowy" HeaderText="NR_Osnowy" InsertVisible="False" ReadOnly="True" SortExpression="NR_Osnowy" />
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" SortExpression="NR_Geo" />
            <asp:BoundField DataField="NazwaO" HeaderText="NazwaO" SortExpression="NazwaO" />
            <asp:BoundField DataField="XO" HeaderText="XO" SortExpression="XO" />
            <asp:BoundField DataField="YO" HeaderText="YO" SortExpression="YO" />
            <asp:BoundField DataField="ZO" HeaderText="ZO" SortExpression="ZO" />
            <asp:BoundField DataField="KlasaO" HeaderText="KlasaO" SortExpression="KlasaO" />
            <asp:BoundField DataField="DataO" HeaderText="DataO" SortExpression="DataO" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="PKTOSN" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [OSNOWA] WHERE [NR_Osnowy] = @original_NR_Osnowy AND (([NR_Dzialki] = @original_NR_Dzialki) OR ([NR_Dzialki] IS NULL AND @original_NR_Dzialki IS NULL)) AND [NR_Geo] = @original_NR_Geo AND [NazwaO] = @original_NazwaO AND [XO] = @original_XO AND [YO] = @original_YO AND [ZO] = @original_ZO AND [KlasaO] = @original_KlasaO AND (([DataO] = @original_DataO) OR ([DataO] IS NULL AND @original_DataO IS NULL))" InsertCommand="INSERT INTO [OSNOWA] ([NR_Dzialki], [NR_Geo], [NazwaO], [XO], [YO], [ZO], [KlasaO], [DataO]) VALUES (@NR_Dzialki, @NR_Geo, @NazwaO, @XO, @YO, @ZO, @KlasaO, @DataO)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OSNOWA]" UpdateCommand="UPDATE [OSNOWA] SET [NR_Dzialki] = @NR_Dzialki, [NR_Geo] = @NR_Geo, [NazwaO] = @NazwaO, [XO] = @XO, [YO] = @YO, [ZO] = @ZO, [KlasaO] = @KlasaO, [DataO] = @DataO WHERE [NR_Osnowy] = @original_NR_Osnowy AND (([NR_Dzialki] = @original_NR_Dzialki) OR ([NR_Dzialki] IS NULL AND @original_NR_Dzialki IS NULL)) AND [NR_Geo] = @original_NR_Geo AND [NazwaO] = @original_NazwaO AND [XO] = @original_XO AND [YO] = @original_YO AND [ZO] = @original_ZO AND [KlasaO] = @original_KlasaO AND (([DataO] = @original_DataO) OR ([DataO] IS NULL AND @original_DataO IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_Osnowy" Type="Decimal" />
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_NazwaO" Type="String" />
            <asp:Parameter Name="original_XO" Type="Single" />
            <asp:Parameter Name="original_YO" Type="Single" />
            <asp:Parameter Name="original_ZO" Type="Single" />
            <asp:Parameter Name="original_KlasaO" Type="Int16" />
            <asp:Parameter Name="original_DataO" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="NR_Geo" Type="Decimal" />
            <asp:Parameter Name="NazwaO" Type="String" />
            <asp:Parameter Name="XO" Type="Single" />
            <asp:Parameter Name="YO" Type="Single" />
            <asp:Parameter Name="ZO" Type="Single" />
            <asp:Parameter Name="KlasaO" Type="Int16" />
            <asp:Parameter Name="DataO" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="NR_Geo" Type="Decimal" />
            <asp:Parameter Name="NazwaO" Type="String" />
            <asp:Parameter Name="XO" Type="Single" />
            <asp:Parameter Name="YO" Type="Single" />
            <asp:Parameter Name="ZO" Type="Single" />
            <asp:Parameter Name="KlasaO" Type="Int16" />
            <asp:Parameter Name="DataO" Type="DateTime" />
            <asp:Parameter Name="original_NR_Osnowy" Type="Decimal" />
            <asp:Parameter Name="original_NR_Dzialki" Type="Decimal" />
            <asp:Parameter Name="original_NR_Geo" Type="Decimal" />
            <asp:Parameter Name="original_NazwaO" Type="String" />
            <asp:Parameter Name="original_XO" Type="Single" />
            <asp:Parameter Name="original_YO" Type="Single" />
            <asp:Parameter Name="original_ZO" Type="Single" />
            <asp:Parameter Name="original_KlasaO" Type="Int16" />
            <asp:Parameter Name="original_DataO" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="NR_Osnowy" DataSourceID="PKTOSN" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="NR_Osnowy" HeaderText="NR_Osnowy" InsertVisible="False" ReadOnly="True" SortExpression="NR_Osnowy" />
            <asp:BoundField DataField="NR_Dzialki" HeaderText="NR_Dzialki" SortExpression="NR_Dzialki" />
            <asp:BoundField DataField="NR_Geo" HeaderText="NR_Geo" SortExpression="NR_Geo" />
            <asp:BoundField DataField="NazwaO" HeaderText="NazwaO" SortExpression="NazwaO" />
            <asp:BoundField DataField="XO" HeaderText="XO" SortExpression="XO" />
            <asp:BoundField DataField="YO" HeaderText="YO" SortExpression="YO" />
            <asp:BoundField DataField="ZO" HeaderText="ZO" SortExpression="ZO" />
            <asp:BoundField DataField="KlasaO" HeaderText="KlasaO" SortExpression="KlasaO" />
            <asp:BoundField DataField="DataO" HeaderText="DataO" SortExpression="DataO" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
</asp:Content>
