#!/usr/bin/env ruby
require 'json'
require 'tempfile'

board_columns = 4
board_rows = 3

board_descr = "Крупная клавиатура #{board_columns}x#{board_rows}, похожая на 'LINKa. Бумажная клавиатура' <https://linka.su/linka-paperboard/>. Подходит для людей, кому сложно пользоваться экранной клавиатурой меньшего размера из-за плохого зрения, нистагма либо чего-то другого.

Автор — Паша Любецкий <pasha.liubetski@yandex.com>, лицензия — Creative Commons Attribution 4.0 International (CC-BY 4.0)."

output_filename = "kbd_#{board_columns}x#{board_rows}.linka"

output_dir = 'out_dir'

font_file = '/usr/share/fonts/truetype/lato/Lato-Black.ttf'

bg_color = 'white'
fg_color = 'black'

img_size = '1280x1280'
pointsize = 1024
rhvoice_voice = 'anna'

template_file = Tempfile.new(['linka_template', '.png'])

symbols = [ ('А'..'Я').to_a, (0..9).to_a ].flatten

def get_card_hash(card_title, card_id = 0)
  card_template_hash = {
    id: card_id,
    title: card_title,
    imagePath: "#{card_title}.png",
    audioPath: "#{card_title}.wav",
    cardType: 0
  }
  
  card_template_hash
end

i = 0

symbols_hashes = symbols.map do |letter|
  out = get_card_hash(letter, i)

  i += 1
  
  out
end

src_hash = {
  version: '1.2',
  description: board_descr,
  directSet: false,
  columns: board_columns,
  rows: board_rows,
  withoutSpace: true,
  cards: symbols_hashes
}

puts "Re-creating #{output_dir}..."

FileUtils.rm_r output_dir, :force => true
FileUtils.mkdir output_dir

puts "Generating config.json..."

File.open("#{output_dir}/config.json", 'w') do |f|
  f.puts JSON.pretty_generate src_hash
end

puts "Generating template: #{template_file.path}"

template_str = "convert -size #{img_size} xc:#{bg_color} #{template_file.path}"
puts template_str
system template_str

puts "Generating letters PNGs..."

symbols.each do |letter|
  cmdline = "convert -font #{font_file} -fill #{fg_color} -gravity center -pointsize #{pointsize} -draw 'text 0,0 \"#{letter}\"' #{template_file.path} #{output_dir}/#{letter}.png"
  
  rhvoice_cmdline = "echo #{letter} | RHVoice-test -R 44100 -p #{rhvoice_voice} -o #{output_dir}/#{letter}.wav"

  puts cmdline
  system cmdline
  
  puts rhvoice_cmdline
  system rhvoice_cmdline
end

template_file.unlink

puts "Creating output file #{output_filename}..."

FileUtils.rm output_filename, :force => true

FileUtils.cd(output_dir) do
  system "zip ../#{output_filename} *"
end
