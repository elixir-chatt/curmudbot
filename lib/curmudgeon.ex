defmodule Curmudgeon do
  def random_personality() do
    [:grumpy_old_man, :mom, :soccer_maniac, :two_year_old, :pessimist, :doggo, :slacker]
    |> Enum.shuffle
    |> List.first
  end
  
  def random_say(sentence) do
    chat(random_personality(), sentence)  
  end
  def chat(personality, sentence) do
    say( personality, Curmudgeon.Personality.sentence_metadata(sentence) )
  end
  
  def say( :grumpy_old_man, %{ rude: true, question: true}) do
    "DON'T GIVE ME THAT LIP!!!!"
  end
  
  def say( :grumpy_old_man, %{question: true}) do
    "I don't really care young wippersnapper."
  end
  
  def say( :grumpy_old_man, %{ greeting: true }) do
    "What do you want?"
  end
  
  def say( :grumpy_old_man, %{ rude: true} ) do
    "Get off my lawn!!!!!!"
  end
  
  def say(:grumpy_old_man, _metadata) do
    "Eh?"
  end
  
  def say(:soccer_maniac, %{question: true}) do
  	"Don’t Care! The DC United is the best."
  end
  def say(:soccer_maniac, %{shouting: true}) do
  	"I like your energy."
  end
  def say(:soccer_maniac, %{rude: true}) do
  	"I’ll kick the ball straight into your mouth."
  end
  def say(:soccer_maniac, %{greeting: true}) do
  	"Hi, I’m a DC United fan."
  end
  def say(:soccer_maniac, %{complex: true}) do
  	"All I know is soccer."
  end
  def say(:soccer_maniac, %{lazy: true}) do
  	"What ever, I’ll just watch the game."
  end
  def say(:soccer_maniac, %{impatient: true}) do
  	"The game’s starting."
  end
  def say(:soccer_maniac, _metadata) do
    "Kick it to Beckam!"
  end
  
  def say(:mom, %{question: true}) do
  	"Go ask your father!"
  end
  def say(:mom, %{shouting: true}) do
  	"Excuse me"
  end
  def say(:mom, %{rude: true}) do
  	"Don’t talk to your mother like that!"
  end
  def say(:mom, %{greeting: true}) do
  	"Hello Dear!"
  end
  def say(:mom, %{complex: true}) do
    "I am going to go fold laundry."
  end
  def say(:mom, %{lazy: true}) do
  	"Get off your butt and do something"
  end
  def say(:mom, %{impatient: true}) do
  	"Hurry up"
  end
  def say(:mom, _metadata) do
    "Clean your room."
  end
  
  def say(:two_year_old, %{question: true})do 
  	"cats"
  end

  def say(:two_year_old, %{shouting: true})do 
  	"no, no, no, no, bad"
  end 

  def say(:two_year_old, %{rude: true})do 
  	"aw:)"
  end

  def say(:two_year_old, %{impatient: true})do 
  	"huurrry" 
  end 

  def say(:two_year_old, %{greeting: true})do 
  	"hello, hi, hi"
  end 

  def say(:two_year_old, %{complex: true})do 
  	"huh?jnjnovsjnvds, jnvjndsvjnds"
  end

  def say(:two_year_old, %{lazy: true})do 
  	"I’ll go play with my dinosaur toys now"
  end 
  
  def say(:two_year_old, _metadata) do
    "I DO IT!!!"
  end
  
  def say(:pessimist, %{question: true})do
  	"it’s gonna fail"
  end

  def say(:pessimist, %{rude: true})do
  	"just what I deserve"
  end

  def say(:pessimist, %{shouting: true})do
  	"what’s the worst you can do?"
  end

  def say(:pessimist, %{impatient: true})do
  	"fine whatever"
  end

  def say(:pessimist, %{greeting: true})do
  	"yeah, yeah, stop pretending you like me"
  end

  def say(:pessimist, %{complex: true})do
  	"oh just shut up already, no one cares"
  end

  def say(:pessimist, %{lazy: true})do
  	"go play with your dinosaur toys or something"
  end

  def say(:pessimist, _metadata) do
    "oh bother"
  end
  
  def say(:doggo, %{question: true}) do
    "Much bork, little question."
  end
    
  def say(:doggo, %{rude: true})do
    "much hurt, very bad"
  end

  def say(:doggo, %{shouting: true})do
    "much loud, little silence"
  end

  def say(:doggo, %{impatient: true})do
    "Hooman no love"
  end

  def say(:doggo, %{greeting: true})do
    "hihihihihiloveyouhihihihihihihi"
  end

  def say(:doggo, %{complex: true})do
    "Much confused"
  end

  def say(:doggo, %{lazy: true})do
    "Much tired, no work"
  end
  
  def say(:doggo, _meta) do
    "Straight up bork, yo"
  end
  
  def say(:slacker, %{question: true}) do
  	"you're expecting me to do what?"
  end

  def say(:slacker, %{shouting: true}) do
  	"hey, just because i don't do anything, doesn’t mean you need to shout!"
  end

  def say(:slacker, %{rude: true}) do
  	 "being rude isn't going to get me to do something."
  end 

  def say(:slacker, %{greeting: true}) do
  	"too... lazy... to... greet."
  end 

  def say(:slacker, %{complex: true}) do
  	"my lazy brain can’t comprehend any of that."
  end 

  def say(:slacker, %{lazy: true}) do
  	"i agree with ya there, pal."
  end 

  def say(:slacker, %{impatient: true}) do
  	"give me a few minutes to get up first."
  end 

  def say(:slacker, _meta) do
    "zzz..."
  end
  
  
  def say(:realist, %{question: true}) do
    "Try Google, im no genius."
  end

  def say(:realist, %{shouting: true}) do
    "Hey shouting does not change the situation."
  end

  def say(:realist, %{rude: true}) do
     "I don't think that means what you believe it means."
  end 

  def say(:realist, %{greeting: true}) do
    "Ok i'll accept that."
  end 

  def say(:realist, %{complex: true}) do
    "Well... Maybe."
  end 

  def say(:realist, %{lazy: true}) do
    "Yeah, no."
  end 

  def say(:realist, %{impatient: true}) do
    "What are you in a hurry for, somewhere to be?"
  end 

  def say(:realist, _meta) do
    "Do or do not, there is no try."
  end
end
