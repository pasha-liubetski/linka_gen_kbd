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

  @@letters_en = ('A'..'Z').map { |e| [e, e, "#{e}.png"] }
  @@letters_ru = ('А'..'Я').map { |e| [e, e, "#{e}.png"] }
  @@digits = (0..9).map {|e| ["#{e}", "#{e}", "#{e}.png"] }
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
