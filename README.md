## Prerequisites

jRuby
Apache Ant

```
rvm install jruby
brew install ant
brew install kafka
```

## Install

```
bundle install
redstorm install
redstorm bundle topology
```

## Run

To run HelloWorld example:
```
redstorm local lib/topologies/hello_world_topology.rb
```