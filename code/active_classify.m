function [labels] = active_classify(jLearner, data)
%--------------------------------------------------------------------------
% 
% [conf] = active_classify(jLearner, data)
% classifies data
% !! note: currently supports only binary classification only !!
%
% param jLearner - an active learner.
% param data - nXm matrix; each row corresponds a vector in the feature
% space.
%
% return labels - a  vector; each element of conf corresponds to a
% row (feature vector) in data; the label of each element is determined by
% its sign (positive/negative).
%
% for usage example see "simpleRunningExample.m"
%
% --
% This matlab wrapper for the java active-learning package was writen by
% Ron Begleiter. 
%--------------------------------------------------------------------------
fakeLabels = 999*ones(1, size(data, 1));
jData = CreateData(jLearner, data, fakeLabels);
labels = javaMethod('classify', jLearner, jData);