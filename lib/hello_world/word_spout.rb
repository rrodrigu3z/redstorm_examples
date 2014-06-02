class WordSpout < RedStorm::DSL::Spout
  on_init {@words = ["hello", "world"]}
  on_send {@words.shift unless @words.empty?}
end