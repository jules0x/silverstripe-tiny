<% if $PriceRange %>
	<div class="price">
		<strong class="price-value">$PriceRange.Min.Nice</strong>
		<% if $PriceRange.HasRange %>
			- <strong class="price-value">$PriceRange.Max.Nice</strong>
		<% end_if %>
		<span class="price-currency">$Price.Currency</span>
	</div>
<% else_if $Price %>
	<div class="price">
		<strong class="value">$Price.Nice</strong> <span class="price-currency">$Price.Currency</span>
	</div>
<% end_if %>