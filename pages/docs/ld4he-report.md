# Report
***

A report is produced as part of an [investigation](ld4he-investigation.md)
 
![report](img/ld4he-oasis-report.svg)

```turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix aat: <http://vocab.getty.edu/aat/> .

<http://tempuri/report/1> a crm:E31_Document ;
   crm:P108i_was_produced_by <http://tempuri/reportproduction/1> ;
   crm:P67_refers_to <http://tempuri/investigation/1> ;
   crm:P1_is_identified_by <http://tempuri/doi/1> ;
   crm:P2_has_type <http://tempuri/reporttype/1> ;
   crm:P102_has_title <http://tempuri/reporttitle/1> .
<http://tempuri/reportproduction/1> a crm:12_Production ;
   crm:P9i_forms_part_of <http://tempuri/investigation/1> ;
   crm:P108_produced <http://tempuri/report/1> .
<http://tempuri/investigation/1> a crm:E7_Activity ;
   crm:P9_consists_of <http://tempuri/reportproduction/1> ;
   crm:P67i_is_referred_to_by <http://tempuri/report/1> .
<http://tempuri/doi/1> a crm:E42_Identifier ;
   crm:P1i_identifies <http://tempuri/report/1> ;
   rdfs:label "10/1004" .
<http://tempuri/reporttype/1> a crm:E55_Type ;
   crm:P2i_is_type_of <http://tempuri/report/1> ;
   rdfs:label "Geophysical survey report"@en .
<http://tempuri/reporttitle/1> a crm:E35_Title ;
   crm:P102i_is_title_of <http://tempuri/report/1> ;
   rdfs:label "Investigation of 1 temp street"@en .
```
