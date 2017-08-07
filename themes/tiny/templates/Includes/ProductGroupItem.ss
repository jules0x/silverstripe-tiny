<li class="product pure-u-xs-12-24  pure-u-sm-8-24 pure-u-md-6-24">
    <% if $Image %>
        <a href="$Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
            <img src="$Image.Thumbnail.URL" alt="<%t Product.ImageAltText "{Title} image" Title=$Title %>" />
        </a>
    <% else %>
        <a href="$Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>" class="noimage"><!-- no image --></a>
    <% end_if %>

    <h3 class="product-title">
        <a href="$Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">$Title</a>
    </h3>

    <% if $Model %>
        <p class="product-model"><strong><%t Product.Model "Model" %>:</strong> $Model.XML</p>
    <% end_if %>

    <div>
        <% include Price %>

        <% if $View %>
            <div class="product-viewlink">
                <a href="$Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                    <%t Product.View "View Product" %>
                </a>
            </div>
        <% else %>
            <% if $canPurchase %>
                <div class="product-add">
                    <a class="tiny-button" href="$addLink" title="<%t Product.AddToCartTitle "Add &quot;{Title}&quot; to your cart" Title=$Title %>">
                        <%t Product.AddToCart "Add to Cart" %>
                        <% if $IsInCart %>
                            ($Item.Quantity)
                        <% end_if %>
                    </a>
                </div>
            <% end_if %>
        <% end_if %>
    </div>
</li>
