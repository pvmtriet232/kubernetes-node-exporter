# !bin/bash 
# Default values
DEFAULT_CLUSTER_NAME="my-cluster"
DEFAULT_REGION="us-east-2"
DEFAULT_NODE_TYPE="t2.micro"
DEFAULT_NODES="1"

# Assign vaues from command-line arguments, if provided
CLUSTER_NAME=${1:-$DEFAULT_CLUSTER_NAME}
REGION=${1:-$DEFAULT_REGION}
NODE_TYPE=${1:-$DEFAULT_NODE_TYPE}
NODES=${1:-$DEFAULT_NODES}


eksctl create cluster \
--name $CLUSTER_NAME \
--version 1.25 \
--region $REGION \
--nodegroup-name my-nodes \
--node-type $NODE_TYPE
--nodes $NODES
