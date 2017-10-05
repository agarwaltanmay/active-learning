function [] = active_learn(jLearner, features, labels)
%--------------------------------------------------------------------------
% 
% [] = active_learn(jLearner, features, labels)
% building a classifier corresponding [features lables]
%
% param jLearner - an active learner.
% param features - nXm matrix; each row corresponds a vector in the feature
% space.
% param lables - nX1 vector; each element corresponds to a row in features;
% the value of each element is in {+1, -1}
%
% !! note - currently support only binary problems !!
%
% for usage example see "simpleRunningExample.m"
%
% --
% This matlab wrapper for the java active-learning package was writen by
% Ron Begleiter. 
%--------------------------------------------------------------------------
jData = CreateData(jLearner, features, labels);
javaMethod('learn', jLearner, jData);