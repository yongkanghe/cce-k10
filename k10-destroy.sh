starttime=$(date +%s)
. ./setenv.sh
echo '-------Deleting Kasten K10 and Postgresql (typically in few mins)'
MY_PREFIX=$(echo $(whoami) | sed -e 's/\_//g' | sed -e 's/\.//g' | awk '{print tolower($0)}')

echo '-------Uninstalling postgresql and kasten'
helm uninstall postgres -n yong-postgresql
helm uninstall k10 -n kasten-io

kubectl delete ns yong-postgresql
kubectl delete ns kasten-io

# echo '-------Deleting disks'
#for i in $(gcloud compute disks list --format="value(name)" --filter="$MY_PREFIX-$MY_CLUSTER");do echo $i;gcloud compute disks delete $i --zone=$MY_ZONE -q;done

# echo '-------Deleting snapshots'
#for i in $(gcloud compute snapshots list --format="value(name)" --filter="$MY_PREFIX-$MY_CLUSTER");do echo $i;gcloud compute snapshots delete $i -q;done

echo '-------Deleting the bucket'
# myproject=$(gcloud config get-value core/project)
obsutil rm obs://$MY_PREFIX-$MY_BUCKET -r -f
obsutil rm obs://$(cat k10_migration_bucketname) -r -f

echo '-------Deleting kubeconfig for this cluster'
#kubectl config delete-context $(kubectl config get-contexts | grep $MY_PREFIX-$MY_CLUSTER | awk '{print $2}')
echo "" | awk '{print $1}'
endtime=$(date +%s)
duration=$(( $endtime - $starttime ))
echo "-------Total time is $(($duration / 60)) minutes $(($duration % 60)) seconds."
echo "" | awk '{print $1}'
echo "-------Created by Yongkang"
echo "-------Email me if any suggestions or issues he@yongkang.cloud"
echo "" | awk '{print $1}'