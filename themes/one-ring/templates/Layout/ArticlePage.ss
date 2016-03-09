<h1>$Title</h1>
$Date.Nice 


<!-- | $Date.Long | $Date.NiceUS | $Date.Formate("DD/MM/YYYY")-->

<hr>

<% if $Photo %>
<p>
<% with $Photo.SetWidth(750) %>
    <img src="$URL" width="$Width" height="$Height" class="my-custom-class">
<% end_with %>
</p>  
<hr>
<% end_if %>

 




<!--<hr>
<h2>Scaling functions</h2>
$Photo.SetWidth(150) //.SetWidth(150) <br>

$Photo.ScaleWidth(150) // .ScaleWidth(150)<br>
$Photo.ScaleMaxWidth(100) // .ScaleMaxWidth(100)<br>
$Photo.ScaleHeight(150) // .ScaleMaxHeight(150)<br>
$Photo.ScaleMaxHeight(150) //.ScaleMaxHeight<br>
$Photo.Fit(300,300) // .Fit(300,300)<br>
$Photo.FitMax(300,300) // .FitMax(300,300)<br>
<br><br>
<h2>Cropping functions</h2>
$Photo.Fill(150,150) // .Fill(150,150) a 150x150px image resized and cropped to fill specified dimensions (up-sampled)<br>
$Photo.FillMax(150,150) // .FillMax(150,150) Returns a 100x100px image (like Fill but prevents up-sampling)<br>
$Photo.CropWidth(150) // .CropWidth(150) Returns a 150x100px image (trims excess pixels off the x axis from the center)<br><br>
$Photo.CropHeight(50) // .CropHeight(50) Returns a 200x50px image (trims excess pixels off the y axis from the center)<br>
<br><br><br><br>
<h2>Padding functions (add space around an image)</h2>
$Photo.Pad(200,200) // .Pad(200,200) Returns a 100x100px padded image, with white bars added at the top and bottom<br>
$Photo.Pad(200, 200, CCCCCC) // .Pad(200, 200, CCCCCC) Same as above but with a grey background<br>
<br><br>-->

$Content


<% if $Brochure %>
<div class="row">
    <% with $Brochure %>
    <div class="col-sm-12">
        <a href="$URL" class="btn btn-warning btn-block"><i class="fa fa-download"></i> Download brochure [$Extension] ($Size)</a>                  
    </div>
    <% end_with %>
</div>
<% end_if %>


<!-- <% loop ChildrenOf(news) %>
<p><a href="$Link" class="$LinkingMode">$Title</a></p>
<% end_loop %>-->

$Parent.URLSegment

$Parent.Title


Latest News
<% loop $Parent.Children %>
    <% if $LinkingMode != current %>
<p><a href="$Link" class="$LinkingMode">$Title</a></p>
    <% end_if %>
<% end_loop %>

$Form