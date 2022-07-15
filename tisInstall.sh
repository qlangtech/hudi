# for spark3
#mvn install -Pspark3,flink-bundle-shade-hive3 -Dmaven.test.skip=true -pl hudi-flink,hudi-common,packaging/hudi-flink-bundle,packaging/hudi-utilities-bundle

#MVN_PROFILE="spark2,flink-bundle-shade-hive2"

#MVN_PROFILE="spark3,flink-bundle-shade-hive3"
compileAndDeploy(){
MVN_PROFILE="$1"
echo "compile and deploy with maven profile:$MVN_PROFILE "
mvn clean deploy -P$MVN_PROFILE \
 -Dmaven.test.skip=true \
 -pl hudi-flink,hudi-common\
,packaging/hudi-flink-bundle\
,packaging/hudi-utilities-bundle\
,packaging/hudi-hadoop-mr-bundle\
,packaging/hudi-spark-bundle \
-DaltDeploymentRepository=base::default::http://localhost:8080/release
}

compileAndDeploy "spark2,flink-bundle-shade-hive2"

compileAndDeploy "spark3,flink-bundle-shade-hive3"
