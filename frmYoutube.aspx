<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmYoutube.aspx.cs" Inherits="YoutubeAPI.frmYoutube" Async="true" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="BLL" %>
<%@ Import Namespace="DAL" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Buscador de YouTube</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .result {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">Buscador de YouTube</h2>
            <div class="input-group mb-3">
                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control" placeholder="Buscar videos..." />
                <div class="input-group-append">
                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="btnBuscar_Click" />
                </div>
            </div>

            <h3>Resultados:</h3>
            <asp:Repeater ID="rptVideos" runat="server">
                <ItemTemplate>
                    <div class="result">
                        <h5>
                            <a href="https://www.youtube.com/watch?v=<%# Eval("VideoId") %>" target="_blank"><%# Eval("Title") %></a>
                        </h5>
                        <p><%# Eval("Description") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

