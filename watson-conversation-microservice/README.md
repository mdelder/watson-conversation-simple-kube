# Watson Conversation Application Helm Chart
Deploy the Watson Conversation Microservice to demonstrate how to interact with public cloud services from a simple Kubernetes app.

## Chart Details
This Node.js app is a fully developed example of the type of app you can build with Watson Assistant that uses intents, entities, and dialog.

## Prerequisites

The Node.js app depends on credentials provided by a Kubernetes Secret to access the Watson Conversation Service API. You must create this Secret either before or after deploying this chart.

```
kubectl create secret generic binding-conversation-service-car \
  --from-literal=binding='{
  "password": "REDACTED",
  "url": "https://gateway.watsonplatform.net/conversation/api",
  "username": "8ed09b4c-XXXX-XXX-XXXX-200bfa737d32"
}'
```

Full details on how to configure this app and its requirements on IBM Cloud are available [in a devWorks recipe](https://developer.ibm.com/recipes/tutorials/extend-your-kubernetes-app-with-watson-on-ibm-cloud-private/).

## Multi-arch support
This chart only supports deployment onto the `amd64` architecture.
