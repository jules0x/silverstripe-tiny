<header class="header">
    <div class="header-container container">

        <a class="brand" href="$BaseHref">$SiteConfig.Title</a>

        <button class="hamburger menu-toggle pure-button"
                type="button"
                aria-label="Open the mobile menu"
                data-menu-toggle>
            <span class="hamburger-box">
                <span class="hamburger-inner"></span>
            </span>
        </button>

        <nav class="menu menu--main menu--{$SiteConfig.MobileMenuStyle}" data-menu>
            <ul class="menu-list pure-menu-list" data-menu-list>
                <% loop $Menu(1) %>
                    <li class="menu-item pure-menu-item $LinkingMode">
                        <a href="$AbsoluteLink" class="menu-link $LinkingMode">$MenuTitle</a>
                    </li>
                <% end_loop %>
            </ul>
        </nav>
    </div>
</header>