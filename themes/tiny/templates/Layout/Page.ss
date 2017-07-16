<div class="layout">
    <div class="container pure-g">

        <% if $Menu(2) %>
            <% include MenuSide %>
        <% end_if %>

        <div class="content pure-u-1 <% if $Menu(2) %>pure-u-md-19-24 pure-push-md-1-24<% end_if %>">

            <h1 class="content-title">$MenuTitle</h1>

            <p class="content-intro">$Intro</p>

            <div class="content-html">
                $Content
            </div>

            <% if $Form %>
                <div class="form">
                    $Form
                </div>
            <% end_if %>
        </div>
    </div>
</div>
