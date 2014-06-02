require "red_storm"
Dir[File.join(File.dirname(__FILE__), '../hello_world/*.rb')].each {|f| require f }

class HelloWorldTopology < RedStorm::DSL::Topology
  spout WordSpout do
    output_fields :word
  end

  bolt WordBolt do
    source WordSpout, :global
  end

  configure do
    debug false
    max_task_parallelism 4
    num_workers 1
    max_spout_pending 1000
  end
end