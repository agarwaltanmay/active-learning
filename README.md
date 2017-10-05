# [Active Learning](https://en.wikipedia.org/wiki/Active_learning_(machine_learning))

## Description
Classifying motion of an autonomous robot as translation or rotation - a project which was part of Machine Learning course at BITS Pilani

## What is Active Learning?
The primary goal of machine learning is to derive general patterns from a limited amount of data. Active Learning is a machine learning technique which can be employed in case the cost associated with labeling the data set is high. An active learner may pose "queries," usually in the form of unlabeled data instances to be labeled by an "oracle" (e.g., a human annotator) that already understands the nature of the problem.

This sort of approach is well-motivated in many modern machine learning and data mining applications, where unlabeled data may be abundant or easy to come by, but training labels are difficult, time-consuming, or expensive to obtain.
For example, in speech recognition, the human annotator takes considerable amount of time to label the training data, thus the need for active learning.

## Algorithms for Query Generation

### 1.	Simple Margin (SIMPLE)
It chooses to query the instance whose label is the “least certain”  according to the current classifier. A more formal theoretical motivation for SIMPLE is given by Tong and Koller (2001) in terms of version space bisection.


### 2.	SELF_CONF
Proposed by Roy and McCallum (2001), it is based on a different motivation. The algorithm chooses its next example to be labeled while “directly” attempting to reduce future generalization error probability. Since true future error rates are unknown, the learner attempts to estimate them using a “self-confidence” heuristic that utilizes its current classifier for probability measurements.


### 3. KFF
It is based on “farthest-first” traversal sequences in kernel space. We use FF traversals for active learning in the following way. Given the current set L of labeled instances, we choose as our next query an instance passing x belonging to U, which is farthest from L. Using { L U f(x; y) } as a training set, the active learner then induces the next classifier.


