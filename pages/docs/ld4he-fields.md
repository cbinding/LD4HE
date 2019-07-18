# OASIS mandatory fields
***

The source data for the LD4HE project comes from a specific subset of fields in the overall OASIS dataset. These are mandatory fields in the OASIS data input. 

| Field ID | Field Name               | Notes
|----------|--------------------------|----------------------------------------|
| 1        | oasis_id                 | Unique identifier of the OASIS [record](ld4he-record.md))  |
| 2        | event_type               | The type of [investigation](ld4he-investigation.md). URIs from [FISH Event Types Thesaurus](http://purl.org/heritagedata/schemes/agl_et). There may be multiple event types per record |
| 3        | reason for investigation | The reason for undertaking an [investigation](ld4he-investigation.md). URIs from [OASIS Reason for Investigation](http://purl.org/heritagedata/schemes/ee833bdc-4cf1-4fbf-9282-29e75655855d) |
| 4        | Country	              | Location of a [site](ld4he-site.md). URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) |
| 5        | Site name                | Free text name for a local [site](ld4he-site.md) |
| 9a       | Grid reference (geom_ngr)| Location of a [site](ld4he-site.md). This will store either a point, line or polygon in a single geometry field (using PostGIS), using the OSGB36 crs. There can be multiple values per record. |
| 9b       | Grid reference (geom_ll) | Location of a [site](ld4he-site.md). This will store either a point, line or polygon in a single geometry field (using PostGIS), using the WGS84 crs. There can be multiple rows per record. |
| 15       | County                   | Location of a [site](ld4he-site.md). URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) |
| 16       | District                 | Location of a [site](ld4he-site.md). URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) |
| 17       | Parish                   | Location of a [site](ld4he-site.md). URIs from [OS Open Names](http://data.ordnancesurvey.co.uk/datasets/boundary-line) |
| 18       | HER                      | Auto generated. HER organization responsible for the area encompassing the location of the site  |
| 19       | National body            | Auto generated. National body responsible for the area encompassing the location of the site |
| 22       | Project title            | Value generated in form |
| 23a      | Start date               | Start of the overall [timespan](ld4he-timespan.md) for an [investigation](ld4he-investigation.md). Value generated in form |
| 23b      | End date                 | End of the overall [timespan](ld4he-timespan.md) for an [investigation](ld4he-investigation.md). Value generated in form |
| 24a      | Methodology              | Techniques used in an [investigation](ld4he-investigation.md), URIs from [FISH Event Types](http://purl.org/heritagedata/schemes/agl_et). There can be multiple values per record. |
| 24b      | Description              | Free text |
| 28       | Planning application ID  | Free text, and only if prompt (id3) = commercial |
| 31       | Project codes            | Type of code - OASIS Associated ID |
| 35       | Publication type         | URIs from [OASIS Paper and Digital Archive Component](http://purl.org/heritagedata/schemes/c31949b0-b6cf-4223-a2c0-c9a2048633ff) vocabulary |
| 91       | Type of report           | [Report](ld4he-report.md) type. URIs from [OASIS Paper and Digital Archive Component](http://purl.org/heritagedata/schemes/c31949b0-b6cf-4223-a2c0-c9a2048633ff) vocabulary |
| 36       | Title of report          | [Report](ld4he-report.md) title. Auto generated through form |
| 39       | Author / editor          | Author / Editor of [report](ld4he-report.md). Potential at a future date to assign ISSN to authors via the ADS Library, but the methodology for sustaining this is still not firmly established. |
| 44       | Date                     | year the [report](ld4he-report.md) was published/issued |
| 45       | Publisher                | [Organization](ld4he-organization.md) publishing the [report](ld4he-report.md) |
| 46       | Place of issue           | Place of publication for the [report](ld4he-report.md). Could use OS, but of limited use for this data |
| 58       | Name of organization     | Auto generated |
| 50       | URL                      | URL of the [report](ld4he-report.md) |
| 50a      | DOI                      | DOI of the [report](ld4he-report.md) - an identifier |
| 62       | Monument type            | URIs from monument type vocabulary corresponding to [site](ld4he-site.md) location: [England](http://purl.org/heritagedata/schemes/eh_tmt2) / [Scotland](http://purl.org/heritagedata/schemes/1) / [Wales](http://purl.org/heritagedata/schemes/10) |
| 63       | Monument period          | URIs from period vocabulary corresponding to [site](ld4he-site.md)  location: [England](http://purl.org/heritagedata/schemes/eh_period) / [Scotland](http://purl.org/heritagedata/schemes/scapa) / [Wales](http://purl.org/heritagedata/schemes/11) |
| 64       | Artefact type            | URIs from object types vocabulary according to [site](ld4he-site.md) location: [England & Wales](http://purl.org/heritagedata/schemes/mda_obj) / [Scotland](http://purl.org/heritagedata/schemes/2 ) |
| 65       | Artefact period          | URIs from period vocabulary corresponding to [site](ld4he-site.md) location: [England](http://purl.org/heritagedata/schemes/eh_period) / [Scotland](http://purl.org/heritagedata/schemes/scapa) / [Wales](http://purl.org/heritagedata/schemes/11) |
| 70       | Research outcomes        | Use selection from Research Frameworks list (non-LOD at time of writing) |
| OASIS+   | Solid geology            | If Geophysical module completed. Will use data from <http://data.bgs.ac.uk/downloads.html> |
| OASIS+   | Drift geology            | If Geophysical module completed. Will use data from <http://data.bgs.ac.uk/downloads.html> |

