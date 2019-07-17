# Time-Span
***

A time-span defines the temporal extent of an activity such as an [investigation](ld4he-investigation.md).
 
![timespan](img/ld4he-timespan.svg)

```turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix aat: <http://vocab.getty.edu/aat/> .

<http://tempuri/investigation/1> a crm:E7_Activity ;
   crm:P4_has_time-span <http://tempuri/timespan/1> .  
<http://tempuri/timespan/1> a crm:E52_Time-Span ;
   crm:P4i_is_time-span_of <http://tempuri/investigation/1> ;
   crm:P81a_end_of_the_begin "2019-03-20"^^xsd:date ;
   crm:P81b_begin_of_the_end "2019-03-21"^^xsd:date .   
```
