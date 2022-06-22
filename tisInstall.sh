# for spark3
#mvn install -Pspark3,flink-bundle-shade-hive3 -Dmaven.test.skip=true -pl hudi-flink,hudi-common,packaging/hudi-flink-bundle,packaging/hudi-utilities-bundle

mvn deploy -Pspark3,flink-bundle-shade-hive3 -Dmaven.test.skip=true -pl hudi-flink,hudi-common,packaging/hudi-flink-bundle,packaging/hudi-utilities-bundle -DaltDeploymentRepository=base::default::http://localhost:8080/release
