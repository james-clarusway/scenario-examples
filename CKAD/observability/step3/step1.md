A pod is running on the cluster but it is notresponding.

The desired behavior is to have Kubemetes restart the pod when an endpoint returns an HTTP 500 on the /
healthz endpoint. The service, probe-pod, should never send traffic to the pod while it is failing. Please
complete the following:
* The application has an endpoint, /started, that will indicate if it can accept traffic by returning an HTTP 200. If
the endpoint returns an HTTP 500, the application has not yet finished initialization.
* The application has another endpoint /healthz that will indicate if the application is still working as expected by
returning an HTTP 200. If the endpoint returns an HTTP 500 the application is no longer responsive.
* Configure the probe-pod pod provided to use these endpoints
* The probes should use port 8080