# scrivito_linklist_widget

A Widget for Scrivito where a space between two widgets can be set by an editor.

## Installation

Add this line to your application's `Gemfile`:

    gem 'scrivito_linklist_widget'
    gem 'scrivito_advanced_editors'

And then execute:

    $ bundle
    $ rake scrivito:migrate:install
    $ rake scrivito:migrate
    $ rake scrivito:migrate:publish

The class Widget gives only simple styling. Feel free to override the view in your App to use costum styles. For example use font awesome for icons.

## Contributing

1. Fork it ( https://github.com/infopark/scrivito_space_widget/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request