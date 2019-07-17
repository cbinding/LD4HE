# Artefact
***

Artefacts are objects found on a [site](ld4he-site.md) during an [investigation](ld4he-investigation.md)
Artefact types are concepts from the [FISH Archaeological Objects Thesaurus](http://purl.org/heritagedata/schemes/mda_obj)
 
![artefact](img/ld4he-artefact.svg)

```turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix aat: <http://vocab.getty.edu/aat/> .

<http://tempuri/artefact/1> a crm:E22_Man-Made_Object ;
   crm:P2_has_type <http://purl.org/heritagedata/schemes/mda_obj/concepts/100153> ;
<http://purl.org/heritagedata/schemes/mda_obj/concepts/100153> crm:P2i_is_type_of <http://tempuri/artefact/1> ;
   rdfs:label "axehead"@en .
```
