<%@ Page Title="TeacherModule" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherModule.aspx.cs" Inherits="CW.TeacherModule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>
        Teacher Name</h3>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TEACHER_NAME" DataValueField="TEACHER_ID">
        </asp:DropDownList>
    </p>
    <p>&nbsp;</p>
    <p>Teacher Details</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="Assignment_List" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" SortExpression="TEACHER_ID" />
                <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                <asp:BoundField DataField="WORKING_HOURS" HeaderText="WORKING_HOURS" SortExpression="WORKING_HOURS" />
                <asp:BoundField DataField="ACEDEMIC_YEAR" HeaderText="ACEDEMIC_YEAR" SortExpression="ACEDEMIC_YEAR" />
                <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT DISTINCT &quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot; FROM &quot;TEACHERS&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Assignment_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT TMD.TEACHER_ID, T.TEACHER_NAME, T.EMAIL, M.MODULE_NAME, M.CREDIT_HOURS, TMD.WORKING_HOURS, M.ACEDEMIC_YEAR, D.DEPARTMENT_NAME FROM TEACHER_MODULE_DETAILS TMD, TEACHERS T, MODULES M, DEPARTMENTS D WHERE TMD.TEACHER_ID = T.TEACHER_ID AND TMD.MODULE_CODE = M.MODULE_CODE AND T.DEPARTMENT_ID = D.DEPARTMENT_ID AND (TMD.TEACHER_ID = :TEACHER_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <h3>&nbsp;</h3>
</asp:Content>
