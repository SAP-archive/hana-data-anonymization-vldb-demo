Description
===========

This project provides the sample code for a SAP Web IDE project
demonstrating the SAP HANA Data Anonymization functionality shipped with
version 2.0 SP03.  This functionality in turn is subject of a
contribution to the VLDB conference.

The project contains a table with synthetic salary data from the HR
department of the imaginary company ACME IT.  On top of this data two
different calculation views are defined in order to provide two
different anonymized versions of this data.  The table and the views are
used as running example in aforementioned contribution and provided
publicly by means of this repository.

Requirements
============

In order to run the sample project, SAP HANA version 2.0 SP03 or higher
with SAP Web IDE is required.  If no such system is available, the
[SAP HANA Express Edition](https://developers.sap.com/topics/sap-hana-express.html)
can be used for this purpose.

Download and Installation
=========================

From the GitHub repository, download this project by clicking "Clone or
download" and "Download ZIP".  The file
"hana-data-anonymization-vldb-demo-master.zip" can then be simply
imported into the SAP Web IDE by clicking "File" -> "Import" -> "File or
Project", and selecting it.  After that, the project must be built by
clicking "Build" -> "Build".  Then, anonymized data can be accessed via
the two pre-configured calculation views "HRDB_VIEW_DIFF_PRIV" and
"HRDB_VIEW_K_ANON".

Queries done for analysis of "HRDB_VIEW_DIFF_PRIV" can be found in the
workspace under "VLDBDemo/DIFF_PRIV_SENSITIVITY.sql" and
"VLDBDemo/DIFF_PRIV_ANALYSIS.sql".  The raw data of the salary table is
located at "VLDBDemo/db/src/HRDB_TABLE.csv".

How to obtain support
=====================

This project is provided as it is without any further support.  For a
thorough explanation, we refer to our publication submitted to the VLDB
conference 2019.  We will provide a reference to this publication as
soon as this is possible.  Information on SAP HANA Data Anonymization
can be found
[here](http://www.sap.com/data-anonymization)
or at the
[SAP Help Portal](https://help.sap.com/viewer/b3ee5778bc2e4a089d3299b82ec762a7/2.0.03/en-US/0d578c30d6d448898898967fb3ef2516.html).

License
=======

Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved.
This file is licensed under the [SAP Sample Code License](./LICENSE).
