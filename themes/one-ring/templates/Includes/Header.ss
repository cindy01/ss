<% loop $Menu(1) %>
<a href="$Link" title="$MenuTitle" class="$LinkingMode">$MenuTitle</a>
<% end_loop %>

<hr>

<% if $URLSegment != 'home' %>
 <a href="$AbsoluteBaseURL">Home</a> &raquo; $Breadcrumbs
<hr>
<% end_if %>
