<%@ Page Title="Teacher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="CW.Teacher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<p>Teacher_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="teachertxtbox" runat="server"></asp:TextBox>
</p>
<p>Teacher_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="teachernametxtbox" runat="server"></asp:TextBox>
</p>
<p>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="emailtxtbox" runat="server"></asp:TextBox>
</p>
    <p>Department_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="dpttxtbox" runat="server"></asp:TextBox>
</p>
<p>Teacher_Address1&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="teacheraddtxtbox" runat="server"></asp:TextBox>
</p>
<p>Teacher_Address2&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="teacheradd2txtbox" runat="server"></asp:TextBox>
</p>
<p>&nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;&nbsp;</p>
    <p>
        &nbsp;
    </p>
<p>Teacher Table</p>
<p>
    <asp:GridView ID="teachertable" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="Teacher_List">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
            <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="ADDRESS_ID_2" HeaderText="ADDRESS_ID_2" SortExpression="ADDRESS_ID_2" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Teacher_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" DeleteCommand="DELETE FROM &quot;TEACHERS&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHERS&quot; (&quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot;, &quot;EMAIL&quot;, &quot;DEPARTMENT_ID&quot;, &quot;ADDRESS_ID&quot;, &quot;ADDRESS_ID_2&quot;) VALUES (:TEACHER_ID, :TEACHER_NAME, :EMAIL, :DEPARTMENT_ID, :ADDRESS_ID, :ADDRESS_ID_2)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;TEACHERS&quot;" UpdateCommand="UPDATE &quot;TEACHERS&quot; SET &quot;TEACHER_NAME&quot; = :TEACHER_NAME, &quot;EMAIL&quot; = :EMAIL, &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID, &quot;ADDRESS_ID&quot; = :ADDRESS_ID, &quot;ADDRESS_ID_2&quot; = :ADDRESS_ID_2 WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
        <DeleteParameters>
            <asp:Parameter Name="TEACHER_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TEACHER_ID" Type="String" />
            <asp:Parameter Name="TEACHER_NAME" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEACHER_NAME" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
            <asp:Parameter Name="TEACHER_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    </asp:Content>
