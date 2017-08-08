

<div class="cart--side pure-g" data-sidecart>
    <button class="cart-toggle tiny-button"
            type="button"
            aria-label="Open the shopping cart"
            data-sidecart-toggle>
            <span class="hamburger-box">
            </span>
    </button>

    <h3 class="cart-title pure-u-1"><%t ShoppingCart.Headline "Shopping cart" %></h3>
    <% if $Cart %>
        <% with $Cart %>
            <p class="cart-itemcount pure-u-md-16-24">
                <% if $Items.Plural %>
                    <%t ShoppingCart.ItemsInCartPlural 'There are <a href="{link}">{quantity} items</a> in your cart.' link=$Top.CartLink quantity=$Items.Quantity %>
                <% else %>
                    <%t ShoppingCart.ItemsInCartSingular 'There is <a href="{link}">1 item</a> in your cart.' link=$Top.CartLink %>
                <% end_if %>
            </p>

        <div class="pure-u-1">
            <% loop $Items %>
                    <div class="cart-item $EvenOdd $FirstLast pure-g">
                        <% if $Product.Image %>
                            <div class="cart-item-image pure-u-md-12-24">
                                <a href="$Product.Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                                    <% with $Product %>$Image.setWidth(100)<% end_with %>
                                </a>
                            </div>
                            <a class="tiny-button cart-item-removelink pure-u-md-4-24" href="$removeallLink" title="<%t ShoppingCart.RemoveTitle "Remove &quot;{Title}&quot; from your cart." Title=$TableTitle %>">x</a>

                        <% end_if %>

                        <p class="cart-item-title pure-u-md-14-24">
                            <a href="$Product.Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                                $TableTitle
                            </a>
                        </p>

                        <p class="cart-item-cost pure-u-md-10-24">
                            <span class="cart-item-quantity">$Quantity</span>
                            <span class="cart-item-times">x</span>
                            <span class="cart-item-unitprice">$UnitPrice.Nice</span>
                        </p>

                        <% if $SubTitle %>
                            <p class="cart-item-subtitle">$SubTitle</p>
                        <% end_if %>

                    </div>
            <% end_loop %>
            </div>

        <div class="cart-checkoutlink pure-u-1">
            <a class="tiny-button" href="$Top.CheckoutLink"><%t ShoppingCart.Checkout "Checkout" %></a>
        </div>

        <% end_with %>
    <% else %>
        <p class="cart-empty"><%t ShoppingCart.NoItems "There are no items in your cart." %></p>
    <% end_if %>

</div>
