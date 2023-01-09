timestamp=$(date '+%d%m%Y-%H%M%S')
s3_bucket="upgrad-naveenkumar"
name="Naveen"
tar -cvf $name-httpd-logs-$timestamp.tar /var/log/apache2
aws s3 \
cp $name-httpd-logs-$timestamp.tar \
s3://$s3_bucket/$name-httpd-logs-$timestamp.tar
