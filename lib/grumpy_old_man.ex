defmodule Curmudgeon.GrumpyOldMan do
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
  
  def say( :grumpy_old_man, %{ impatient: true} ) do
    "I'll speak when I am good and ready."
  end
  
  def say( :grumpy_old_man, %{ complex: true} ) do
    "I am not hard of hearing. I'm ignoring you."
  end
  
  def say( :grumpy_old_man, %{ lazy: true } ) do
    "Do I look like I have years on me, sonny?"
  end
  
  def say(:grumpy_old_man, metadata) do
    "Eh?"
  end
end