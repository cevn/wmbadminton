#app/inputs/collection_check_boxes_input.rb
class CollectionCheckBoxesInput < SimpleForm::Inputs::CollectionCheckBoxesInput
  def item_wrapper_class
    "checkbox-inline"
  end
end