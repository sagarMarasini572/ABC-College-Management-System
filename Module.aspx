<%@ Page Title="Module" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="CW.Module" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<p>Module_Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="modtxtbox" runat="server"></asp:TextBox>
</p>
<p>Module_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="modnametxtbox" runat="server"></asp:TextBox>
</p>
<p>Credit Hours&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="credithourtxtbox" runat="server"></asp:TextBox>
</p>
    <p>Acedemic_Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="acedemicyeartxtbox" runat="server"></asp:TextBox>
</p>
<p>&nbsp;</p>
<p>
    <asp:Button ID="savebtn" runat="server" OnClick="Button1_Click" Text="Save" />
</p>
<p>&nbsp;</p>
    <p>Module Table</p>
<p>
    <asp:GridView ID="modtable" runat="server" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="Module_List">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
            <asp:BoundField DataField="ACEDEMIC_YEAR" HeaderText="ACEDEMIC_YEAR" SortExpression="ACEDEMIC_YEAR" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Module_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" DeleteCommand="DELETE FROM &quot;MODULES&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULES&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOURS&quot;, &quot;ACEDEMIC_YEAR&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOURS, :ACEDEMIC_YEAR)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;MODULES&quot;" UpdateCommand="UPDATE &quot;MODULES&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOURS&quot; = :CREDIT_HOURS, &quot;ACEDEMIC_YEAR&quot; = :ACEDEMIC_YEAR WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
        <DeleteParameters>
            <asp:Parameter Name="MODULE_CODE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MODULE_CODE" Type="String" />
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOURS" Type="String" />
            <asp:Parameter Name="ACEDEMIC_YEAR" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOURS" Type="String" />
            <asp:Parameter Name="ACEDEMIC_YEAR" Type="String" />
            <asp:Parameter Name="MODULE_CODE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>&nbsp;</p>
    </asp:Content>

