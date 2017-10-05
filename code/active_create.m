function [jLearner]= active_create(alg)
%--------------------------------------------------------------------------
% 
% [jLearner]= active_create(alg)
% creates an active learner, jLearner, using algorithm alg.
%
% param alg - the name of the active learning algorithm; one of the followings:
%       {'SIMPLE', 'SELF_CONF', 'KFF', 'BALANCED_EE'}
%
% for usage example see "simpleRunningExample.m"
% 
% --
% This matlab wrapper for the java active-learning package was writen by
% Ron Begleiter. 
%--------------------------------------------------------------------------
jLearner = javaObject('ml.Learner');
javaMethod('init', jLearner, alg);