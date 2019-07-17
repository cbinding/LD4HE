# Organization
***

An organization is any group involved in undertaking project activities such as [investigations](ld4he-investigation.md). Examples of organizations are contractors, HERs, national bodies, local authorities, data aggregators, report authors, publishers etc.
 
![organization](img/ld4he-organization.svg)

```turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix aat: <http://vocab.getty.edu/aat/> .

<http://tempuri/e7/1> a crm:E7_Activity ;
   crm:P14_carried_out_by <http://tempuri/e74/1> .
<http://tempuri/e74/1> a crm:E74_Group ;
   crm:P1_is_identified_by <http://tempuri/e41/1> .
<http://tempuri/e41/1> a crm:E41_Appellation ;
   rdfs:label "Fantasy Archaeology"@en .
```
