#app/inputs/collection_radio_buttons_input.rb
class CollectionRadioButtonsInput < SimpleForm::Inputs::CollectionRadioButtonsInput
  def item_wrapper_class
    "radio-inline"
  end
end