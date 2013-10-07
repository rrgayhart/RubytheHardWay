module Stories

  def exterior_story
    puts "You are standing outside of an old, run down bar."
    puts "The place looks like Cheers"
    puts "...if Cheers were located next to a methadone clinic."
    puts "Do you go inside?"
  end

  def bar_story
    puts "You open the shitty, rusty door and enter the bar."
    puts "It smells like stale beer and minor regrets..."
    puts "Your eyes adjust to the light and you see a few options"
    puts "Your friends are seated around a table, do you sit at the table?"
    puts "Do you hit on the waitress"
    puts "Do you run screaming out of the bar?"
    return "bar story"
    ###Need to add another option!
  end

  def waitress_story
    puts "You sidle up to the waitress and ask her for her number"
    puts "She replies..."
    waitress_reply
  end

  def waitress_reply
    puts "Sorry. I'm saving myself for Braskey"
  end

  def short_brasky_stories
    ["Bill Brasky is a son of a bitch.","I once saw him scissor kick Angela Lansberry.","You know he sheds his skin once a year.","He'll eat a homeless person if you dare him.", "He's a ten-foot tall beast man, who showers in vodka, and feeds his baby shrimp scampi.", "Brasky went public with his own buttocks and made seven million.", "We once had a bachelor party for Brasky. He ate the entire cake, before we could tell him there was a stripper in it.", "Brasky once hosted the Grammy's and gave every award to Cory Hardt.", "He has a toenail on the end of his penis.","He makes every woman that sleeps with him refer to him as Bear Bryant.","He showers in grain alcohol.", "Brasky's family crest is a picture of a barracuda, eating Neil Armstrong.", "He breast feeds John Madden.", "Brasky named the group ShaNaNa. They did not want to be called that.", "If you drop a phonograph needle on Brasky's nipple, it plays the Beach Boys Pet Sounds.", "They use Brasky's foreskin as a tarp when it rains at Yankee Stadium.", "He wears a live rattlesnake as a condom.", "Brasky used to ride upon a steed, perchance to spy a lady."]
  end

  def long_brasky_stories
    ["So anyway, Brasky would put on a white tie and tails and\n   walk his cobra through the park on a leash. He named the cobra Beverly,\n   and he taught it how to fetch and dial a phone.\n   But then one day it bit the maid. So with tears in his eyes,\n   Brasky had to shoot the maid.","Did I ever tell you about the time Brasky and I went horseback riding,\n   but there weren't any horses around?\n   Anyway, Brasky throws a saddle on my back and rides me around Wyoming for three days.\n   Well, wouldn't ya know it, my stamina increased with each day,\n   and I develop tremendous leg muscles. So anyway,\n   Brasky decides to enter me into the Breeders Cup under the name Turkish Delight.\n   And Im running in second place, and I'm running,\n   and I break my ankle.\n   So anyway, they're about to shoot me. Then someone from the crowd yells out,\n   God bless him, Dont shoot him, hes a human.","One time I asked Brasky to dress up as Santa for a Christmas party \n   I was having for my children. Anyway, Brasky shows up as Santa,\n   says I've got goodies for you kids.\n   He reaches into his bag and proceeds to hand out scrap metal and cigarettes to them.\n   Then he takes off his beard and says There's no Santa cause I ate him!","Did I ever tell you about the time Bill Brasky forced me to wear\n    a woman's bikini? Well anyway, Brasky tears off my clothes \n   and forces me to wear this skimpy bikini.\n   For the next three months I had to conduct my business wearing only a woman's bathing suit.\n   I would cry from shame and question my manhood daily,\n   but Ill be damned if at the end of the quarter my sales hadn't tripled.","Did I ever tell you about the time Brasky went hunting?\n   Well anyway, Brasky decides he's gonna hunt down all four members of the Banana Splits.\n   He stalks and kills every one of them with a machete.\n   They all beg for their lives,\n   except Fleagul.", "Brasky got his wife pregnant, and she gave birth to a delicious sixteen ounce steak.\n   The afterbirth was sautéed mushrooms.", "Did I ever tell you about the time Brasky was in a production of The King and I?\n   Well anyway, before the show, Brasky chloroforms the entire cast,\n   and slowly eats them in front of the audience for two hours.\n   The production got pretty good reviews.", "Did I ever tell you about the time Brasky taught his son how to drive?\n   Well anyway, Brasky taught his son how to drive by entering him into the Indy 500.\n   The kid wrecked and died. Brasky said, It would have happened sometime."]
  end

  def all_brasky_stories
    short_brasky_stories.concat(long_brasky_stories)
  end

  def a_bunch_of_stories
    tales = all_brasky_stories.shuffle
    bits = ["Someone shouts ", "Some other guy shouts ", "A man looks pensive and then shouts ", "The bartender adds ", "A lady runs into the room long enough to shout "]
    i = 0
    puts "The guys around the table start to talk"
    5.times do 
      tale = tales[i]
      bit = bits[i]
      tale
      i += 1
      puts "#{bit}\n   #{tale}"
    end
  end
end
