#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',    
  price: 36.00)
# . . .
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)
# . . .

Product.create!(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95)


# . . .

Product.create!(title: 'Kite Runner',
  description: 
    %{<p>
        <em>The Kite Runner</em> is the first novel by Afghan-American author Khaled 
        Hosseini.Published in 2003 by Riverhead Books, it tells the story of Amir, 
        a young boy from the Wazir Akbar Khan district of Kabul, whose closest friend 
        is Hassan, his father's young Hazara servant. The story is set against a backdrop 
        of tumultuous events, from the fall of Afghanistan's monarchy through the Soviet 
        military intervention, the exodus of refugees to Pakistan and the United States, 
        and the rise of the Taliban regime.
      </p>},
  image_url: 'kite.jpg',
  price: 12.56)


# . . .

Product.create!(title: 'The Thousand Splendid Suns',
  description: 
    %{<p>
        <em>The Thousand Splendid Suns</em>  is a 2007 novel by Afghan-American author 
        Khaled Hosseini. It is his second, following his bestselling 2003 debut, The Kite Runner. 
        The book, which spans a period of over 50 years, from the 1960s to 2003, focuses on 
        the tumultuous lives and relationship of Mariam and Laila, two Afghan women. 
        Mariam, an illegitimate child, suffers from the stigma surrounding her birth and 
        the abuse she faces throughout her marriage. Laila, born a generation later, is 
        comparatively privileged during her youth until their lives intersect and she is also 
        forced to accept a marriage proposal from Rasheed, Mariam's husband.
      </p>},
  image_url: 'thousand.jpg',
  price: 12.56)


