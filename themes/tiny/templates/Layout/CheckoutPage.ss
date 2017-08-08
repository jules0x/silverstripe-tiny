<div class="layout">
    <div class="container pure-g">

        <div class="content pure-u-1">
            <h1 class="pageTitle">$Title</h1>
        </div>

        <div id="Checkout" class="pure-u-1">
            <div class="typography">

                <% if $PaymentErrorMessage %>
                    <p class="message error">
                    <%t CheckoutPage.PaymentErrorMessage 'Received error from payment gateway:' %>
                    $PaymentErrorMessage
                    </p>
                <% end_if %>

                <% if $Content %>
                    $Content
                <% end_if %>
            </div>
            <div class="cart-wrap">
                <% if $Cart %>
                    <% with $Cart %>
                        <% include Cart ShowSubtotals=true %>
                    <% end_with %>

                <div class="order-form">
                    $OrderForm
                </div>
                <% else %>
                    <p class="message warning"><%t ShoppingCart.NoItems "There are no items in your cart." %></p>
                <% end_if %>
            </div>
        </div>

    </div>
</div>