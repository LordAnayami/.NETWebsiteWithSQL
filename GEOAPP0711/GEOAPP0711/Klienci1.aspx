<%@ Page Title="Klienci" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Klienci1.aspx.cs" Inherits="GEOAPP0711.Klienci1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <span class="auto-style1" style="font-size: xx-large">Klienci</span><br />
    <br />Lista klientów:<br />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Klient" DataSourceID="Klienci2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NR_Klient" HeaderText="NR_Klient" InsertVisible="False" ReadOnly="True" SortExpression="NR_Klient" />
            <asp:BoundField DataField="ImieK" HeaderText="ImieK" SortExpression="ImieK" />
            <asp:BoundField DataField="NazwiskoK" HeaderText="NazwiskoK" SortExpression="NazwiskoK" />
            <asp:BoundField DataField="PeselK" HeaderText="PeselK" SortExpression="PeselK" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Klienci2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [KLIENT] WHERE [NR_Klient] = @original_NR_Klient AND [ImieK] = @original_ImieK AND [NazwiskoK] = @original_NazwiskoK AND [PeselK] = @original_PeselK" InsertCommand="INSERT INTO [KLIENT] ([ImieK], [NazwiskoK], [PeselK]) VALUES (@ImieK, @NazwiskoK, @PeselK)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KLIENT]" UpdateCommand="UPDATE [KLIENT] SET [ImieK] = @ImieK, [NazwiskoK] = @NazwiskoK, [PeselK] = @PeselK WHERE [NR_Klient] = @original_NR_Klient AND [ImieK] = @original_ImieK AND [NazwiskoK] = @original_NazwiskoK AND [PeselK] = @original_PeselK">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_Klient" Type="Decimal" />
            <asp:Parameter Name="original_ImieK" Type="String" />
            <asp:Parameter Name="original_NazwiskoK" Type="String" />
            <asp:Parameter Name="original_PeselK" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ImieK" Type="String" />
            <asp:Parameter Name="NazwiskoK" Type="String" />
            <asp:Parameter Name="PeselK" Type="Int64" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ImieK" Type="String" />
            <asp:Parameter Name="NazwiskoK" Type="String" />
            <asp:Parameter Name="PeselK" Type="Int64" />
            <asp:Parameter Name="original_NR_Klient" Type="Decimal" />
            <asp:Parameter Name="original_ImieK" Type="String" />
            <asp:Parameter Name="original_NazwiskoK" Type="String" />
            <asp:Parameter Name="original_PeselK" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="NR_Klient" DataSourceID="Klienci2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="NR_Klient" HeaderText="NR_Klient" InsertVisible="False" ReadOnly="True" SortExpression="NR_Klient" />
            <asp:BoundField DataField="ImieK" HeaderText="ImieK" SortExpression="ImieK" />
            <asp:BoundField DataField="NazwiskoK" HeaderText="NazwiskoK" SortExpression="NazwiskoK" />
            <asp:BoundField DataField="PeselK" HeaderText="PeselK" SortExpression="PeselK" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
    <p>
        &nbsp;</p>
    <p>
        Podaj nazwisko szukanego klienta:</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Kliknij" />
</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NR_Klient" DataSourceID="Klienci3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="NR_Klient" HeaderText="NR_Klient" InsertVisible="False" ReadOnly="True" SortExpression="NR_Klient" />
                <asp:BoundField DataField="ImieK" HeaderText="ImieK" SortExpression="ImieK" />
                <asp:BoundField DataField="NazwiskoK" HeaderText="NazwiskoK" SortExpression="NazwiskoK" />
                <asp:BoundField DataField="PeselK" HeaderText="PeselK" SortExpression="PeselK" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Klienci3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GEOAPP241400ConnectionString %>" DeleteCommand="DELETE FROM [DZIALKI] WHERE [NR_Dzialki] = @original_NR_Dzialki AND (([NR_Klient] = @original_NR_Klient) OR ([NR_Klient] IS NULL AND @original_NR_Klient IS NULL)) AND [NazwaD] = @original_NazwaD AND (([Ulica] = @original_Ulica) OR ([Ulica] IS NULL AND @original_Ulica IS NULL)) AND (([Pow] = @original_Pow) OR ([Pow] IS NULL AND @original_Pow IS NULL))" InsertCommand="INSERT INTO [DZIALKI] ([NR_Klient], [NazwaD], [Ulica], [Pow]) VALUES (@NR_Klient, @NazwaD, @Ulica, @Pow)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KLIENT] WHERE NazwiskoK like @param+'%'" UpdateCommand="UPDATE [DZIALKI] SET [NR_Klient] = @NR_Klient, [NazwaD] = @NazwaD, [Ulica] = @Ulica, [Pow] = @Pow WHERE [NR_Dzialki] = @original_NR_Dzialki AND (([NR_Klient] = @original_NR_Klient) OR ([NR_Klient] IS NULL AND @original_NR_Klient IS NULL)) AND [NazwaD] = @original_NazwaD AND (([Ulica] = @original_Ulica) OR ([Ulica] IS NULL AND @original_Ulica IS NULL)) AND (([Pow] = @original_Pow) OR ([Pow] IS NULL AND @original_Pow IS NULL))">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="param" PropertyName="Text" />
            </SelectParameters>
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
</asp:Content>
