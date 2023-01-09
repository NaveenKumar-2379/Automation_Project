timestamp=$(date '+%d%m%Y-%H%M%S')
s3_bucket="upgrad-naveenkumar"
name="Naveen"
myfile=$name-httpd-logs-$timestamp.tar
tar -cvf $myfile /var/log/apache2
aws s3 \
cp $myfile \
s3://$s3_bucket/$myfile
echo "httpd-logs" $timestamp "tar" $(du -h $myfile | awk '{print $1}' )>> /var/www/html/inventory.html
