# scrivito_linklist_widget

A Scrivito widget to insert a list of links. You can also use titles as CSS class to add additional styles.

## Installation

Add this line to your application's `Gemfile`:

    gem 'scrivito_linklist_widget'

## Customization

Normaly the widget only renders a list of links. But you can set a CSS class for every list element and set more better styles. For example a list of round clickable links:

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
