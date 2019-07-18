# Data Model
***

The [dataset](ld4he-dataset.md) is composed of [records](ld4he-record.md) referring to [investigations](ld4he-investigation.md). Investigations are carried out by [organizations](ld4he-organization.md) at [sites](ld4he-site.md) during [time-spans](ld4he-timespan.md). Investigations encompass many activities, including [report](ld4he-report.md) production.

![model](img/ld4he-main-model.svg)

**Fig. 1:** Main entities and properties

```turtle
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .

<http://tempuri/dataset/1> a crm:E73_Information_Object ;
   crm:P148_has_component <http://tempuri/record/1> .
<http://tempuri/record/1> a crm:E73_Information_Object ;
   crm:P148i_is_component_of <http://tempuri/dataset/1> ;
   crm:P67_refers_to <http://tempuri/investigation/1> .
<http://tempuri/investigation/1> a crm:E7_Activity ;
   crm:P14-carried_out_by <http://tempuri/organization/1> ;
   crm:P7_took_place_at <http://tempuri/site/1> ;
   crm:P9_consists_of <http://tempuri/reportproduction/1> ;
   crm:P108_has_produced <http://tempuri/report/1> ;
   crm:P4_has_time-span <http://tempuri/timespan/1> .
<http://tempuri/organization/1> a crm:E74_Group ;
   crm:P14i_performed <http://tempuri/investigation/1> .
<http://tempuri/site/1> a crm:E53_Place ;
   crm:P7i_witnessed <http://tempuri/investigation/1> .
<http://tempuri/reportproduction/1> a crm:E12_Production ;
   crm:P9i_forms_part_of <http://tempuri/investigation/1> ;
   crm:P108_has_produced <http://tempuri/report/1> .
<http://tempuri/report/1> a crm:E31_Document ;
   crm:P108i_was_produced_by <http://tempuri/reportproduction/1> .
<http://tempuri/timespan/1> a crm:E52_Time-Span ;
   crm:P4i_is_time-span_of <http://tempuri/investigation/1> . 
```
**Fig. 2:** [Turtle RDF](https://www.w3.org/TR/turtle/) syntax example