<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Gov.Dva.Ogc.Data.Accreditation.Web.WebForm21a>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.WebForm21aServiceBranch.OtherService) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.FirstName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.MiddleName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.LastName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HomeAddress1) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HomeAddress2) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HomeState) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HomeZip) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HomePhoneNo) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HomeEmailAddr) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.EmploymentStatus) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WorkAddress1) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WorkAddress2) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WorkCity) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WorkState) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WorkZip) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.BirthDate) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.BirthLocation) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.BranchOfService) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.IsBarMember) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.IsPracticing) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WasConvicted) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ExplainConviction) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WasConvictedMilitary) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ExplainMilitaryConviction) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.IsCharged) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ExplainCharges) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WasExpelled) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WasDisciplined) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WasTerminated) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HasRepresentedGovt) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WasBarred) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.HaveAppliedForAccred) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.WasAccredTerminated) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.IsImpaired) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ExplainImpairment) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.IsPhysicallyLimited) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ExplainLimitation) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.DateEntered) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.IsProcessed) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.WebForm21aServiceBranch.OtherService) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.FirstName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.MiddleName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.LastName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HomeAddress1) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HomeAddress2) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HomeState) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HomeZip) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HomePhoneNo) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HomeEmailAddr) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.EmploymentStatus) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WorkAddress1) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WorkAddress2) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WorkCity) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WorkState) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WorkZip) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.BirthDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.BirthLocation) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.BranchOfService) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsBarMember) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsPracticing) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WasConvicted) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ExplainConviction) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WasConvictedMilitary) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ExplainMilitaryConviction) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsCharged) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ExplainCharges) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WasExpelled) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WasDisciplined) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WasTerminated) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HasRepresentedGovt) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WasBarred) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.HaveAppliedForAccred) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.WasAccredTerminated) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsImpaired) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ExplainImpairment) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsPhysicallyLimited) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ExplainLimitation) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DateEntered) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsProcessed) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { /* id=item.PrimaryKey */ }) %> |
            <%: Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { /* id=item.PrimaryKey */ }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
