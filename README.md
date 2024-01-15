# Клавиатуры для LINKa

![Скриншот](Screenshot.png)
![Скриншот 2](Screenshot_2.png)

Здесь расположены __ruby-скрипты__, которые генерируют _.linka_-карточки для программы __"LINKa. смотри"__ <https://linka.su/looks/>. Исходники оригинальной программы —  <https://github.com/linkasu/linka.looks-electron/>.

Карточки представляют из себя экранные клавиатуры, похожие на **"LINKA.Бумажная клавиатура"** (программа есть только для Android/iOS). Описание — <https://linka.su/linka-paperboard/>, исходный код — <https://github.com/linkasu/paperboard-android> и <https://github.com/linkasu/paperboard-ios>. Более подробное описание от автора здесь — <https://habr.com/ru/company/linka/blog/421133/>.

Выходные файлы — `en_3x2.linka` (английский язык) и `ru_3x2.linka` (русский язык), вместо "3x2" могут стоять другие числа, в зависимости от числа строк и столбцов.

## Системные требования

- проверена работа скрипта только на OS Linux, наверняка всё будет работать и на macOS
- чтобы запустить на OS Windows, нужен WSL
- ruby 3.1+ (на более ранних версиях не проверял)
- ImageMagick для обработки изображений
- внутри скрипта указано использование шрифта DejaVu, так что стоит установить пакет с ним либо указать путь к другому .ttf-шрифту (файл `gen_assets.rb`, параметр `@@font_file`).

## Использование

Сначала нужно запустить `./gen_assets.rb`, затем — `./gen_zips.rb`.

1. Скрипт `./gen_assets.rb` создаёт .png-файлы с изображениями букв в папке `assets`.
2. Скрипт `./gen_zips.rb` создаёт файлы с карточками: `en_1x1.linka`, `en_2x1.linka`, `en_2x2.linka`, `en_3x3.linka`, `en_4x4.linka`, `ru_1x1.linka`, `ru_2x1.linka`, `ru_2x2.linka`, `ru_3x3.linka`, `ru_4x4.linka`.

```bash
~/linka_gen_kbd # ./gen_assets.rb 
convert -size 1280x1280 xc:white /tmp/linka_template20240115-22583-k0x0ya.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "0"' /tmp/linka_template20240115-22583-k0x0ya.png assets/0.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "1"' /tmp/linka_template20240115-22583-k0x0ya.png assets/1.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "2"' /tmp/linka_template20240115-22583-k0x0ya.png assets/2.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "3"' /tmp/linka_template20240115-22583-k0x0ya.png assets/3.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "4"' /tmp/linka_template20240115-22583-k0x0ya.png assets/4.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "5"' /tmp/linka_template20240115-22583-k0x0ya.png assets/5.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "6"' /tmp/linka_template20240115-22583-k0x0ya.png assets/6.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "7"' /tmp/linka_template20240115-22583-k0x0ya.png assets/7.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "8"' /tmp/linka_template20240115-22583-k0x0ya.png assets/8.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "9"' /tmp/linka_template20240115-22583-k0x0ya.png assets/9.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "A"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_a.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "B"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_b.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "C"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_c.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "D"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_d.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "E"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_e.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "F"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_f.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "G"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_g.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "H"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_h.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "I"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_i.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "J"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_j.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "K"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_k.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "L"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_l.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "M"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_m.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "N"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_n.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "O"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_o.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "P"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_p.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Q"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_q.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "R"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_r.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "S"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_s.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "T"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_t.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "U"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_u.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "V"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_v.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "W"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_w.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "X"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_x.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Y"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_y.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Z"' /tmp/linka_template20240115-22583-k0x0ya.png assets/en_z.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "А"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_a.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Б"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_b.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "В"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_v.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Г"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_g.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Д"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_d.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Е"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_e.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ж"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_zh.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "З"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_z.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "И"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_i.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Й"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_j.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "К"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_k.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Л"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_l.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "М"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_m.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Н"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_n.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "О"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_o.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "П"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_p.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Р"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_r.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "С"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_s.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Т"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_t.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "У"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_u.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ф"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_f.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Х"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_h.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ц"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_c.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ч"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_ch.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ш"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_sh.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Щ"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_shh.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ъ"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_hard_sign.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ы"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_y.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ь"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_soft_sign.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Э"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_eh.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Ю"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_yu.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "Я"' /tmp/linka_template20240115-22583-k0x0ya.png assets/ru_ya.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "."' /tmp/linka_template20240115-22583-k0x0ya.png assets/_dot.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 ","' /tmp/linka_template20240115-22583-k0x0ya.png assets/_comma.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "?"' /tmp/linka_template20240115-22583-k0x0ya.png assets/_question.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "!"' /tmp/linka_template20240115-22583-k0x0ya.png assets/_exclamation.png
convert -font /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf -fill black -gravity center -pointsize 1024 -draw 'text 0,0 "␣"' /tmp/linka_template20240115-22583-k0x0ya.png assets/_space.png
~/linka_gen_kbd # 
```

```bash
~/linka_gen_kbd # ./gen_zips.rb  
zip ../en_1x1.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: en_a.png (deflated 18%)
  adding: en_b.png (deflated 22%)
  adding: en_c.png (deflated 20%)
  adding: en_d.png (deflated 22%)
  adding: en_e.png (deflated 91%)
  adding: en_f.png (deflated 92%)
  adding: en_g.png (deflated 19%)
  adding: en_h.png (deflated 92%)
  adding: en_i.png (deflated 94%)
  adding: en_j.png (deflated 49%)
  adding: en_k.png (deflated 25%)
  adding: en_l.png (deflated 93%)
  adding: en_m.png (deflated 24%)
  adding: en_n.png (deflated 30%)
  adding: en_o.png (deflated 16%)
  adding: en_p.png (deflated 33%)
  adding: en_q.png (deflated 12%)
  adding: en_r.png (deflated 23%)
  adding: en_s.png (deflated 16%)
  adding: en_t.png (deflated 93%)
  adding: en_u.png (deflated 34%)
  adding: en_v.png (deflated 18%)
  adding: en_w.png (deflated 14%)
  adding: en_x.png (deflated 15%)
  adding: en_y.png (deflated 26%)
  adding: en_z.png (deflated 36%)
zip ../ru_1x1.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: ru_a.png (deflated 18%)
  adding: ru_b.png (deflated 35%)
  adding: ru_c.png (deflated 92%)
  adding: ru_ch.png (deflated 50%)
  adding: ru_d.png (deflated 47%)
  adding: ru_e.png (deflated 91%)
  adding: ru_eh.png (deflated 19%)
  adding: ru_f.png (deflated 20%)
  adding: ru_g.png (deflated 93%)
  adding: ru_h.png (deflated 15%)
  adding: ru_hard_sign.png (deflated 34%)
  adding: ru_i.png (deflated 30%)
  adding: ru_j.png (deflated 20%)
  adding: ru_k.png (deflated 23%)
  adding: ru_l.png (deflated 35%)
  adding: ru_m.png (deflated 24%)
  adding: ru_n.png (deflated 92%)
  adding: ru_o.png (deflated 16%)
  adding: ru_p.png (deflated 93%)
  adding: ru_r.png (deflated 33%)
  adding: ru_s.png (deflated 20%)
  adding: ru_sh.png (deflated 93%)
  adding: ru_shh.png (deflated 92%)
  adding: ru_soft_sign.png (deflated 35%)
  adding: ru_t.png (deflated 93%)
  adding: ru_u.png (deflated 18%)
  adding: ru_v.png (deflated 22%)
  adding: ru_y.png (deflated 35%)
  adding: ru_ya.png (deflated 25%)
  adding: ru_yu.png (deflated 14%)
  adding: ru_z.png (deflated 19%)
  adding: ru_zh.png (deflated 14%)
zip ../en_2x1.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: en_a.png (deflated 18%)
  adding: en_b.png (deflated 22%)
  adding: en_c.png (deflated 20%)
  adding: en_d.png (deflated 22%)
  adding: en_e.png (deflated 91%)
  adding: en_f.png (deflated 92%)
  adding: en_g.png (deflated 19%)
  adding: en_h.png (deflated 92%)
  adding: en_i.png (deflated 94%)
  adding: en_j.png (deflated 49%)
  adding: en_k.png (deflated 25%)
  adding: en_l.png (deflated 93%)
  adding: en_m.png (deflated 24%)
  adding: en_n.png (deflated 30%)
  adding: en_o.png (deflated 16%)
  adding: en_p.png (deflated 33%)
  adding: en_q.png (deflated 12%)
  adding: en_r.png (deflated 23%)
  adding: en_s.png (deflated 16%)
  adding: en_t.png (deflated 93%)
  adding: en_u.png (deflated 34%)
  adding: en_v.png (deflated 18%)
  adding: en_w.png (deflated 14%)
  adding: en_x.png (deflated 15%)
  adding: en_y.png (deflated 26%)
  adding: en_z.png (deflated 36%)
zip ../ru_2x1.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: ru_a.png (deflated 18%)
  adding: ru_b.png (deflated 35%)
  adding: ru_c.png (deflated 92%)
  adding: ru_ch.png (deflated 50%)
  adding: ru_d.png (deflated 47%)
  adding: ru_e.png (deflated 91%)
  adding: ru_eh.png (deflated 19%)
  adding: ru_f.png (deflated 20%)
  adding: ru_g.png (deflated 93%)
  adding: ru_h.png (deflated 15%)
  adding: ru_hard_sign.png (deflated 34%)
  adding: ru_i.png (deflated 30%)
  adding: ru_j.png (deflated 20%)
  adding: ru_k.png (deflated 23%)
  adding: ru_l.png (deflated 35%)
  adding: ru_m.png (deflated 24%)
  adding: ru_n.png (deflated 92%)
  adding: ru_o.png (deflated 16%)
  adding: ru_p.png (deflated 93%)
  adding: ru_r.png (deflated 33%)
  adding: ru_s.png (deflated 20%)
  adding: ru_sh.png (deflated 93%)
  adding: ru_shh.png (deflated 92%)
  adding: ru_soft_sign.png (deflated 35%)
  adding: ru_t.png (deflated 93%)
  adding: ru_u.png (deflated 18%)
  adding: ru_v.png (deflated 22%)
  adding: ru_y.png (deflated 35%)
  adding: ru_ya.png (deflated 25%)
  adding: ru_yu.png (deflated 14%)
  adding: ru_z.png (deflated 19%)
  adding: ru_zh.png (deflated 14%)
zip ../en_2x2.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: en_a.png (deflated 18%)
  adding: en_b.png (deflated 22%)
  adding: en_c.png (deflated 20%)
  adding: en_d.png (deflated 22%)
  adding: en_e.png (deflated 91%)
  adding: en_f.png (deflated 92%)
  adding: en_g.png (deflated 19%)
  adding: en_h.png (deflated 92%)
  adding: en_i.png (deflated 94%)
  adding: en_j.png (deflated 49%)
  adding: en_k.png (deflated 25%)
  adding: en_l.png (deflated 93%)
  adding: en_m.png (deflated 24%)
  adding: en_n.png (deflated 30%)
  adding: en_o.png (deflated 16%)
  adding: en_p.png (deflated 33%)
  adding: en_q.png (deflated 12%)
  adding: en_r.png (deflated 23%)
  adding: en_s.png (deflated 16%)
  adding: en_t.png (deflated 93%)
  adding: en_u.png (deflated 34%)
  adding: en_v.png (deflated 18%)
  adding: en_w.png (deflated 14%)
  adding: en_x.png (deflated 15%)
  adding: en_y.png (deflated 26%)
  adding: en_z.png (deflated 36%)
zip ../ru_2x2.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: ru_a.png (deflated 18%)
  adding: ru_b.png (deflated 35%)
  adding: ru_c.png (deflated 92%)
  adding: ru_ch.png (deflated 50%)
  adding: ru_d.png (deflated 47%)
  adding: ru_e.png (deflated 91%)
  adding: ru_eh.png (deflated 19%)
  adding: ru_f.png (deflated 20%)
  adding: ru_g.png (deflated 93%)
  adding: ru_h.png (deflated 15%)
  adding: ru_hard_sign.png (deflated 34%)
  adding: ru_i.png (deflated 30%)
  adding: ru_j.png (deflated 20%)
  adding: ru_k.png (deflated 23%)
  adding: ru_l.png (deflated 35%)
  adding: ru_m.png (deflated 24%)
  adding: ru_n.png (deflated 92%)
  adding: ru_o.png (deflated 16%)
  adding: ru_p.png (deflated 93%)
  adding: ru_r.png (deflated 33%)
  adding: ru_s.png (deflated 20%)
  adding: ru_sh.png (deflated 93%)
  adding: ru_shh.png (deflated 92%)
  adding: ru_soft_sign.png (deflated 35%)
  adding: ru_t.png (deflated 93%)
  adding: ru_u.png (deflated 18%)
  adding: ru_v.png (deflated 22%)
  adding: ru_y.png (deflated 35%)
  adding: ru_ya.png (deflated 25%)
  adding: ru_yu.png (deflated 14%)
  adding: ru_z.png (deflated 19%)
  adding: ru_zh.png (deflated 14%)
zip ../en_3x3.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: en_a.png (deflated 18%)
  adding: en_b.png (deflated 22%)
  adding: en_c.png (deflated 20%)
  adding: en_d.png (deflated 22%)
  adding: en_e.png (deflated 91%)
  adding: en_f.png (deflated 92%)
  adding: en_g.png (deflated 19%)
  adding: en_h.png (deflated 92%)
  adding: en_i.png (deflated 94%)
  adding: en_j.png (deflated 49%)
  adding: en_k.png (deflated 25%)
  adding: en_l.png (deflated 93%)
  adding: en_m.png (deflated 24%)
  adding: en_n.png (deflated 30%)
  adding: en_o.png (deflated 16%)
  adding: en_p.png (deflated 33%)
  adding: en_q.png (deflated 12%)
  adding: en_r.png (deflated 23%)
  adding: en_s.png (deflated 16%)
  adding: en_t.png (deflated 93%)
  adding: en_u.png (deflated 34%)
  adding: en_v.png (deflated 18%)
  adding: en_w.png (deflated 14%)
  adding: en_x.png (deflated 15%)
  adding: en_y.png (deflated 26%)
  adding: en_z.png (deflated 36%)
zip ../ru_3x3.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: ru_a.png (deflated 18%)
  adding: ru_b.png (deflated 35%)
  adding: ru_c.png (deflated 92%)
  adding: ru_ch.png (deflated 50%)
  adding: ru_d.png (deflated 47%)
  adding: ru_e.png (deflated 91%)
  adding: ru_eh.png (deflated 19%)
  adding: ru_f.png (deflated 20%)
  adding: ru_g.png (deflated 93%)
  adding: ru_h.png (deflated 15%)
  adding: ru_hard_sign.png (deflated 34%)
  adding: ru_i.png (deflated 30%)
  adding: ru_j.png (deflated 20%)
  adding: ru_k.png (deflated 23%)
  adding: ru_l.png (deflated 35%)
  adding: ru_m.png (deflated 24%)
  adding: ru_n.png (deflated 92%)
  adding: ru_o.png (deflated 16%)
  adding: ru_p.png (deflated 93%)
  adding: ru_r.png (deflated 33%)
  adding: ru_s.png (deflated 20%)
  adding: ru_sh.png (deflated 93%)
  adding: ru_shh.png (deflated 92%)
  adding: ru_soft_sign.png (deflated 35%)
  adding: ru_t.png (deflated 93%)
  adding: ru_u.png (deflated 18%)
  adding: ru_v.png (deflated 22%)
  adding: ru_y.png (deflated 35%)
  adding: ru_ya.png (deflated 25%)
  adding: ru_yu.png (deflated 14%)
  adding: ru_z.png (deflated 19%)
  adding: ru_zh.png (deflated 14%)
zip ../en_4x4.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: en_a.png (deflated 18%)
  adding: en_b.png (deflated 22%)
  adding: en_c.png (deflated 20%)
  adding: en_d.png (deflated 22%)
  adding: en_e.png (deflated 91%)
  adding: en_f.png (deflated 92%)
  adding: en_g.png (deflated 19%)
  adding: en_h.png (deflated 92%)
  adding: en_i.png (deflated 94%)
  adding: en_j.png (deflated 49%)
  adding: en_k.png (deflated 25%)
  adding: en_l.png (deflated 93%)
  adding: en_m.png (deflated 24%)
  adding: en_n.png (deflated 30%)
  adding: en_o.png (deflated 16%)
  adding: en_p.png (deflated 33%)
  adding: en_q.png (deflated 12%)
  adding: en_r.png (deflated 23%)
  adding: en_s.png (deflated 16%)
  adding: en_t.png (deflated 93%)
  adding: en_u.png (deflated 34%)
  adding: en_v.png (deflated 18%)
  adding: en_w.png (deflated 14%)
  adding: en_x.png (deflated 15%)
  adding: en_y.png (deflated 26%)
  adding: en_z.png (deflated 36%)
zip ../ru_4x4.linka *
  adding: 0.png (deflated 18%)
  adding: 1.png (deflated 75%)
  adding: 2.png (deflated 22%)
  adding: 3.png (deflated 19%)
  adding: 4.png (deflated 36%)
  adding: 5.png (deflated 25%)
  adding: 6.png (deflated 15%)
  adding: 7.png (deflated 29%)
  adding: 8.png (deflated 14%)
  adding: 9.png (deflated 15%)
  adding: _comma.png (deflated 55%)
  adding: _dot.png (deflated 94%)
  adding: _exclamation.png (deflated 60%)
  adding: _question.png (deflated 28%)
  adding: _space.png (deflated 93%)
  adding: config.json (deflated 85%)
  adding: ru_a.png (deflated 18%)
  adding: ru_b.png (deflated 35%)
  adding: ru_c.png (deflated 92%)
  adding: ru_ch.png (deflated 50%)
  adding: ru_d.png (deflated 47%)
  adding: ru_e.png (deflated 91%)
  adding: ru_eh.png (deflated 19%)
  adding: ru_f.png (deflated 20%)
  adding: ru_g.png (deflated 93%)
  adding: ru_h.png (deflated 15%)
  adding: ru_hard_sign.png (deflated 34%)
  adding: ru_i.png (deflated 30%)
  adding: ru_j.png (deflated 20%)
  adding: ru_k.png (deflated 23%)
  adding: ru_l.png (deflated 35%)
  adding: ru_m.png (deflated 24%)
  adding: ru_n.png (deflated 92%)
  adding: ru_o.png (deflated 16%)
  adding: ru_p.png (deflated 93%)
  adding: ru_r.png (deflated 33%)
  adding: ru_s.png (deflated 20%)
  adding: ru_sh.png (deflated 93%)
  adding: ru_shh.png (deflated 92%)
  adding: ru_soft_sign.png (deflated 35%)
  adding: ru_t.png (deflated 93%)
  adding: ru_u.png (deflated 18%)
  adding: ru_v.png (deflated 22%)
  adding: ru_y.png (deflated 35%)
  adding: ru_ya.png (deflated 25%)
  adding: ru_yu.png (deflated 14%)
  adding: ru_z.png (deflated 19%)
  adding: ru_zh.png (deflated 14%)
~/linka_gen_kbd # 
```

## Лицензия

Автор скрипта — Паша Любецкий <mailto:pasha.liubetski@yandex.com>, лицензия — _Creative Commons Attribution 4.0 International (CC-BY 4.0)_.
