class Competency < ActiveRecord::Base
    # relationshis
    has_many :indicators
    accepts_nested_attributes_for :indicators, reject_if: lambda { |indicator| indicator[:name].blank? }, allow_destroy: true
    # validations
    validates_presence_of :name

    # scopes
    scope :active, -> { where("active = ?", true) }
    scope :inactive, -> { where("active = ?", false) }
    scope :alphabetical, -> { order("name") }
end