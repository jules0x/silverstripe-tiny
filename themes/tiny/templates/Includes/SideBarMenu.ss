<% if $LinkOrSection == 'section' %>
    <% if $Children %>
        <% loop $Children %>
            <li class="menu-item pure-menu-item $LinkingMode">
                <a href="$AbsoluteLink" class="menu-link $LinkingMode">$MenuTitle</a>
                <% if $Children %>
                    <ul class="menu-list menu-list--nested pure-menu-list">
                        <% include SideBarMenu Nested='true' %>
                    </ul>
                <% end_if %>
            </li>
        <% end_loop %>
    <% end_if %>
<% end_if %>