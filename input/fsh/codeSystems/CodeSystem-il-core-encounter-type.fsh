CodeSystem: ILCoreEncounterType
Id: il-core-encounter-type
Title: "IL Core Encounter Type codes"
Description: "A list of codes for types of encounters"
* ^status = #draft
* ^version = "0.11.0"
* ^url = $il-core-encounter-type
* ^content = #complete
* ^caseSensitive = false
* ^experimental = false
// * ^valueSet = $vs-il-core-encounter-type
* ^extension[0].url = $effective
* ^extension[0].valueDate = "2023-01"

* #COMMUNITY-OR-HMO "Community Care/HMO setting"
* #RALTCF "Residential Aged Care/Long Term Care Facility"
