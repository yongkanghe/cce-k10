
#### Follow [@YongkangHe](https://twitter.com/yongkanghe) on Twitter, Subscribe [K8s Data Management](https://www.youtube.com/channel/UCm-sw1b23K-scoVSCDo30YQ?sub_confirmation=1) Youtube Channel

I just want to build a CCE Cluster (Huawei Cloud Container Engine Kubernetes Cluster) to play with the various Data Management capabilities e.g. Backup/Restore, Disaster Recovery and Application Mobility. 

It is challenging to create a CCE cluster from Huawei Cloud if you are not familiar to it. After the CCE Cluster is up running, we still need to install Kasten, create a sample DB, create policies etc.. The whole process is not that simple.

![image](https://pbs.twimg.com/media/FHLSGL8VEAAUrZQ?format=png&name=900x900)

This script based automation allows you to build a ready-to-use Kasten K10 demo environment running on CCE in about 3 minutes. If you don't have a CCE Cluster, you can watch the Youtube video and follow the guide to build a CCE cluster on Huawei Cloud. Once the CCE Cluster is up running, you can proceed to the next steps. 

# Build a CCE cluster via Web UI
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/sRjsPzeDgwg/0.jpg)](https://www.youtube.com/watch?v=sRjsPzeDgwg)

#### Subscribe [K8s Data Management](https://www.youtube.com/channel/UCm-sw1b23K-scoVSCDo30YQ?sub_confirmation=1) Youtube Channel

# Here're the prerequisities. 

1. Install kubectl and obsutil if not installed
2. Verify if you can access the cluster from the terminal
````
kubectl get nodes
````
3. Clone the github repo, run below command
````
git clone https://github.com/yongkanghe/cce-k10.git
````
4. Set Huawei Cloud Access Credentials
````
cd cce-k10;./hwcprep.sh
````
5. Optionally, you can customize the clustername, instance-type, zone, region, bucketname
````
vi setenv.sh
````
# To build the labs, run 
````
./k10-deploy.sh
````
1. Install Kasten K10
2. Deploy a Postgresql database
3. Create a Huawei Cloud OBS location profile
4. Create a backup policy for Postgresql
5. Backup jobs scheduled automatically

# To delete the labs, run 
````
./k10-destroy.sh
````
1. Remove Postgresql database
2. Remove Kasten K10
3. Remove the OBS storage bucket

# Watch how-to video
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/zoi88UvHOo0/0.jpg)](https://www.youtube.com/watch?v=zoi88UvHOo0)

#### Subscribe [K8s Data Management](https://www.youtube.com/channel/UCm-sw1b23K-scoVSCDo30YQ?sub_confirmation=1) Youtube Channel

# Kasten - No. 1 Kubernetes Backup
https://kasten.io 

# FREE Kubernetes Learning
https://learning.kasten.io 

# Contributors

#### Follow [Yongkang He](http://yongkang.cloud) on LinkedIn, Join [Kubernetes Data Management](https://www.linkedin.com/groups/13983251) LinkedIn Group
