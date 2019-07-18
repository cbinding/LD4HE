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
@prefix osont: <http://data.ordnancesurvey.co.uk/ontology/admingeo/> .
@prefix oslod: <http://data.ordnancesurvey.co.uk/id/> .

<http://tempuri/site/1> a crm:E53_Place ;
   crm:P7i_witnessed <http://tempuri/investigation/1> ;
   crm:P1_is_identified_by <http://tempuri/sitename/1> ;
   crm:P55i_currently_holds <http://tempuri/monument/1> ;
   crm:P53i_is_former_or_current_location_of <http://tempuri/artefact/1> ;
   crm:P89_falls_within oslod:7000000000043542 ,  
      oslod:7000000000043674 ,  
	  oslod:7000000000041422 .   
<http://tempuri/monument/1> crm:P55_has_current_location <http://tempuri/site/1> .  
<http://tempuri/artefact/1> crm:P53_has_former_or_current_location <http://tempuri/site/1> . 
<http://tempuri/sitename/1> a crm:E41_Appellation ;
   crm:P1i_identifies <http://tempuri/site/1> ;
   rdfs:label "Boundary Wall of Former Cinema Site, Sandgate"@en .   
oslod:7000000000043542 a osont:Parish ;
   rdfs:label "Berwick Upon Tweed"@en ;  
   crm:P89i_contains <http://tempuri/site/1> .  
oslod:7000000000043674 a osont:District ;
   rdfs:label "Northumberland"@en ;
   crm:P89i_contains <http://tempuri/site/1> .   
oslod:7000000000041422 a osont:EuropeanRegion ;
   rdfs:label "North East"@en ;
   crm:P89i_contains <http://tempuri/site/1> .
```
**Fig. 2:** [Turtle RDF](https://www.w3.org/TR/turtle/) syntax example


