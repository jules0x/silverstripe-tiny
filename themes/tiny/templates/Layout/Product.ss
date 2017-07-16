<div class="layout">
    <div class="container pure-g">

        <div class="product">
        
            <div class="content pure-u-1">
                <h1 class="content-title">$Title</h1>
                <div class="content-breadcrumbs">$Breadcrumbs</div>
            </div>

            <div class="product-details pure-u-1 ">
                <% if $Image.ContentImage %>
                    <img class="Image" src="$Image.ContentImage.URL" alt="<%t Product.ImageAltText "{Title} image" Title=$Title %>" />
                <% else %>
                    <div class="noimage"><%t Product.NoImage "no image" %></div>
                <% end_if %>

                <% if $InternalItemID %>
                    <p class="InternalItemID">
                        <span class="title"><%t Product.Code "Product Code" %>:</span>
                        <span class="value">{$InternalItemID}</span>
                    </p>
                <% end_if %>

                <% if $Model %>
                    <p class="Model">
                        <span class="title"><%t Product.Model "Model" %>:</span>
                        <span class="value">$Model.XML</span>
                    </p>
                <% end_if %>

                <% if $Size %>
                    <p class="Size">
                        <span class="title"><%t Product.Size "Size" %>:</span>
                        <span class="value">$Size.XML</span>
                    </p>
                <% end_if %>

                <% include Price %>

                <% if $IsInCart %>
                    <p class="NumItemsInCart">
                        <% if $Item.Quantity == 1 %>
                            <%t Product.NumItemsInCartSingular "You have this item in your cart" %>
                        <% else %>
                            <%t Product.NumItemsInCartPlural "You have {Quantity} items in your cart" Quantity=$Item.Quantity %>
                        <% end_if %>
                    </p>
                <% end_if %>

                $Form
            </div>

            <% if $Content %>
                <div class="product-content pure-u-1">
                    $Content
                </div>
            <% end_if %>

            <div class="pure-u-1 pure-u-md-8-24">
                <% include SideBar %>
            </div>
        </div>
    </div>
</div>
