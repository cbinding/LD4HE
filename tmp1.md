 ```Turtle
 # Common prefixes:
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix aat: <http://vocab.getty.edu/aat/> .
 ```
  
<img src='https://g.gravizo.com/source/svg?<source_url_url_encoded>'/>
          
<img src='https://g.gravizo.com/svg?
 digraph G {
   label = "Object type and material";
   labelloc = "t";
   node [fontcolor=blue, fontsize=9, fontname=Arial ];
   edge [color=black, fontcolor=darkred, fontsize=9, fontname=Arial ];
   "http://tempuri/data/item/1" [style=filled, fillcolor="ghostwhite"];
   "http://tempuri/data/item/1" -> "crm:E22_Man-Made_Object" [label="rdf:type"];
   "http://tempuri/data/item/1" -> "aat:300404391" [label="crm:P2_has_type\n(is type of)"];
   "http://tempuri/data/item/1" -> "aat:300012264" [label="crm:P45_consists_of\n(is incorporated in)"];
   "aat:300404391" -> "crm:E55_Type" [label="rdf:type"];
   "aat:300012264" -> "crm:E57_Material" [label="rdf:type"];  
   "\"picture frame\"@en" [shape=box, color=darkgreen];
   "aat:300404391" ->  "\"picture frame\"@en" [label="rdfs:label"];
   "\"oak (wood)\"@en" [shape=box, style=filled, fillcolor=lightgray, color=darkgreen];
   "aat:300012264" -> "\"oak (wood)\"@en" [label="rdfs:label"];
 }
'/>

```Turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix aat: <http://vocab.getty.edu/aat/> .

<http://tempuri/data/item/1> a crm:E22_Man-Made_Object ;
    crm:P2_has_type aat:300404391 ;
    crm:P45_consists_of aat:300012264 .

aat:300012264 a crm:E57_Material ;
    rdfs:label "oak (wood)"@en .

aat:300404391 a crm:E55_Type ;
    rdfs:label "picture frame"@en .
```
