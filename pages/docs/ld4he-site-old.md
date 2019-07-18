# Site
***
A site represents a location that is subject to an [investigation](ld4he-investigation.md). Sites can be the (former) location of [Artefacts](ld4he-artefact.md) and the (current) location of [Monuments](ld4he-monument.md).
 
![site](img/ld4he-site.svg)

**Fig. 1:** Site with associated entities and properties

Places containing sites are represented using a flat (as opposed to hierarchical) structure. This aligns with the way that OASIS and OS Open Names records are structured

```turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix aat: <http://vocab.getty.edu/aat/> .

<http://tempuri/site/1> a crm:E53_Place ;
   crm:P7i_witnessed <http://tempuri/investigation/1> ;
   crm:P2_has_type aat:300000809 ;
   crm:P1_is_identified_by <http://tempuri/sitename/1> ;
   crm:P55i_currently_holds <http://tempuri/monument/1> ;
   crm:P53i_is_former_or_current_location_of <http://tempuri/artefact/1> ;
   crm:P89_falls_within <http://tempuri/postcode/1> , <http://tempuri/parish/1> , 
   <http://tempuri/county/1> , <http://tempuri/region/1> , <http://tempuri/country/1> ,
   <http://tempuri/nation/1> .
<http://tempuri/monument/1> crm:P55_has_current_location <http://tempuri/site/1> .  
<http://tempuri/artefact/1> crm:P53_has_former_or_current_location <http://tempuri/site/1> . 
<http://tempuri/sitename/1> a crm:E41_Appellation ;
   crm:P1i_identifies <http://tempuri/site/1> ;
   rdfs:label "Boundary Wall of Former Cinema Site, Sandgate"@en .
<http://tempuri/postcode/1> a crm:E53_Place ;
   crm:P89i_contains <http://tempuri/site/1> ;
   crm:P2_has_type aat:300419274 ;
   rdfs:label "TA24"@en .
<http://tempuri/parish/1> a crm:E53_Place ;
   crm:P89i_contains <http://tempuri/site/1> ;
   crm:P2_has_type aat:300387092 ;
   rdfs:label "Berwick Upon Tweed"@en .
<http://tempuri/county/1> a crm:E53_Place ;
   crm:P89i_contains <http://tempuri/site/1> ;
   crm:P2_has_type aat:300000771 ;
   rdfs:label "Northumberland"@en .
<http://tempuri/region/1> a crm:E53_Place ;
   crm:P89i_contains <http://tempuri/site/1> ;
   crm:P2_has_type aat:300387079 ;
   rdfs:label "North East"@en .
<http://tempuri/country/1> a crm:E53_Place ;
   crm:P89i_contains <http://tempuri/site/1> ;
   crm:P2_has_type aat:300387506 ;
   rdfs:label "England"@en .
<http://tempuri/nation/1> a crm:E53_Place ;
   crm:P89i_contains <http://tempuri/site/1> ;
   crm:P2_has_type aat:300128207 ;
   rdfs:label "United Kingdom"@en .
aat:300000809 a crm:E55_Type ;
   rdfs:label "sites (locations)"@en .
aat:300419274 a crm:E55_Type ;
   rdfs:label "postcodes"@en .
aat:300387092 a crm:E55_Type ;
   rdfs:label "parishes (civil divisions)"@en .
aat:300000771 a crm:E55_Type ;
   rdfs:label "counties"@en .
aat:300387079 a crm:E55_Type ;
   rdfs:label "local regions"@en .
aat:300387506 a crm:E55_Type ;
   rdfs:label "countries"@en .   
aat:300328207 a crm:E55_Type ;
   rdfs:label "nations"@en . 
```
**Fig. 2:** [Turtle RDF](https://www.w3.org/TR/turtle/) syntax example


