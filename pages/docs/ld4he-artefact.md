# Artefact
***

Artefacts are objects identified as being of some interest to the archaeological activities. In a similar approach to [monuments](ld4he-monument.md), Specific instances of artefacts are not included in OASIS metadata [records](ld4he-record.md) - instead the records refer to general artefact types (and artefact periods). Artefact types are concepts originating from the object types thesaurus corresponding to the location of the [site](ld4he-site.md). For England & Wales this will be the [FISH Archaeological Objects Thesaurus](http://purl.org/heritagedata/schemes/mda_obj), for Scotland it will be the [HES Archaeological Objects Thesaurus](http://purl.org/heritagedata/schemes/2). Where records refer to artefact periods these will be concepts originating from the [Historic England Periods List](http://purl.org/heritagedata/schemes/eh_period). There is no direct connection between the artefact type and the period concept in the dataset record, but the concepts are nevertheless useful for searching on records referring to controlled vocabulary terms e.g. "Early Medieval" or "Axehead".
 
![artefact](img/ld4he-artefact.svg)

**Fig. 1:** Artefact type and period associated with a site record | [svg](img/ld4he-artefact.svg) | [png](img/ld4he-artefact.png) | [pdf](img/ld4he-artefact.pdf)

```turtle
{!ttl/example-artefact.ttl!}
```
**Fig. 2:** [Turtle RDF](https://www.w3.org/TR/turtle/) example 
| [styled](https://cdn.rawgit.com/niklasl/ldtr/v0.2.2/demo/?url=https://cbinding.github.io/LD4HE/ttl/example-artefact.ttl)
| [RDFa](http://rdf-translator.appspot.com/convert/n3/rdfa/html/https://cbinding.github.io/LD4HE/ttl/example-artefact.ttl)
| [microdata](http://rdf-translator.appspot.com/convert/n3/microdata/html/https://cbinding.github.io/LD4HE/ttl/example-artefact.ttl)
| [xml](http://rdf-translator.appspot.com/convert/n3/xml/html/https://cbinding.github.io/LD4HE/ttl/example-artefact.ttl) 
| [nt](http://rdf-translator.appspot.com/convert/n3/nt/html/https://cbinding.github.io/LD4HE/ttl/example-artefact.ttl)
| [json-ld](http://rdf-translator.appspot.com/convert/n3/json-ld/html/https://cbinding.github.io/LD4HE/ttl/example-artefact.ttl)
