class Task < ApplicationRecord
  paginates_per 10
  has_one_attached :image

  def self.ransackable_attributes(auth_abject = nil)
    %w[name created_at]
  end

  def self.ransackable_associations(auth_abject = nil)
    []
  end



    validates :name, presence: true
    validates :name, length: { maximum: 30 }

    validate :validate_name_not_including_conmma

    belongs_to :user
    #ユーザー１つに繋がっている

    scope :recent, -> { order(created_at: :desc)}

    private

      def validate_name_not_including_conmma
        errors.add(:name,'にカンマを含めることはできません') if name&.include?(',')
      end

end
