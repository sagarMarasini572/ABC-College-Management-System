<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CW.Payment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>
        Student Name</h3>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID">
        </asp:DropDownList>
    </p>
    <p>&nbsp;</p>
    <p>Payment Details</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="Assignment_List" AutoGenerateColumns="False" DataKeyNames="PAYMENT_ID">
            <Columns>
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                <asp:BoundField DataField="FEE_PARTICULARS" HeaderText="FEE_PARTICULARS" SortExpression="FEE_PARTICULARS" />
                <asp:BoundField DataField="DATE_OF_FEE" HeaderText="DATE_OF_FEE" SortExpression="DATE_OF_FEE" />
                <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
                <asp:BoundField DataField="YEAR" HeaderText="YEAR" SortExpression="YEAR" />
                <asp:BoundField DataField="DATE_OF_PAYMENT" HeaderText="DATE_OF_PAYMENT" SortExpression="DATE_OF_PAYMENT" />
                <asp:BoundField DataField="EXPR1" HeaderText="EXPR1" SortExpression="EXPR1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT DISTINCT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENTS&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Assignment_List" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=ABCCollege;Password=abccollege;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT PD.PAYMENT_ID, PD.STUDENT_ID, S.STUDENT_NAME, F.FEE_PARTICULARS, F.DATE_OF_FEE, F.AMOUNT, F.YEAR, PD.DATE_OF_PAYMENT, PD.AMOUNT AS EXPR1 FROM PAYMENT_DETAILS PD, STUDENTS S, FEES F WHERE PD.STUDENT_ID = S.STUDENT_ID AND PD.FEE_ID = F.FEE_ID AND (PD.STUDENT_ID = :STUDENT_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </asp:Content>