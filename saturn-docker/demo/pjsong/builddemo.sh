REPO=releases
VERSION=3.1.0
EXECUTOR_DL_URL="https://oss.sonatype.org/service/local/artifact/maven/content?r=${REPO}&g=com.vip.saturn&a=saturn-executor&v=${VERSION}&e=zip&c=zip"
docker build --build-arg SATURN_EXECUTOR_DOWNLOAD_URL=$EXECUTOR_DL_URL -t saturn/demo-init .
