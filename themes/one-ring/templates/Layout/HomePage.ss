<h1>$Title</h1>
$Content


<h2> Latest Article</h2>

<% loop $LatestArticles(5) %>
<p><a href="$Link" class="$LinkingMode">$MenuTitle</a><br/>$Content.FirstParagraph</p>
<% end_loop %>
$Form