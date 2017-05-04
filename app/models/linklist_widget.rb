class LinklistWidget < Widget
  attribute :links, :linklist
  attribute :show_as_css, :enum, values: ['Yes','No'], default: 'No'
  attribute :show_in_row, :enum, values: ['Yes','No'], default: 'No'
  attribute :styles, :stringlist

  def show_in_row?
    show_in_row == 'Yes'
  end

  def show_as_css?
    show_as_css == 'Yes'
  end

  def scrivito_selectable_style_classes
    if Obj.respond_to? 'scrivito_selectable_style_classes'
      Obj.scrivito_selectable_style_classes(obj_class)
    else
      []
    end
  end
end
