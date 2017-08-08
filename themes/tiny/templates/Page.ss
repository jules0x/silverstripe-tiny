<!DOCTYPE html>

<html lang="en-NZ">

    <% include Head %>

    <body class="class-$ClassName">

        <% include Header %>

        <% if $Cart.Items %>
            <% include SideCart %>
        <% end_if %>

        $Layout

        <% include Footer %>

        <% include GoogleAnalytics %>
    </body>

</html>
