<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" Inherits="PageDirective._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%@ Import NameSpace="System.Data" %>

    <div class="container">
        <br />
        <h4>List Of Students</h4>
        <%
            DataTable table = new DataTable();
            table.Columns.Add("Name", typeof(string));
            table.Columns.Add("Class", typeof(string));

            table.Rows.Add("Sai", "4B");
            table.Rows.Add("Pavan", "6B");
            table.Rows.Add("Guru", "6A");
            table.Rows.Add("PavanKalyan", "4A");

            foreach(DataRow dr in table.Rows)
            {
                Response.Write(dr["Name"] + " is in class " + dr["Class"] + "<Br>");
            }
            %>
    </div>



</asp:Content>
