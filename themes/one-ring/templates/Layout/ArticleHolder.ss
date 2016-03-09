<% loop $Children %>

<% if $Photo %>
	<p>
	<% with $Photo.SetWidth(200) %>
	<img src="$URL" width="$Width" height="$Height" class="my-custom-class">
	<% end_with %> 
	</p>
<% end_if %>

<p><a href="$Link" class="$LinkingMode">$Title</a></p>

    
$Content.LimitCharacters(100)

<hr>
<% end_loop %>



$Form