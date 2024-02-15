#!/usr/bin/env ruby
require 'singleton'

ASSETS_DIR = 'assets'

class String
  def run
    puts self
    system self
  end
end

class SymGenerator
  include Singleton
  attr_reader :digits, :space_symbol, :special_symbols, :letters_en, :letters_ru, :all

  def initialize()
    @space_symbol = [['␣', ' ', '_space.png']]

    @special_symbols = [
      ['.', '.', '_dot.png'],
      [',', ',', '_comma.png'],
      ['?', '?', '_question.png'],
      ['!', '!', '_exclamation.png']
    ]

    @digits = (0..9).map {|e| ["#{e}", "#{e}", "#{e}.png"] }

    @letters_en = ('a'..'z').map { |e| [e.upcase, e, "en_#{e}.png"] }
    @letters_ru = ('а'..'я').map { |e| [e.upcase, e, "ru_#{SymGenerator.translit(e)}.png"] }

    @all = @digits + @letters_en + @letters_ru + @special_symbols + @space_symbol
  end

  def self.filenames(arr)
    arr.map { |e| "#{ASSETS_DIR}/#{e.last}" }
  end

  def self.translit(e)
    trm = {
      'а' => 'a', 'б' => 'b', 'в' => 'v', 'г' => 'g', 'д' => 'd', \
      'е' => 'e', 'ё' => 'yo', 'ж' => 'zh', 'з' => 'z', 'и' => 'i', \
      'й' => 'j', 'к' => 'k', 'л' => 'l', 'м' => 'm', 'н' => 'n', \
      'о' => 'o', 'п' => 'p', 'р' => 'r', 'с' => 's', 'т' => 't', \
      'у' => 'u', 'ф' => 'f', 'х' => 'h', 'ц' => 'c', 'ч' => 'ch', \
      'ш' => 'sh', 'щ' => 'shh', 'ы' => 'y', 'э' => 'eh', 'ю' => 'yu', \
      'я' => 'ya', 'ъ' => 'hard_sign', 'ь' => 'soft_sign'
    }

    trm[e]
  end
end
