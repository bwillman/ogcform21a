<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<Gov.Dva.Ogc.Data.Accreditation.Web.WebForm21a>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>WebForm21a</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WebForm21aServiceBranch.OtherService) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WebForm21aServiceBranch.OtherService) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FirstName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FirstName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.MiddleName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.MiddleName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.LastName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.LastName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HomeAddress1) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HomeAddress1) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HomeAddress2) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HomeAddress2) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HomeState) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HomeState) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HomeZip) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HomeZip) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HomePhoneNo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HomePhoneNo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HomeEmailAddr) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HomeEmailAddr) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.EmploymentStatus) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.EmploymentStatus) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WorkAddress1) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WorkAddress1) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WorkAddress2) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WorkAddress2) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WorkCity) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WorkCity) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WorkState) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WorkState) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WorkZip) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WorkZip) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.BirthDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.BirthDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.BirthLocation) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.BirthLocation) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.BranchOfService) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.BranchOfService) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsBarMember) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsBarMember) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsPracticing) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsPracticing) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WasConvicted) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WasConvicted) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ExplainConviction) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ExplainConviction) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WasConvictedMilitary) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WasConvictedMilitary) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ExplainMilitaryConviction) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ExplainMilitaryConviction) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsCharged) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsCharged) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ExplainCharges) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ExplainCharges) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WasExpelled) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WasExpelled) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WasDisciplined) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WasDisciplined) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WasTerminated) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WasTerminated) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HasRepresentedGovt) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HasRepresentedGovt) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WasBarred) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WasBarred) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HaveAppliedForAccred) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HaveAppliedForAccred) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.WasAccredTerminated) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.WasAccredTerminated) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsImpaired) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsImpaired) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ExplainImpairment) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ExplainImpairment) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsPhysicallyLimited) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsPhysicallyLimited) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ExplainLimitation) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ExplainLimitation) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DateEntered) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DateEntered) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsProcessed) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsProcessed) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
