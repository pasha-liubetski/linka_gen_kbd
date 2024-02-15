#!/usr/bin/env ruby
require 'json'
require 'fileutils'
require './common.rb'

class LinkaGenerator
  def gen_descr
    str = "Крупная клавиатура #{@columns}x#{@rows}, похожая на 'LINKa. Бумажная клавиатура' <https://linka.su/linka-paperboard/>.

Подходит для людей, кому сложно пользоваться экранной клавиатурой меньшего размера из-за плохого зрения, нистагма либо чего-то другого.

Автор — Паша Любецкий <pasha.liubetski@yandex.com>, лицензия — Creative Commons Attribution 4.0 International (CC-BY 4.0)."

    str
  end

  def initialize(symbols, columns, rows)
    @columns = columns
    @rows = rows
    @symbols = symbols

    @descr = gen_descr
  end

  def get_card_hash_template(card_id, title, image_path)
    card_hash = {
      id: card_id,
      title: title,
      imagePath: image_path,
      audioPath: "",
      cardType: 0
    }
    
    card_hash
  end

  def gen_hashes()
    i = 0

    hashes = @symbols.map do |a, b, c|
      out = get_card_hash_template(i, b, c)
      i += 1

      out
    end

    hashes
  end

  def gen_config()
    hashes = gen_hashes

    src_hash = {
      version: '1.2',
      description: @descr,
      directSet: false,
      columns: @columns,
      rows: @rows,
      withoutSpace: true,
      cards: hashes
    }

    JSON.pretty_generate src_hash
  end
end

class ZipGenerator
  @@zip_tmp = 'zip_tmp'

  def initialize(out_name, symbols, columns, rows)
    @out_name = out_name
    @symbols = symbols
    @columns = columns
    @rows = rows
  end

  def clean_zip_tmp()
    FileUtils.rm_r @@zip_tmp, :force => true
    FileUtils.mkdir @@zip_tmp
  end

  def generate()
    clean_zip_tmp()

    linka_generator = LinkaGenerator.new(@symbols, @columns, @rows)

    File.open("#{@@zip_tmp}/config.json", 'w') do |f|
      f.puts linka_generator.gen_config()
    end

    filenames = SymGenerator.filenames(@symbols)

    FileUtils.cp(filenames, @@zip_tmp)

    FileUtils.cd(@@zip_tmp) do
      "zip ../#{@out_name} *".run
    end
  end
end

FileUtils.rm Dir.glob('*.linka*'), :force => true

sg = SymGenerator.instance

symbols_en = sg.space_symbol() + sg.letters_en() + sg.digits() + sg.special_symbols()
symbols_ru = sg.space_symbol() + sg.letters_ru() + sg.digits() + sg.special_symbols()

sizes = [
  [1, 1], [2, 1], [2, 2], [3, 3], [4, 4]
]

sizes.each do |c,r|
  filename_en = "en_#{c}x#{r}.linka"
  filename_ru = "ru_#{c}x#{r}.linka"

  ZipGenerator.new(filename_en, symbols_en, c, r).generate()
  ZipGenerator.new(filename_ru, symbols_ru, c, r).generate()
end
