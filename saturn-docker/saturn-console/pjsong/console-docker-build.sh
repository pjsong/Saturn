VERSION=3.1.0
REPO=releases
CONSOLE_DL_URL="https://oss.sonatype.org/service/local/artifact/maven/content?r=${REPO}&g=com.vip.saturn&a=saturn-console&c=exec&v=${VERSION}"
docker build --build-arg SATURN_CONSOLE_DOWNLOAD_URL=$CONSOLE_DL_URL -t saturn/saturn-console .
