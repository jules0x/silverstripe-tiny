<% with $Carousel %>
    <div class="carousel" data-slider>
        <% loop $Items %>
            <div class="carousel-item">
                $Image
            </div>
        <% end_loop %>
    </div>
<% end_with %>
