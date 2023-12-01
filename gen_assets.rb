#!/usr/bin/env ruby
require 'tempfile'
require './common.rb'

class AssetsGenerator
  @@font_file = '/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'
  @@bg_color = 'white'
  @@fg_color = 'black'
  @@img_size = '1280x1280'
  @@point_size = 1024

  def clean_dir()
    FileUtils.rm_r ASSETS_DIR, :force => true
    FileUtils.mkdir ASSETS_DIR
  end

  def initialize()
    @template_file = Tempfile.new(['linka_template', '.png'])

    "convert -size #{@@img_size} xc:#{@@bg_color} #{@template_file.path}".launch()

    clean_dir
  end

  def gen_png_file(letter, output_filename)
    "convert -font #{@@font_file} -fill #{@@fg_color} -gravity center -pointsize #{@@point_size} -draw 'text 0,0 \"#{letter}\"' #{@template_file.path} #{output_filename}".launch()
  end

  def gen_pngs()
    symbols = SymGenerator.all() 

    symbols.each do |a, b, c|
      output_filename = "#{ASSETS_DIR}/#{c}"
      gen_png_file(a, output_filename)
    end
  end
end

asset_generator = AssetsGenerator.new()
asset_generator.gen_pngs()
