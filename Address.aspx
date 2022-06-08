<%@ Page Title="Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="CW.Address" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<p>Address_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="addtxtbox" runat="server"></asp:TextBox>
</p>
<p>Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="countrytxtbox" runat="server"></asp:TextBox>
</p>
    <p>Province&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="provincetxtbox" runat="server"></asp:TextBox>
</p>
    <p>City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="citytxtbox" runat="server"></asp:TextBox>
</p>
    <p>Street&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="streettxtbox" runat="server"></asp:TextBox>
</p>
<p>&nbsp;</p>
<p>
    <asp:Button ID="savebtn" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;</p>
    <p>
        &nbsp;&nbsp;
    </p>
<p>Address Table</p>
<p>
    <asp:GridView ID="addresstable" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="Address_List">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
            <asp:BoundField DataField="PROVINCE" HeaderText="PROVINCE" SortExpression="PROVINCE" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Address_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;PROVINCE&quot;, &quot;CITY&quot;, &quot;STREET&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :PROVINCE, :CITY, :STREET)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;PROVINCE&quot; = :PROVINCE, &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
        <DeleteParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
            <asp:Parameter Name="COUNTRY" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="COUNTRY" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STREET" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>&nbsp;</p>
    </asp:Content>