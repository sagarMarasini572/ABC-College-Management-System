<%@ Page Title="Department" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="CW.Department" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<p>Department_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="dpttxtbox" runat="server"></asp:TextBox>
</p>
<p>Department_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="dptnametxtbox" runat="server"></asp:TextBox>
</p>
<p>&nbsp;</p>
<p>
    <asp:Button ID="savebtn" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
<p>Department Table</p>
<p>
    <asp:GridView ID="dpttable" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="Department_List">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Department_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" DeleteCommand="DELETE FROM &quot;DEPARTMENTS&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENTS&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;DEPARTMENTS&quot;" UpdateCommand="UPDATE &quot;DEPARTMENTS&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>&nbsp;</p>
    </asp:Content>
