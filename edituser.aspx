<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edituser.aspx.cs" Inherits="edituser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="grdstudent" runat="server" AutoGenerateColumns="false" width="100%" OnRowEditing="grdstudent_RowEditing" OnRowUpdating="grdstudent_RowUpdating" OnRowDeleting="grdstudent_RowDeleting">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="lblid" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label ID="lblfirstname" runat="server" Text='<%#Bind("fname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtfirstname" runat="server" Text='<%#Bind("fname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label ID="lbllastname" runat="server" Text='<%#Bind("lname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtlastname" runat="server" Text='<%#Bind("lname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="lblemail" runat="server" Text='<%#Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtemail" runat="server" Text='<%#Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="lblgender" runat="server" Text='<%#Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtgender" runat="server" Text='<%#Bind("gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course">
                        <ItemTemplate>
                            <asp:Label ID="lblcourse" runat="server" Text='<%#Bind("address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Contact">
                        <ItemTemplate>
                            <asp:Label ID="lblcontact" runat="server" Text='<%#Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcontact" runat="server" Text='<%#Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnstuedit" runat="server" CssClass="btn btn-primary" Text="Edit" CommandName="Edit"/>
                            <asp:Button ID="btnstudelete" runat="server" CssClass="btn btn-warning" Text="Delete" CommandName="Delete"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnstuupdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                            <asp:Button ID="btnstucancel" runat="server" CssClass="btn btn-warning" Text="Cancel" CommandName="Update" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
    </div>
    </form>
</body>
</html>
