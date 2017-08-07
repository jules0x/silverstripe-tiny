<% if $Sorter %>
    <p class="sorter">
        <% loop $Sorter.Sorts %>
            <span class="sorter-option sorter-option--$ID<% if $IsCurrent %> sorter--current<% end_if %>">
				<a href="$Link" title="sort by $Title" class="sorter-link">$Title</a>
			</span>
            <% if not $Last %> | <% end_if %>
        <% end_loop %>
    </p>
<% end_if %>
