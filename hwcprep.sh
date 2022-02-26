if [ ! -f hwcaccess ]; then
  echo -n "Enter your Huawei Cloud Access Key ID and press [ENTER]: "
  read AWS_ACCESS_KEY_ID
  echo "" | awk '{print $1}'
  echo $AWS_ACCESS_KEY_ID > hwcaccess
  echo -n "Enter your Huawei Cloud Secret Access Key and press [ENTER]: "
  read AWS_SECRET_ACCESS_KEY
  echo $AWS_SECRET_ACCESS_KEY >> hwcaccess
fi
echo "" | awk '{print $1}'
echo "You are ready to deploy now!"
echo "" | awk '{print $1}'