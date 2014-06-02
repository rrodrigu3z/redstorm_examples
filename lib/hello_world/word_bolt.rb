class WordBolt < RedStorm::DSL::Bolt
  on_receive emit: false do |tuple|
    log.info(tuple[0]) # tuple[:word] or tuple["word"] are also valid
  end
end