# Monument
***

Monuments are immovable objects of interest located on a [site](ld4he-site.md). Monument types are concepts from the monument types thesaurus corresponding to the location of the [site](ld4he-site.md). For England this will be the [FISH Thesaurus of Monument Types](http://purl.org/heritagedata/schemes/eh_tmt2), for Scotland the [HES Monument Types Thesaurus](http://purl.org/heritagedata/schemes/1) and for Wales the [RCAHMW Monument Types Thesaurus](http://purl.org/heritagedata/schemes/10).
 
![monument](img/ld4he-monument.svg "Monument")

**Fig. 1:** Monument with associated entities and properties

```turtle
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix mon: <http://purl.org/heritagedata/schemes/eh_tmt2/concepts/> .

<http://tempuri/monument/1> a crm:E22_Man-Made_Object ;
   crm:P55_has_current_location <http://tempuri/site/1> ;
   crm:P2_has_type mon:69063 .
<http://tempuri/site/1> a crm:E53_Place ;
   crm:P55i_currently_holds <http://tempuri/monument/1> . 
mon:69063 a crm:E55_Type;
   crm:P2i_is_type_of <http://tempuri/monument/1> ;
   rdfs:label "Lime Kiln"@en .
```
**Fig. 2:** [Turtle RDF](https://www.w3.org/TR/turtle/) syntax example