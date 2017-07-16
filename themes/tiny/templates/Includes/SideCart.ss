<div class="cart--side">
    <h3><%t ShoppingCart.Headline "Shopping cart" %></h3>

    <% if $Cart %>
        <% with $Cart %>
            <p class="cart-itemcount">
                <% if $Items.Plural %>
                    <%t ShoppingCart.ItemsInCartPlural 'There are <a href="{link}">{quantity} items</a> in your cart.' link=$Top.CartLink quantity=$Items.Quantity %>
                <% else %>
                    <%t ShoppingCart.ItemsInCartSingular 'There is <a href="{link}">1 item</a> in your cart.' link=$Top.CartLink %>
                <% end_if %>
            </p>

            <div class="cart-checkoutlink">
                <a href="$Top.CheckoutLink"><%t ShoppingCart.Checkout "Checkout" %></a>
            </div>

            <% loop $Items %>
                <div class="cart-item $EvenOdd $FirstLast">
                    <% if $Product.Image %>
                        <div class="cart-item-image">
                            <a href="$Product.Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                                <% with $Product %>$Image.setWidth(45)<% end_with %>
                            </a>
                        </div>
                    <% end_if %>

                    <p class="cart-item-title">
                        <a href="$Product.Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                            $TableTitle
                        </a>
                    </p>

                    <p class="cart-item-cost">
                        <span class="cart-item-quantity">$Quantity</span>
                        <span class="cart-item-times">x</span>
                        <span class="cart-item-unitprice">$UnitPrice.Nice</span>
                    </p>

                    <% if $SubTitle %>
                        <p class="cart-item-subtitle">$SubTitle</p>
                    <% end_if %>

                    <a class="cart-item-removelink" href="$removeallLink" title="<%t ShoppingCart.RemoveTitle "Remove &quot;{Title}&quot; from your cart." Title=$TableTitle %>">x</a>
                </div>
            <% end_loop %>

        <% end_with %>
    <% else %>
        <p class="cart-empty"><%t ShoppingCart.NoItems "There are no items in your cart." %></p>
    <% end_if %>

</div>
