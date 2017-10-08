# -*- coding: utf-8 -*-

# mongoexport --db test --collection students -f last_name,first_name  \
#   --query '{class_name:'nosql'}' --csv | tail -n +2 | sort > nosql.csv

require 'bundler/setup'

require 'prawn'
require 'prawn/table'

require 'csv'
require 'pp'

Prawn::Document.generate('lista.pdf') do
  # puts "Prawn:DATADIR: #{Prawn::DATADIR}""
  # font '#{Prawn::DATADIR}/fonts/Times-Roman.afm'
  # font '/usr/share/fonts/dejavu/DejaVuSans.ttf'

  font '/Users/wbzyl/.fonts/Roboto/Roboto-Regular.ttf'
  font_size 11

  if ARGV.length.zero?
    puts 'Usage: ruby lista.rb NAME.CSV'
    exit
  else
    # csv_file = 'asi2011.csv'
    csv_file = ARGV[0]
  end

  # font '#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf'

  csv_data = open(csv_file).readlines
  body = CSV.parse(csv_data.join)

  nazwisko = make_cell content: 'nazwisko'
  imie = make_cell content: 'imię'
  repo_url = make_cell content: 'github login'

  index = 0
  counted = body.map do |row|
    index += 1
    row.unshift (index < 10 ? ' ' : '') + index.to_s
    row += [' ', ' ']
  end

  # counted.unshift ['0', 'Bzyl', 'Wlodzimierz', 'wbzyl/trekking.git', '']
  # pp counted
  counted.unshift ['', nazwisko, imie, repo_url, 'podpis']

  table(
    counted,
    header: true,
    width: 540,
    column_widths: { 0 => 32 },
    cell_style: {
      height: 36, padding: [12, 6, 12, 6], overflow: :shrink_to_fit
    }
  )
end

puts '--> lista.pdf'
