<div class="layout">
    <div class="container pure-g">

        <div class="content pure-u-1">
            <h1 class="content-title">$Title</h1>
            <% if $Content %>
                <div class="content-html">
                    $Content
                </div>
            <% end_if %>
        </div>

        <% if $Products %>
            <div class="category pure-u-1">
                <% include Sorter %>

                <ul class="product-list">
                    <% loop $Products %>
                        <% include ProductGroupItem %>
                    <% end_loop %>
                </ul>

                <% include ProductGroupPagination %>
            </div>
        <% end_if %>

        <div class="pure-u-1 pure-u-md-8-24">
            <% include SideBar %>
        </div>

    </div>
</div>