<% loop $Children %>
<p><a href="$Link" class="$LinkingMode">$Title</a></p>
$Content
<% end_loop %>

<hr>


<% loop $AllChildren %>
<p><a href="$Link" class="$LinkingMode">$Title</a></p>
$Content
<% end_loop %>


$Form