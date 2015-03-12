module CommonActions
  def click_save
    click_on(I18n.t('buttons.save'))
  end

  def fill_model_field(model, field, options)
    fill_in(model.human_attribute_name(field), options)
  end

  def click_i18n(id)
    click_on(I18n.t(id))
  end
end
