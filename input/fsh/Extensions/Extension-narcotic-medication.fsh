Extension: ILCoreNarcoticMedication
Id: ext-narcotic-medication
Title: "Ext: ILCore Narcotic Medication"
Description: "Extension: Noting if a medication is narcotic or not"

* ^url = $ext-narcotic-medication
* ^version = "0.11.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type = #element
* ^context[1].expression = "MedicationAdministration"

* value[x] only boolean