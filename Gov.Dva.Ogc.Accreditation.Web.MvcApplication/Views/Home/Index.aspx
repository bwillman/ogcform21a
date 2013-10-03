<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import namespace="Gov.Dva.Ogc.Accreditation.Web.MvcApplication.Models"  %>


<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    OGC VSO and Attorney Accreditation Online Forms
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <% Gov.Dva.Ogc.Data.Accreditation.Web.WebForm21 thisModel = (Gov.Dva.Ogc.Data.Accreditation.Web.WebForm21)ViewData["benModel"];
        %>
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>OGC VSO and Attorney Accreditation Forms 21 and 21a</h1><br />
                <h2><%: ViewBag.Message %></h2>
            </hgroup>
            <p>
                If you are a Veteran Service Organization (VSO) or attorney who would like to be accredited by the VA to work with veterans, you may submit forms 21 and 21a below.
            </p>
            <p>FirstName: <%: thisModel.FirstName  %> </p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        <a href="" class="cta">
        New form 21a 
        </a>

    </h3>
</asp:Content>
