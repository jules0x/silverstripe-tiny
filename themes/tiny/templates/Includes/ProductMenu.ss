<div class="product-menu">
    <h3 class="product-menu-title">
        <% with $Level(1) %>
            <a href="$Link">$Title</a>
        <% end_with %>
    </h3>

    <ul class="product-menulist">
        <% loop $GroupsMenu %>
            <% if $Children %>
                <li class="$LinkingMode">
                    <a href="$Link"
                       title="<%t ProductMenu.GotoPageTitle "Go to the {Title} page" Title=$Title.XML %>"
                       class="$LinkingMode product-menulist-link">
                        <span><em>$MenuTitle.XML</em></span>
                    </a>
                </li>
            <% else %>
                <li class="product-menulist-item">
                    <a href="$Link"
                       title="<%t ProductMenu.GotoPageTitle "Go to the {Title} page" Title=$Title.XML %>"
                       class="$LinkingMode product-menulist-link">
                        <span><em>$MenuTitle.XML</em></span>
                    </a>
                </li>
            <% end_if %>
            <% if $LinkOrSection == 'section' %>
                <% if $ChildGroups %>
                    <ul class="product-menulist">
                        <% loop $ChildGroups %>
                            <li class="product-menulist-item">
                                <a href="$Link"
                                   title="<%t ProductMenu.GotoPageTitle "Go to the {Title} page" Title=$Title.XML %>"
                                   class="$LinkingMode product-menulist-link">
                                    $MenuTitle.LimitCharacters(22)
                                </a>
                            </li>
                        <% end_loop %>
                    </ul>
                 <% end_if %>
            <% end_if %>
        </li>
        <% end_loop %>
    </ul>
</div>
