<%@ Page Language="C#" Culture="es-MX" UICulture="es-MX" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PruebaAjax.Index" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prueba AJAX</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Index.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox1" runat="server" />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>               
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label">Hola Mundo</asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Click" CssClass="btn btn-primary" OnClick="Button1_Click" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1" />
                </Triggers>
                
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <!-- Modal -->
                    <div class="modal-progress">
                        <div class="center-progress">
                            <img src="Image/atomo.gif" />
                        </div>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
                       
        </div>
    </form>
</body>
</html>
