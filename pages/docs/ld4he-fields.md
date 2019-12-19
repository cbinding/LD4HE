# Data Fields
***
The [source data](ld4he-example-data.md) for the LD4HE project is a specific subset of fields from the overall OASIS dataset. These are mandatory fields in the OASIS data input forms, and were identified during the LD4HE project design stage. Each field listed has an OASIS field identifier, a corresponding field name, a brief description of how the data will fit into the overall LD4HE data model, some examples of typical field contents and a JSONPath expression for locating the specific field within the overall data structure. The JSONPath expressions were developed and tested against received example data using the [JSONPath online evaluator](https://jsonpath.com/) to ensure correctness.
***
## Field 1 - oasis id
The field contains the unique [identifier](ld4he-identifier.md) for the OASIS [record](ld4he-record.md). There will be one OASIS identifier per record. Example field values encountered in the example data received to date are *"oxfordar1-357078"*, *"jensdigg1-197587"* etc.
```
$.[*].oasisId	
```
**Fig. 1:** JSONPath expression

***
## Field 2 - event type
The type of [investigation](ld4he-investigation.md) activity undertaken. There may be multiple event types per record. The field will contain URIs from the [FISH Event Types Thesaurus](http://purl.org/heritagedata/schemes/agl_et). Example field values are:

  * [http://purl.org/heritagedata/schemes/agl_et/concepts/145118](http://purl.org/heritagedata/schemes/agl_et/concepts/145118) *(Building Survey)*
  * [http://purl.org/heritagedata/schemes/agl_et/concepts/145113](http://purl.org/heritagedata/schemes/agl_et/concepts/145113) *(Bosing survey)*
  * [http://purl.org/heritagedata/schemes/agl_et/concepts/145177](http://purl.org/heritagedata/schemes/agl_et/concepts/145177) *(Watching Brief)* etc.
  
```
$.[*].oasisProjDetails.oasisProjSubjectPeriodList[?(@.subjectType.subjectType == 'FISH_EVENT')].subjectUri	
```
**Fig. 2:** JSONPath expression

***
## Field 3 - reason for investigation
The [reason](ld4he-investigation-reason.md) for undertaking an [investigation](ld4he-investigation.md). The field will contain URIs from [OASIS Reason for Investigation](http://purl.org/heritagedata/schemes/ee833bdc-4cf1-4fbf-9282-29e75655855d). Example field values are:

* [http://purl.org/heritagedata/schemes/ee833bdc-4cf1-4fbf-9282-29e75655855d/concepts/11e58ff4-9432-4452-a364-6b22e1696944](http://purl.org/heritagedata/schemes/ee833bdc-4cf1-4fbf-9282-29e75655855d/concepts/11e58ff4-9432-4452-a364-6b22e1696944) *(Planning requirement)*
* [http://purl.org/heritagedata/schemes/ee833bdc-4cf1-4fbf-9282-29e75655855d/concepts/48a1fbbc-65aa-4004-84c4-3ad33d0f1fb0](http://purl.org/heritagedata/schemes/ee833bdc-4cf1-4fbf-9282-29e75655855d/concepts/48a1fbbc-65aa-4004-84c4-3ad33d0f1fb0) *(Post determination)*
```
$.[*].oasisProjDetails.oasisProjAttrList[?(@.projectAttrType == 'reason')].projectAttrLuId.uri
```
**Fig. 3:** JSONPath expression

***
## Field 4 - country
Location of a [site](ld4he-site.md). The intention is that this field will contain URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) - however in the example data the field currently contains textual country names e.g. *"England"*, *"Wales"*, *"Northern Ireland"*, *"Scotland"*
```
$.[*].oasisProjDetails.adminAreasMap[*].Country
```
**Fig. 4:** JSONPath expression

***
## Field 5 - site name
Free text local [name](ld4he-site-name.md) for a [site](ld4he-site.md). Example values for the field are *"Studfield Hill"*, *"Oxford Botanic Gardens"*, *"Boundary Wall of Former Cinema Site, Sandgate"* etc.
```
$.[*].oasisProjDetails.oasisProjSiteList[*].sitename

Note for field values relating to a specific record (e.g. the site name for oasis_id 'jensdigg1-196788'), JSONPath would be:

$.[?(@.oasisId == 'jensdigg1-196788')].oasisProjDetails.oasisProjSiteList[*].sitename
```
**Fig. 5:** JSONPath expression

***
## Field 9a - Grid reference (geom_ngr)
[Location](ld4he-site-location.md) of a [site](ld4he-site.md). This will store either a point, line or polygon in a single geometry field (using PostGIS), using the OSGB36 crs. Example values for the field are *"POINT(556600 256500)"*, *"POINT(154350 54350)"*. There can be multiple values per record.
```
$.[*].oasisProjDetails.oasisProjSiteList[*].oasisProjSiteCoordsList[?(@.vectorType == 'Point' || @.vectorType == 'Polygon')].geomNgrOut
```
**Fig. 6:** JSONPath expression

***
## Field 9b - Grid reference (geom_ll)
[Location](ld4he-site-location.md) of a [site](ld4he-site.md). This will store either a point, line or polygon in a single geometry field (using PostGIS), using the WGS84 crs. Example values for the field are *"POINT(1 55)"*. There can be multiple values per record.
```
$.[*].oasisProjDetails.oasisProjSiteList[*].oasisProjSiteCoordsList[?(@.vectorType == 'Point' || @.vectorType == 'Polygon')].geomLlOut
```
**Fig. 7:** JSONPath expression

*** 
## Field 15 - county
[Location](ld4he-site-location.md) that a [site](ld4he-site.md) falls within. The intention is that this field will contain URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) - however in the example data the field currently contains textual county names e.g. *"Cambridgeshire"*, *"Somerset"*, *"North Yorkshire"*, *"Shropshire"* etc.
```
$.[*].oasisProjDetails.adminAreasMap[*].County
```
**Fig. 8:** JSONPath expression

*** 
## Field 16 - district
[Location](ld4he-site-location.md) that a [site](ld4he-site.md) falls within. The intention is that this field will contain URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) - however in the example data the field currently contains textual district names e.g. *"South Cambridgeshire"*, *"Sedgemoor"*, *"Hambleton"*, *"Harrogate"* etc.
```
$.[*].oasisProjDetails.adminAreasMap[*].[District/Unitary Authority]
```
**Fig. 9:** JSONPath expression

*** 
## Field 17 - parish
[Location](ld4he-site-location.md) that a [site](ld4he-site.md) falls within. The intention is that this field will contain URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) - however in the example data the field currently contains textual parish names e.g. *"Great Wilbraham"*, *"East Huntspill"*, *"Overton"*, *"Wighill"* etc.
```
$.[*].oasisProjDetails.adminAreasMap[*].Parish
```
**Fig. 10:** JSONPath expression

*** 
## Field 18 - HER
Name of the Historic Environment Record organization responsible for an area encompassing the [location of a site](ld4he-site-location.md). Example values for the field are *"Bedford Borough HER"*, *"Redcar and Cleveland UAD"*, *"New Forest National Park Authority"* etc.
```
$.[*].oasisReviewersHasOasisList[*].[?(@.level=='2')].name
```
**Fig. 11:** JSONPath expression

*** 
## Field 19 - national body
National body responsible for the area encompassing the [location of a site](ld4he-site-location.md). Example values for the field are *"Historic Environment Scotland"*, *"Royal Commission on the Ancient and Historical Monuments of Wales"* etc.
```
$.[*].oasisReviewersHasOasisList[*].[?(@.level=='4')].name
```
**Fig. 12:** JSONPath expression

*** 
## Field 22 - project title
Descriptive title of the [investigation](ld4he-investigation.md). Example values for the field are often in the form *"[Event type] at [Site name]"* e.g. *"Field Survey at Studfield Hill"*, *"Field Visit at The Sheiling"* etc. 
```
$.[*].oasisProjDetails.projName
```
**Fig. 13:** JSONPath expression

*** 
## Field 23a - start date
Start of the overall [timespan](ld4he-timespan.md) for an [investigation](ld4he-investigation.md). Example values for the field are  *"13-Dec-2007 12:00"*, *"01-Apr-2018 12:00"* etc.
```
$.[*].oasisProjDetails.sdate
```
**Fig. 14:** JSONPath expression

*** 
## Field 23b - end date
End of the overall [timespan](ld4he-timespan.md) for an [investigation](ld4he-investigation.md). Example values for the field are  *"13-Dec-2007 12:00"*, *"01-Apr-2018 12:00"* etc.
```
$.[*].oasisProjDetails.edate
```
**Fig. 15:** JSONPath expression

*** 
## Field 24a - methodology
[Techniques](ld4he-methodology.md) used in an [investigation](ld4he-investigation.md). The field will contain URIs from [FISH Event Types](http://purl.org/heritagedata/schemes/agl_et). There can be multiple values per record.
```
??
```
**Fig. 16:** JSONPath expression

*** 
## Field 24b - description
Brief textual description of an [investigation](ld4he-investigation.md). Example value is: *"An archaeological evaluation was undertaken by Cotswold Archaeology in August 2017 at the proposed Clearwater CE Primary School site, Quedgeley, Gloucestershire. A total of seven trenches were excavated. The remains of two modern earthen banks, possibly relating to former flood defences or most probably episodes of landscaping associated with the construction of nearby modern housing, were identified in the south western part of the site. No further features, deposits or finds of archaeological significance were identified during the evaluation."*
```
$.[*].oasisProjDetails.descr
```
**Fig. 17:** JSONPath expression

*** 
## Field 28 - planning application ID 
An [identifier](ld4he-investigation-identifier.md) of a specific type, associated with an [investigation](ld4he-investigation.md). An example value of the field contents is *"TR4584358"*
```
$.[*].oasisProjDetails.oasisProjAssocIdsList[?(@.identifierType.descr == 'Planning Application No')].identifier 
```
**Fig. 18:** JSONPath expression

*** 
## Field 31 - project codes
Type of code - OASIS Associated ID
```
 ??
```
**Fig. 19:** JSONPath expression

*** 
## Field 35 - publication type
The form of publication the [report](ld4he-report.md) takes. Values will be URIs from [OASIS Paper and Digital Archive Component](http://purl.org/heritagedata/schemes/c31949b0-b6cf-4223-a2c0-c9a2048633ff) vocabulary; however in the example data the field contains textual values e.g. *"REPORT"*, *"MONOGRAPH"*, *"JOURNAL_ARTICLE"*
```
$.[*].oasisProjDetails.oasisProjBiblioList[*].biblioType 
```
**Fig. 20:** JSONPath expression

*** 
## Field 91 - type of report
Values will be URIs from [OASIS Paper and Digital Archive Component](http://purl.org/heritagedata/schemes/c31949b0-b6cf-4223-a2c0-c9a2048633ff) vocabulary
```
 ??
```
**Fig. 21:** JSONPath expression

*** 
## Field 36 - title of report
Textual [Report](ld4he-report.md) title. Example values is *"Excavation at edinburgh castle"*
```
 $.[*].oasisProjDetails.oasisProjBiblioList[*].title
```
**Fig. 22:** JSONPath expression

*** 
## Field 39 - author / editor
Author / Editor of [report](ld4he-report.md). Potential at a future date to assign ISSN to authors via the ADS Library, but the methodology for sustaining this is still not firmly established. Example value for the field is *"Smith, Tony"*
```
$.[*].oasisProjDetails.oasisProjBiblioList[*].oasisProjBiblioAuthsList[*].surname
```
**Fig. 23:** JSONPath expression

*** 
## Field 44 - date
Year the [report](ld4he-report.md) was [published/issued](ld4he-report-publication.md). Example values are  *1914*, *2017* etc.
```
$.[*].oasisProjDetails.oasisProjBiblioList[*].pubdate
```
**Fig. 24:** JSONPath expression

*** 
## Field 45 - publisher
Name of the [Organization](ld4he-organization.md) responsible for [publishing](ld4he-report-publication.md) the [report](ld4he-report.md). Example values for the field are *"ADS"*, *"East Lothian Council Archaeology Service"*
```
$.[*].oasisProjDetails.oasisProjBiblioList[*].publisher
```
**Fig. 25:** JSONPath expression

*** 
## Field 46 - place of issue
[Place](ld4he-place.md) of [publication](ld4he-report-publication.md) for the [report](ld4he-report.md). The field contains textual names only, not URIs. Examples are *"Edinburgh"*, *"Rye"* etc.
```
$.[*].oasisProjDetails.oasisProjBiblioList[*].place
```
**Fig. 26:** JSONPath expression

*** 
## Field 58 - name of organization
??
```
??
```
**Fig. 27:** JSONPath expression

*** 
## Field 50 - URL
URL of the [report](ld4he-report.md) - an identifier. An example is [https://archaeologydataservice.ac.uk/catalogue/adsdata/arch-841-1/dissemination/pdf/oxfordar1-357078_1.pdf](https://archaeologydataservice.ac.uk/catalogue/adsdata/arch-841-1/dissemination/pdf/oxfordar1-357078_1.pdf)

```
$.[*].oasisProjDetails.oasisProjBiblioList[*].oasisProjBiblioDetailsList[*].url
```
**Fig. 28:** JSONPath expression

*** 
## Field 50a - DOI
Digital Object Identifier of the [report](ld4he-report.md) - an identifier. Examples are *"10.5284/1018054"*, *"10.5284/1057532"*, *"10.5284/1057505"*
```
$.[*].oasisProjDetails.oasisProjBiblioList[*].oasisProjBiblioDetailsList[*].doi
```
**Fig. 29:** JSONPath expression

*** 
## Field 62 - monument type
URIs from monument type vocabulary corresponding to [site](ld4he-site.md) location: [England](http://purl.org/heritagedata/schemes/eh_tmt2) / [Scotland](http://purl.org/heritagedata/schemes/1) / [Wales](http://purl.org/heritagedata/schemes/10). Example values for the field are:

* [http://purl.org/heritagedata/schemes/eh_tmt2/concepts/70096](http://purl.org/heritagedata/schemes/eh_tmt2/concepts/70096) *(Henge)*
* [http://purl.org/heritagedata/schemes/eh_tmt2/concepts/68622](http://purl.org/heritagedata/schemes/eh_tmt2/concepts/68622) *(Farmstead)*
* [http://purl.org/heritagedata/schemes/eh_tmt2/concepts/70152](http://purl.org/heritagedata/schemes/eh_tmt2/concepts/70152) *(Monastery)*

```
$.[*].oasisProjDetails.oasisProjSubjectPeriodList[?(@.subjectType.subjectType == 'FISH_TMT')].subjectUri
```
**Fig. 30:** JSONPath expression

*** 
## Field 63 - monument period
URIs from period vocabulary corresponding to [site](ld4he-site.md) location: [England](http://purl.org/heritagedata/schemes/eh_period) / [Scotland](http://purl.org/heritagedata/schemes/scapa) / [Wales](http://purl.org/heritagedata/schemes/11). Example values for the field are:

* [http://purl.org/heritagedata/schemes/eh_period/concepts/NE](http://purl.org/heritagedata/schemes/eh_period/concepts/NE) *(Neolithic)*
* [http://purl.org/heritagedata/schemes/eh_period/concepts/MBA](http://purl.org/heritagedata/schemes/eh_period/concepts/MBA) *(Middle Bronze Age)*
* [http://purl.org/heritagedata/schemes/eh_period/concepts/E20](http://purl.org/heritagedata/schemes/eh_period/concepts/E20) *(Early 20th Century)*

```
$.[*].oasisProjDetails.oasisProjSubjectPeriodList[?(@.subjectType.subjectType == 'FISH_TMT')].periodId.uri
```
**Fig. 31:** JSONPath expression

*** 
## Field 64 - artefact type
 URIs from object types vocabulary according to [site](ld4he-site.md) location: [England & Wales](http://purl.org/heritagedata/schemes/mda_obj) / [Scotland](http://purl.org/heritagedata/schemes/2). Example values for the field are:

* [http://purl.org/heritagedata/schemes/mda_obj/concepts/96380](http://purl.org/heritagedata/schemes/mda_obj/concepts/96380) *(Pot)*
* [http://purl.org/heritagedata/schemes/mda_obj/concepts/96665](http://purl.org/heritagedata/schemes/mda_obj/concepts/96665) *(Brooch)*
* [http://purl.org/heritagedata/schemes/mda_obj/concepts/96057](http://purl.org/heritagedata/schemes/mda_obj/concepts/96057) *(Rune Stone)*

```
 $.[*].oasisProjDetails.oasisProjSubjectPeriodList[?(@.subjectType.subjectType == 'FISH_OBJ')].subjectUri
```
**Fig. 32:** JSONPath expression

*** 
## Field 65 - artefact period
URIs from period vocabulary corresponding to [site](ld4he-site.md) location: [England](http://purl.org/heritagedata/schemes/eh_period) / [Scotland](http://purl.org/heritagedata/schemes/scapa) / [Wales](http://purl.org/heritagedata/schemes/11). Example values for the field are:

* [http://purl.org/heritagedata/schemes/eh_period/concepts/NE](http://purl.org/heritagedata/schemes/eh_period/concepts/NE) *(Neolithic)*
* [http://purl.org/heritagedata/schemes/eh_period/concepts/MBA](http://purl.org/heritagedata/schemes/eh_period/concepts/MBA) *(Middle Bronze Age)*
* [http://purl.org/heritagedata/schemes/eh_period/concepts/E20](http://purl.org/heritagedata/schemes/eh_period/concepts/E20) *(Early 20th Century)*

```
$.[*].oasisProjDetails.oasisProjSubjectPeriodList[?(@.subjectType.subjectType == 'FISH_OBJ')].periodId.uri
```
**Fig. 33:** JSONPath expression

*** 
## Field 70 - research outcomes
Use selection from Research Frameworks list (non-LOD at time of writing). A value from the example data for this field is *"Could reassessment of early work at sites of Loudon Hill and Milton help to understand early Roman activity in Scotland?"*
```
$.[*].oasisProjDetails.oasisProjResOutcomesList[*].researchFrameworksId.section
```
**Fig. 34:** JSONPath expression

*** 
## Field OASIS+ - Solid geology
If Geophysical module completed. Will use data from [http://data.bgs.ac.uk/downloads.html](http://data.bgs.ac.uk/downloads.html)
```
??
```
**Fig. 35:** JSONPath expression

*** 
## Field OASIS+ - Drift geology
If Geophysical module completed. Will use data from [http://data.bgs.ac.uk/downloads.html](http://data.bgs.ac.uk/downloads.html)
```
??
```
**Fig. 36:** JSONPath expression


