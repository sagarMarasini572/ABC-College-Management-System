<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="CW.Student" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<p>Student_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="stdtxtbox" runat="server"></asp:TextBox>
</p>
<p>Student_Name&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="stdnametxtbox" runat="server"></asp:TextBox>
</p>
<p>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="emailtxtbox" runat="server"></asp:TextBox>
</p>
<p>Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="contacttxtbox" runat="server"></asp:TextBox>
</p>
<p>Address_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="addtxtbox" runat="server"></asp:TextBox>
</p>
    <p>Address_ID_2&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="add2txtbox" runat="server"></asp:TextBox>
</p>
<p>&nbsp;</p>
<p>
    <asp:Button ID="savebtn" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;</p>
    <p>
        &nbsp;&nbsp;</p>
<p>Student Table</p>
<p>
    <asp:GridView ID="stdtable" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="Student_List">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="ADDRESS_ID_2" HeaderText="ADDRESS_ID_2" SortExpression="ADDRESS_ID_2" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Student_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" DeleteCommand="DELETE FROM &quot;STUDENTS&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENTS&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;EMAIL&quot;, &quot;CONTACT&quot;, &quot;ADDRESS_ID&quot;, &quot;ADDRESS_ID_2&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :EMAIL, :CONTACT, :ADDRESS_ID, :ADDRESS_ID_2)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;STUDENTS&quot;" UpdateCommand="UPDATE &quot;STUDENTS&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;EMAIL&quot; = :EMAIL, &quot;CONTACT&quot; = :CONTACT, &quot;ADDRESS_ID&quot; = :ADDRESS_ID, &quot;ADDRESS_ID_2&quot; = :ADDRESS_ID_2 WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="STUDENT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STUDENT_ID" Type="String" />
            <asp:Parameter Name="STUDENT_NAME" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="CONTACT" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="STUDENT_NAME" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="CONTACT" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
            <asp:Parameter Name="STUDENT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    </asp:Content>