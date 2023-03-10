<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Views/Shared/Site.Master" CodeBehind="Index.aspx.cs" Inherits="MovieTickets.MVC.Demo.Web.Views.Movies.Index" %>
<asp:Content ContentPlaceHolderID="MainContent" ID="Content" runat="server">
    <%= Html.RouteLink("[new]", "new-movie") %>
    <ul id="movies">
    <% foreach (var movie in ViewData.Model.Movies) { %>
    <li>
        <a href="<%= Url.RouteUrl("Movie", new {movie.Id}) %>"><img src="<%= movie.PosterThumbnailUrl %>" width="150" height="255" alt="<%= movie.Name %>" /></a>
    </li>    
    <% } %>
    </ul>
    <div class="clear"></div>      
</asp:Content>