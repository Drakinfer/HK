class Type < ApplicationRecord
  belongs_to :generation
  def self.attributes_sorted
    self.attribute_names.reject { |n| ["id", "name", "generation_id", "active", "created_at", "updated_at"].include?(n) }.map { |attr| [attr, I18n.t("dex.types.#{attr}")] }.sort_by! { |_, translation| translation }
  end

  def toggle_active!
    self.active = !self.active
    self.save
  end
end
