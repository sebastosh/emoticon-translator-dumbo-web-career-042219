# require modules here
require "yaml"


def load_library(yaml)
    # code goes here
    emoticons = YAML.load_file(yaml)
    load = {"get_meaning" => {}, "get_emoticon" =>
    {}}
    emoticons.each do |k, v|
        english, japanese = v
        load["get_emoticon"][english] = japanese
        load["get_meaning"][japanese] = k
    end
  load
end


def get_japanese_emoticon(library, emo)
  l = load_library(library)
  count = 0
  l.each do |k,v|
    v.each do  |e,j|
      if e == emo
        count = 1
        return j
      end
    end
  end
    if count == 0
        return "Sorry, that emoticon was not found"
    end
  # code goes here
end

def get_english_meaning(library, emo)
  l = load_library(library)
  count = 0
  l.each do |k,v|
    v.each do  |e,j|
      if e == emo
        count = 1
        return j
      end
    end
  end
    if count == 0
        return "Sorry, that emoticon was not found"
    end
  # code goes here
end
