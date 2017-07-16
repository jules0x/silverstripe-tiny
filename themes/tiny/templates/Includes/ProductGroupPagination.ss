<% if $Products.MoreThanOnePage %>
<div class="pagination">
    <p><%t ProductGroup.Page "Page" %>:
        <% if $Products.NotFirstPage %>
            <a class="pagination-prev" href="$Products.PrevLink" title="<%t ProductGroup.ViewPrevious "View the previous page" %>"><%t ProductGroup.Previous "previous" %></a>
        <% end_if %>

        <span class="pagination-current">
            <% loop $Products.PaginationSummary(4) %>
                <% if $CurrentBool %>
                    $PageNum
                <% else %>
                    <% if $Link %>
                        <a class="pagination-current-link" href="$Link" title="<%t ProductGroup.ViewPage "View page number {pageNum}" pageNum=$PageNum %>">$PageNum</a>
                    <% else %>
                        &hellip;
                    <% end_if %>
                <% end_if %>
            <% end_loop %>
        </span>

        <% if $Products.NotLastPage %>
            <a class="pagination-next" href="$Products.NextLink" title="<%t ProductGroup.ViewNext "View the next page" %>"><%t ProductGroup.Next "next" %></a>
        <% end_if %>
    </p>
</div>
<% end_if %>
