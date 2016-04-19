artists =  [

[ "Lily Allen", "United Kingdom",
%{ Lily Allen was born in London, England on May 2, 1985.
Allen was one of the first pop stars to emerge through social media, developing a fan base via MySpace before the release of her 2006 debut album, Alright, Still, which features the hit song Smile.
Allen is also known for her feuds with other celebrities, and her penchant for public intoxication at industry events. }, image: ""],

[ "Creedence Clearwater Revival", "United States",
%{Creedence Clearwater Revival, often shortened to Creedence and abbreviated as CCR, was an American rock band active in the late 1960s and early 1970s.
The band consisted of lead vocalist, lead guitarist, and primary songwriter John Fogerty, his brother rhythm guitarist Tom Fogerty, bassist Stu Cook and drummer Doug Clifford.
Their musical style encompassed the roots rock, swamp rock and blues rock genres.
Despite their San Francisco Bay Area origins, they portrayed a Southern rock style, with lyrics about bayous, catfish, the Mississippi River, and other popular elements of Southern US iconography,
as well as political and socially-conscious lyrics about topics including the Vietnam War }, image: ""],

[ "Stromae", "Belgium",
%{Paul Van Haver (born 12 March 1985), better known by his stage name Stromae, is a Belgian musician, singer, rapper and songwriter.
Stromae was born to a Rwandan father, Pierre Rutare, and a Belgian mother, Miranda Marie Van Haver.
He is originally from Laeken, in Brussels.He established himself in both the hip hop and electronic music genres.
Stromae came to wide public attention in 2009 with his song "Alors on danse", which became a number one in several European countries.
In 2013, his second album Racine Carrée was a commercial success, selling 2 million copies in France alone and nearly 600,000 units elsewhere }, image: ""]

]

artist_songs = {}
artist_songs["Lily Allen"] = [

   [ "F*ck You",
     2009, "The song originally appeared on Allen's Myspace page in 2008 alongside the songs I Could Say and I Don't Know later released as The Fear under the title Guess Who Batman.
     The song samples the piano of the theme to the Australian television show Neighbours.
     The song was written by Allen and Greg Kurstin.
     Allen wrote: We are the youth, we can make coolness for our future, it's up to us. Go green and hate hate."

   ],

   [ "Whod Have Known",
     2009, "Before the release of the album, Allen posted the song, then titled Who'd of Known,
     on her MySpace account, revealing that she sampled Take That's single Shine and wrote: I ripped off the chorus from Take That and cant be bothered with the paperwork."
   ]
]

artist_songs = {}
artist_songs["Creedence Clearwater Revival"] = [

   [ "Bad Moon Rising",
     1969, "Bad Moon Rising is a song written by John Fogerty and performed by Creedence Clearwater Revival.
     It was the lead single from their album Green River and was released in April 1969, four months before the album.
     The song reached No. 2 on the Billboard Hot 100 singles chart and No. 1 on the UK Singles Chart for three weeks in September 1969.
     It was CCR's second gold single.
     The song has been recorded by at least 20 different artists, in styles ranging from folk to reggae to psychedelic rock.
     In 2011, Rolling Stone ranked it 364 on its 500 Greatest Songs of All Time list."
   ],

   [ "Whod Have Known",
     1969, "The song is a counterculture era anti-war anthem, criticizing militant patriotic behavior and those who support the use of military force without having to pay the costs themselves
     either financially or by serving in a wartime military."
   ]
]

artist_songs = {}
artist_songs["Stromae"] = [

   [ "Alors on danse",
     2009, "It was released in September 2009 in Belgium and in February 2010 in the rest of Europe.
     The song reached number one in Belgium, Albania, Austria, Bulgaria, the Czech Republic, Denmark, Finland, France, Germany, Greece, Italy, Luxembourg, the Netherlands, Poland, Romania, Russia, Slovakia, Switzerland and Turkey,
     and also reached number one on the European Hot 100 Singles.
     The song also became a success in North America, as on 1 April 2010, Alors on danse was released in Canada, receiving airplay in Québec from NRJ Radio stations throughout the province,
     as well as CKOI-FM.
     Four months after the European release, almost 1 million copies worldwide were sold. "
   ],

   [ "Papaoutai",
     2013, "Papa ou tes, meaning Dad, where are you? is a song written and performed by Belgian musician Stromae.
     The song was released as a digital download in Belgium on 13 May 2013 as the lead single from his second studio album Racine Carree.
     The song peaked at number one in Belgium and France and became the best selling single of 2013 in Belgium.
     A remix of the song featuring Angel Haze also appears on the album.
     The song was performed live at the 2013 NRJ Music Awards, where it featured will.i.am."
   ]
]

artists.each do | name, country, bio, image |
   Artist.create( name: name, country: country, bio: bio, image:image )
end

artist_songs.each do | artist_name, songs|
  artist = Artist.find_by( name: artist_name)

   songs.each do | title, year, synopsis |
      Song.create( title:title, artist_id: artist.id, year: year, synopsis:synopsis )
  end
end
