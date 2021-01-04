export IMG=$MYHUB/memcached-operator:0.0.1
export ENABLE_WEBHOOKS=false
export KUBEBUILDER_ASSETS=$KUBEBUILDER_HOME/bin
export WATCH_NAMESPACE=memcached-operator-system

$*

