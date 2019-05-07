defmodule Curmudgeon.Personality do
  def sentence_metadata(sentence) do
    %{
      question: question?(sentence), 
      shouting: shouting?(sentence), 
      rude: rude?(sentence), 
      greeting: greeting?(sentence), 
      complex: false,
      impatient: impatient?(sentence)
    }
  end
  
  def question?(text) do
    first = 
      text
      |> String.to_charlist 
      |> Enum.reverse 
      |> List.first
      
    first == 63
  end
  
  def shouting?(text) do
    first = 
      text
      |> String.to_charlist 
      |> Enum.reverse 
      |> List.first
      
    first == 33
  end
  
  def rude?(text) do
    String.upcase(text) == text
  end
  
  def greeting?("Hello.") do
    true
  end
  def greeting?(_) do
    false
  end
  
  def impatient?(string) do
    String.length(string) < 10
  end

end