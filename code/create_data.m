function [jData] = CreateData(jLearner, data, labels)
jData = javaMethod('create', jLearner, data, labels);