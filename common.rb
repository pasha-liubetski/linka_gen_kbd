#!/usr/bin/env ruby

ASSETS_DIR = 'assets'

class String
  def launch
    puts self
    system self
  end
end

class SymGenerator
  @@space_symbol = [['␣', ' ', '_space.png']]

  @@special_symbols = [
    ['.', '.', '_dot.png'],
    [',', ',', '_comma.png'],
    ['?', '?', '_question.png'],
    ['!', '!', '_exclamation.png']
  ]

  @@translit = {
    'а' => 'a', 'б' => 'b', 'в' => 'v', 'г' => 'g', 'д' => 'd', \
    'е' => 'e', 'ё' => 'yo', 'ж' => 'zh', 'з' => 'z', 'и' => 'i', \
    'й' => 'j', 'к' => 'k', 'л' => 'l', 'м' => 'm', 'н' => 'n', \
    'о' => 'o', 'п' => 'p', 'р' => 'r', 'с' => 's', 'т' => 't', \
    'у' => 'u', 'ф' => 'f', 'х' => 'h', 'ц' => 'c', 'ч' => 'ch', \
    'ш' => 'sh', 'щ' => 'shh', 'ы' => 'y', 'э' => 'eh', 'ю' => 'yu', \
    'я' => 'ya', 'ъ' => 'hard_sign', 'ь' => 'soft_sign'
  }

  @@digits = (0..9).map {|e| ["#{e}", "#{e}", "#{e}.png"] }

  @@letters_en = ('a'..'z').map { |e| [e.upcase, e, "en_#{e}.png"] }
  @@letters_ru = ('а'..'я').map { |e| [e.upcase, e, "ru_#{@@translit[e]}.png"] }
  
  @@all = @@digits + @@letters_en + @@letters_ru + @@special_symbols + @@space_symbol

  def self.digits()
    @@digits
  end

  def self.letters_en()
    @@letters_en
  end

  def self.letters_ru()
    @@letters_ru
  end

  def self.space_symbol()
    @@space_symbol
  end

  def self.special_symbols()
    @@special_symbols
  end

  def self.all()
    @@all
  end

  def self.filenames(arr)
    arr.map { |e| "#{ASSETS_DIR}/#{e.last}" }
  end
end
