# Counter

A Phoenix LiveView application that runs on a container in Kubernetes. It shows a counter with + and - buttons, and synchronizes the state between all visitors
Use the Dockerfile in the root to create an image that is suitable to be run in Kubernetes.


To start your Phoenix server locally:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

To run it in Kubernetes:
1. Build the image using the Dockerfile. There is configuration to use GitHub actions to automatically build a new image.
2. Run the image using the manifests in the Kubernetes folder
   Secret to store the KEY_SECRET_BASE
   Deployment that uses the Secret
   Service to publish the endpoint
   PHX_HOME that points to the service
