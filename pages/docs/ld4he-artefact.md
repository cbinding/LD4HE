# Artefact
***

Artefacts are objects of some interest found on a [site](ld4he-site.md) during an [investigation](ld4he-investigation.md). Artefact types are concepts from the object type thesaurus corresponding to the location of the [site](ld4he-site.md). For England & Wales this will be the [FISH Archaeological Objects Thesaurus](http://purl.org/heritagedata/schemes/mda_obj), for Scotland it will be the [HES Archaeological Objects Thesaurus](http://purl.org/heritagedata/schemes/2).
 
![artefact](img/ld4he-artefact.svg)

**Fig. 1:** Artefact with associated entities and properties

```turtle
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix obj: <http://purl.org/heritagedata/schemes/mda_obj/concepts/> .

<http://tempuri/artefact/1> a crm:E22_Man-Made_Object ;
   crm:P53_has_former_or_current_location <http://tempuri/site/1> ;
   crm:P2_has_type obj:100153 . 
obj:100153 a crm:E55_Type;
   crm:P2i_is_type_of <http://tempuri/artefact/1> ;
   rdfs:label "Axehead"@en .
```
**Fig. 2:** [Turtle RDF](https://www.w3.org/TR/turtle/) syntax example