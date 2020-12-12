class ParserDate
  def self.perform
    page = Nokogiri::HTML(open('https://www.en365.ru/top500.htm'))
    link = page.xpath('//tr') # выбран путь до интересующего тега.
    link.each do |a|
      Card.create(original_text: a.xpath('td[2]').text, # приписывает значение тега в выбранную ячейку БД.
              translated_text: a.xpath('td[3]').text,
              review_date: Date.today + 3)
    end
    puts 'Успешно импортировано ' + link.length.to_s + ' карточек'
  end
end
