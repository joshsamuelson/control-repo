class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm': }
  dockeragent::node {'db.puppet.vm': }
}
