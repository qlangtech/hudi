mvn compile deploy -Dmaven.test.skip=true -DaltDeploymentRepository=base::default::http://localhost:8080/release -DskipTests -Pflink-bundle-shade-hive2
