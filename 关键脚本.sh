codeql database create ./struts_db -s ./struts_9805 /
  -j 0 -l java --command "mvn -B -DskipTests /
  -DskipAssembly"
  
codeql database create ./struts_db -s ./struts_9805 /
  -j 0 -l java --command "mvn -B -DskipTests /
  -DskipAssembly"
  
/home/zyc/codeql-linux64/codeql/codeql database create ./database_test --language=cpp --source-root='./Test_Cl' --command=make 

/home/zyc/codeql-linux64/codeql/codeql database create ./database_test --language=cpp --source-root='./protobuf' --command=make 

/home/zyc/codeql-linux64/codeql/codeql database create ./redis_test --language=cpp --source-root='./redis-6.0.9' --command=make 

./codeql database create ./database_test -l cpp -s ./Test_Cl --command "make" 

/home/zyc/codeql-linux64/codeql/codeql database analyze ./database_test emptyblock.ql --format=csv --output=first.csv

codeql-main/codeql-main/cpp/ql/src/codeql-suites

/home/zyc/codeql-linux64/codeql/codeql database analyze ./database_test ./codeql-linux64/codeql-main/cpp/ql/src/codeql-suites/cpp-lgtm.qls --format=csv --output=first.csv

/home/zyc/codeql-linux64/codeql/codeql database upgrade ./database_test

/home/zyc/codeql-linux64/codeql/codeql database upgrade ./redis_test

/home/zyc/codeql-linux64/codeql/codeql database analyze ./redis_test ./codeql-linux64/codeql-main/cpp/ql/src/codeql-suites/cpp-lgtm.qls --format=csv --output=redis_test.csv

踩坑的小经验：
针对Protobuf必须先进行配置，才会生成makefile文件，最后可以分析，非常重要。
./autogen.sh 
./configure

感觉查出来的问题不是很多

- query: Architecture/ClassesWithManyDependencies.ql
- query: Architecture/ClassesWithManyFields.ql
- query: Architecture/ClassHierarchies.ql
- query: Architecture/ComplexFunctions.ql
- query: Architecture/CyclicNamespaces.ql
- query: Architecture/CyclomaticComplexity.ql
- query: Architecture/FeatureEnvy.ql
- query: Architecture/FunctionsWithManyParameters.ql
#- query: Architecture/GeneralStatistics.ql
#- query: Architecture/GlobalNamespaceClasses.ql
#- query: Architecture/HubClasses.ql
- query: Architecture/InappropriateIntimacy.ql
#- query: Architecture/InheritanceDepthDistribution.ql
- query: Architecture/NamespaceDependencies.ql
