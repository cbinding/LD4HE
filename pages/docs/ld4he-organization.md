# Organization
***

An organization is any group involved in activities described in the data - such as [investigations](ld4he-investigation.md). 
 
![organization](img/ld4he-organization.svg)

**Fig. 1:** Organization with associated entities and properties

Examples of organizations are contractors, HERs (or other national bodies), local authorities, data aggregators, report authors, report publishers etc.

```turtle
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .

<http://tempuri/e7/1> a crm:E7_Activity ;
   crm:P14_carried_out_by <http://tempuri/e74/1> .
<http://tempuri/e74/1> a crm:E74_Group ;
   crm:P1_is_identified_by <http://tempuri/e41/1> .
<http://tempuri/e41/1> a crm:E41_Appellation ;
   rdfs:label "Fantasy Archaeology"@en .
```
**Fig. 2:** [Turtle RDF](https://www.w3.org/TR/turtle/) syntax example