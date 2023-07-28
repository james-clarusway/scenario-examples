- Create a new ClusterRole named 'web-clusterrole', which only allows to create 'Deployment' resource.

- Create a new ServiceAccount named 'app-sa' in the namespace 'prod'.

- Bind the ClusterRole 'app-clusterrole' to the ServiceAccount 'app-sa' in the namespace prod. Define clusterrolebinding as 'app-clusterrolebinding'.