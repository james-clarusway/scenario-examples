- Create a file on 'controlplane' at /opt/data/index.html with the content "hello world".
- Create a PersistentVolume named 'demo-pv' using 'hostPath' and allocate '1Gi' to it, specifying that the volume is at '/opt/data' on the node. The configuration should specify the access mode of
ReadWriteOnce. It should define the StorageClass name 'manual' for the PersistentVolume, which will be used
to bind PersistentVolumeClaim requests to this PersistenetVolume.
- Create a PersistentVolumeClaim named 'demo-pv-claim' that requests a volume of at least 500Mi and specifies
an access mode of ReadWriteOnce.
* Create a pod named 'apache-pod' with 'httpd:2' image that uses the PersistentVolmeClaim as a volume that mounts to the '/usr/local/apache2/htdocs' inside the pod.