﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyProfile.aspx.cs" Inherits="TestForm.ProjectsCS.FacultyProfile" %>

<%@ Register Assembly="AjaxControlToolKit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <!-- Required meta tags -->
    <meta name="description" content="WebDev" />
    <meta name="keywords" content="Computer Science Project Portal" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta charset="UTF-8" />

    <title>Computer Science Project Portal</title>

    <!-- Bootstrap css -->
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <!-- Custom CSS  - put last to override bootstrap where needed-->
    <link rel="stylesheet" href="CSS/CSPPstylesheet.css" />

    <script src="JS/jquery-3.3.1.js"></script>
    <script src="JS/FacultyLogged.js"></script>
    <script src="JS/CSPPJQuery.js"></script>

    <style type="text/css">
        .auto-style11 {
            width: 100%;
            margin-top: 10px;
            text-align: left;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
    </style>

</head>
<body>
    <header class="header-banner">

        <!-- DOM innerHTML navigation bar -->
        <div id="universal-navbar"></div>
        <form id="form1" runat="server">
            <div>
                <p>Hello Faculty</p>
                <asp:Label ID="labelText" runat="server" Text="No user"/>
                <asp:Button ID="loggoutButton" runat="server" Text="Logout" OnClick="logoutEventMethod" />
                <div class="auto-style11">
                    <asp:ScriptManager ID="ScriptManager1" EnableScriptGlobalization="true" runat="server"></asp:ScriptManager>
                    <h4 style="font-weight: bold; color: darkblue; margin-bottom: 30px; " class="text-center"> Faculty Profile</h4>
                    <div class="text-center">
                    <asp:GridView ID="EmpGridView" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" runat="server" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CssClass="auto-style8" OnSelectedIndexChanged="EmpGridView_SelectedIndexChanged" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField HeaderText="First Name" DataField="Fname" ItemStyle-Width="200">
                                <ItemStyle Width="200px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Lname" HeaderText="Last Name" ItemStyle-Width="200">
                                <ItemStyle Width="200px"></ItemStyle>
                            </asp:BoundField>
                             <asp:BoundField DataField="School" HeaderText="School" ItemStyle-Width="100">
                                <ItemStyle Width="200px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Field_Exp" HeaderText="Field Experience" ItemStyle-Width="200">
                                <ItemStyle Width="200px"></ItemStyle>
                            </asp:BoundField>                          
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="EditButton1" runat="server" Height="40px"
                                        Width="150px" Text="Edit" OnClick="Edit_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                          

                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>

                    </div>

                    <asp:LinkButton ID="LinkButton1" runat="server" Style="display: none"></asp:LinkButton>
                    <asp:Panel ID="Panel1" runat="server" Height="319px" Width="600px" BackColor="White" BorderColor="Black" BorderStyle="Ridge" ForeColor="#003399">
                        <br />
                        <br />
                        <table>
                            <tr>
                                <td class="auto-style lblStyle">First Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="offset-sm-0" Width="400px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style lblStyle">Last Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="400px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style lblStyle">School</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Width="400px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style lblStyle">Field of Experience</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Width="400px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                       
                        <br />
                        <table class="w-100">
                            <tr>
                                <td class="auto-style10">
                                    <asp:Button ID="Button2" runat="server" Text="Enter" OnClick="EnterClick" Width="140px" />
                                </td>
                                <td class="auto-style10">
                                    <asp:Button ID="Button3" runat="server" Text="CANCLE" Width="140px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                    <ajax:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button3" BackgroundCssClass="modalBackground" runat="server"></ajax:ModalPopupExtender>
                </div>
             </div>
        </form>
    </header>
    <footer class="footer-bg">
		<!-- DOM innerHTML footer -->
		<div id="universal-footer"></div>
	</footer>
</body>
</html>
