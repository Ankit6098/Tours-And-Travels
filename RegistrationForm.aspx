<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="TourAndTravel2.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./css/LoginAndRegister.css" />

    <style type="text/css">
        .auto-style1 {
            left: -51%;
            top: 6px;
        }
    </style>

</head>
<body>
        <form id="form1" runat="server">
        <div>

            <table align="center">
                <tr>
                    <td>Full Name</td>
                    <td>
                        <asp:TextBox ID="textName" placeholder="Enter your Full Name" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="textAddress" placeholder="Enter your Address" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged"  />
                        <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server" Text="Others" OnCheckedChanged="RadioButton3_CheckedChanged"  />
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="textPhone" placeholder="+91-" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="textEmail" placeholder="example@example.com" runat="server" TextMode="Email"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>UserName</td>
                    <td>
                        <asp:TextBox ID="textUserName" placeholder="Enter UserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="textPassword" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox></td>

                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="buttonRegister" runat="server" Text="Register" OnClick="buttonRegister_Click" />
                    </td>

                </tr>
            </table>
        </div>
    </form>

</body>
</html>
