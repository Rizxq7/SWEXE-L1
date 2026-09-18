class Game < ApplicationRecord
  validates :title, presence: { message: "を入力してください" }

  validates :genre, presence: { message: "を入力してください" }

  validates :rating,
            presence: { message: "を選択してください" },
            numericality: {
              only_integer: true,
              in: 1..5,
              message: "は1〜5で選択してください"
            }
end