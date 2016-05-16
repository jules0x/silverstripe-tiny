<div class="navigation">
    <div class="container-fluid">
        <nav id="primary" class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button"
                            class="navbar-toggle collapsed"
                            data-toggle="collapse"
                            data-target="#navbar"
                            aria-expanded="false"
                            aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">$SiteConfig.Title</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <% loop $Menu(1) %>
                            <li class="$LinkOrCurrent()">
                                <a href="$Link" title="Go to the $Title.XML page">$MenuTitle.XML</a>
                            </li>
                        <% end_loop %>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>