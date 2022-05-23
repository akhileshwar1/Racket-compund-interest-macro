# Racket-compund-interest-macro

;  --------------------------------------------------------------------------------------------------

The kind of questions that I'd like to answer are:

For getting the CI amounts year wise:

(ci 20k 8% 10) => Answer 
(ci 20k 8%) => (ci 20k 8% 10)
(ci 20k) => (ci 20k 8 10)

For getting the CI amounts year wise given that I have a yearly payment or a monthly payment as an i
-nput:

(ci 20k 8 10 1000 monthly) => (list of (year-no amt))
(ci 20k 8 10 1000 yearly) => (list of (year-no amt))

For getting the CI amounts given that it is compouded yearly or monthly/

For getting the emi amount given the years that you want  to complete the payment in:

(emi 10000 8 5)

THE interface should be uniform across all the diff queries/

Implementation:

For the first part:

If I write three different functions for each of them, it is useless. And syntactic abs can be
applied. How? It can be done using a case wise stuff. but how do you discern between (ci 1000 8) wh
en 8 can be in for both rate or years. One of the things that you can use is to use the percent sign
With the sign, you may get the pattern variable in there. 
