<%@ Page Title="Assignment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="CW.Assignment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>
        Student Name</h3>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID">
        </asp:DropDownList>
    </p>
    <p>&nbsp;</p>
    <p>Student Assignment Details</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="Assignment_List" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" SortExpression="ASSIGNMENT_TYPE" />
                <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                <asp:BoundField DataField="ASSIGNMENT_DATE" HeaderText="ASSIGNMENT_DATE" SortExpression="ASSIGNMENT_DATE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT DISTINCT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENTS&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Assignment_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMD.STUDENT_ID, S.STUDENT_NAME, M.MODULE_NAME, A.ASSIGNMENT_TYPE, SMD.GRADE, SMD.STATUS, A.ASSIGNMENT_DATE FROM STUDENT_MODULE_DETAILS SMD, STUDENTS S, MODULES M, ASSIGNMENTS A WHERE SMD.STUDENT_ID = S.STUDENT_ID AND (SMD.MODULE_CODE = M.MODULE_CODE) AND (SMD.ASSIGNMENT_ID = A.ASSIGNMENT_ID) AND (SMD.STUDENT_ID = :STUDENT_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
</asp:Content>
