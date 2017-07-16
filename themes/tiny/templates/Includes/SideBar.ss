<div class="sidebar">
    <% if $GroupsMenu %>
        <% include ProductMenu %>
    <% else %>
        <% with $Parent %>
            <% include ProductMenu %>
        <% end_with %>
    <% end_if %>

  <% include SideCart %>
</div>
