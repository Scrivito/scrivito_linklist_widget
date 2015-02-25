class CreateLinklistWidget < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'LinklistWidget',
      type: 'publication',
      is_binary: false,
      title: 'Linklist Widget',
      attributes: [
        {name: "links", type: "linklist"},
        {name: "show_as_css", type: "enum", values: ["Yes","No"]}
      ]
    )
  end
end
