# ScrivitoLinklistWidget

A Scrivito widget for adding a list of links to a page. You can also use the titles of the individual links as CSS class names to style the links individually.

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_linklist_widget'

## Customization

Usually, the widget just renders a list of links. To apply the CSS classes mentioned above, define the classes, for example, as follows:

```
ul li[class] {
  float: left;
}

ul li[class] a {
  border-radius: 50%;
  width: 100px;
  height: 100px;
  margin-left: 5px;
  background-color: blue;
  display: block;
}

ul li.my_css_class a:before {
  content: '$'; // also using icon fonts is possible
  margin: 0 auto;
  disply: block:
  height: 20px;
  width: 20px;
  font-size: 20px;
  line-height: 20px;
  margin-top: 40px;
}
```
