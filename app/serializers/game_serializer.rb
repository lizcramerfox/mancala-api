# frozen_string_literal: true

class GameSerializer < ActiveModel::Serializer
  attributes :id, :is_over, :current_player, :board
end
