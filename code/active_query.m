function [index] = active_query(jLearner, pool)
%--------------------------------------------------------------------------
% 
% [index] = active_query(jLearner, pool)
% performs a 'query' of jLearner on the pool.
%
% param jLearner - an active learner.
% param pool - nXm matrix; each row corresponds a vector in the feature
% space.
%
% return index - an index of the pool's row. jLearner queried for the label of this row (feature vector). 
%
% for usage example see "simpleRunningExample.m"
%
% --
% This matlab wrapper for the java active-learning package was writen by
% Ron Begleiter. 
%--------------------------------------------------------------------------
fakeLabels = 999*ones(1, size(pool , 1)); % we need them to create the jData
jData = CreateData(jLearner, pool, fakeLabels);
index = javaMethod('indexToQuery', jLearner, jData) + 1;% matlab minimal index  value = 1 
