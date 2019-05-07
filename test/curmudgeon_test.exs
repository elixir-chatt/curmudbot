defmodule CurmudgeonTest do
  use ExUnit.Case
  alias Curmudgeon.Personality

  test "Responds to nothing" do
    assert Curmudgeon.say(:doggo, nothing()) == "Straight up bork, yo"
  end
  
  test "responds to rude" do
    assert Curmudgeon.say(:grumpy_old_man, rude())  == "Get off my lawn!!!!!!"
  end

  test "personality has metadata" do
    metadata =  Personality.sentence_metadata("doesn't matter")
    assert metadata.question == false
    assert metadata.rude == false
    assert metadata.greeting == false
  end
  
  test "is this a question" do
    assert Personality.question?("Is this a question?") == true
  end
  
  test "is this a explamation point/shouting" do
    assert Personality.shouting?("This a shout!") == true
  end
  
  test "is this rude?" do
    assert Personality.rude?("is this rude?") == false
    assert Personality.rude?("IS THIS RUDE") == true
  end

  test "is this a greeting?" do
    assert Personality.greeting?("Hello.") == true
    assert Personality.greeting?("IS THIS RUDE") == false
  end
  
  def nothing() do
    %{}
  end
  
  def rude() do
    Personality.sentence_metadata("HI, DAD")
  end
end
