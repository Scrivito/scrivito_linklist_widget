# ScrivitoLinklistWidget

A Scrivito widget for adding a list of links to a page. You can also use the titles of the individual links as CSS class names to style the links individually.

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_linklist_widget'

## Localization

The following code represents the default localization for English. Copy it to your `en.yml` and change it if necessary:

```yaml
en:
  scrivito_linklist_widget:
    thumbnail:
      title: Linklist
      description: Add a Linklist for your page.
    details:
      show_as_css: Use link title as CSS class
      links: Links
      show_in_row: Show lists elems in a row
      styles: Styles
``

## Customization

Usually, the widget just renders a list of links. To apply the CSS classes mentioned above, define the classes, for example, as follows:

```css
ul.list-with-css li {
  float: left;
}

ul.list-with-css li a {
  border-radius: 50%;
  width: 100px;
  height: 100px;
  margin-left: 5px;
  background-color: blue;
  display: block;
}

ul.list-with-css li.my_css_class a:before {
  content: '$'; // also using icon fonts is possible
  margin: 0 auto;
  display: block;
  height: 20px;
  width: 20px;
  font-size: 20px;
  line-height: 20px;
  margin-top: 40px;
}
```

## Your own list style

You can overwrite the partial to change the html for a list element. Create a partial at `views/listlist_widget/_element.html.erb` and add your html. The partial get two parameters. `widget` contains the widget and with `widget.show_as_css?` and `widget.show_in_row?` you can get if the option is set to **Yes**. The parameter `link` contains the scrivito link. Look at http://www.rubydoc.info/gems/scrivito_sdk/Scrivito/Link to see how to use.

Example to add an icon from bootstraps glyphicon:

```
<li class="<%= widget.show_as_css? ? link.title : '' %>">
  <% if widget.show_as_css? %>
    <i class="glyphicon glyphicon-<%= link.title %>"></i>
  <% end %>
  <% if link.url %>
    <%= link_to link.title, link.url %>
  <% else %>
    <%= link.title %>
  <% end %>
</li>
```
