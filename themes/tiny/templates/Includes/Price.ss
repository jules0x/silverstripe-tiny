<% if $PriceRange %>
	<div class="price">
		<div class="price-value">$PriceRange.Min.Nice</div>
		<% if $PriceRange.HasRange %>
			- <div class="price-value">$PriceRange.Max.Nice</div>
		<% end_if %>
		<span class="price-currency">$Price.Currency</span>
	</div>
<% else_if $Price %>
	<div class="price">
		<% if $BasePrice < $Price %>
            <div class="price-original">$BasePrice.Nice</div> <span class="price-currency">$Price.Currency</span>
		<% end_if %>
		<div class="value">$Price.Nice</div> <span class="price-currency">$Price.Currency</span>
	</div>
<% end_if %>