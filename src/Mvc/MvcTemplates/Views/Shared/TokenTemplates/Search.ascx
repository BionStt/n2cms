﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<string>" %>
<%@ Import Namespace="N2.Persistence.Search" %>
<% var content = Html.Content(); %>
<% var searcher = content.Services.Resolve<ITextSearcher>(); %>
<% int total = 0; %>
<% var results = searcher.Search(SearchQuery.For(Model).Below(content.Traverse.StartPage).Pages(true)); %>
<% if(results.Hits.Any()) { %>
<ul>
	<% foreach (var item in results.Hits) { %>
	<li><span><%= content.LinkTo(item.Content) %></span></li>
	<% } %>
</ul>
<% } %>