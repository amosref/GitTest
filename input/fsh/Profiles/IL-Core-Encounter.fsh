Profile: ILCoreEncounter
Parent: Encounter
Id: il-core-encounter
Title: "ILCore Encounter Profile"
Description: "Israel Core proposed constraints and extensions on the Encounter Resource"

* ^url = $ILEncounter
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Encounter Profile"
* . ^definition = "Definitions for the profile-Encounter resource profile."
* . ^isModifier = false

* identifier and status and class and subject and period 
    and serviceProvider and location.location MS
* class from $vs-il-core-encounter-class (extensible)
* classHistory.class from $vs-il-core-encounter-class (extensible)
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "@this"
* type ^slicing.rules = #open
* type contains virtual-encounters 0..* and
    doctor-to-doctor-consultation 0..*
* type[virtual-encounters] from $vs-il-core-doctor-to-doctor (required)
* type[doctor-to-doctor-consultation] from $vs-il-core-virtual-type (required)
* serviceType from $vs-il-core-service-type (extensible)
* subject 1..1
* subject only Reference(ILCorePatient or ILCoreGroup)
* basedOn only Reference(ILCoreServiceRequest)
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains primary-performer 0..*
* participant[primary-performer]
  * MS
  * type MS
  * period MS
  * individual MS
  * type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF (exactly)
* participant.individual only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson)
* reasonCode ^slicing.discriminator.type = #pattern
* reasonCode ^slicing.discriminator.path = "$this"
* reasonCode ^slicing.rules = #open
* reasonCode contains moh-reason-code 0..*
* reasonCode[moh-reason-code] from $vs-moh-reason-codes (required)
* reasonReference only Reference(ILCoreCondition or ILCoreProcedure or ILCoreObservation or ImmunizationRecommendation)
* diagnosis.condition only Reference(ILCoreCondition or ILCoreProcedure)
* hospitalization.origin only Reference(ILCoreLocation or ILCoreOrganization)
* hospitalization.admitSource from $vs-moh-admit-source (extensible)
* hospitalization.destination only Reference(ILCoreLocation or ILCoreOrganization)
* hospitalization.extension contains $ext-movement-sequence-number named movement-number 0..1
* hospitalization.extension[movement-number] ^short = "Ext: Movement Sequence-Number"
* hospitalization.extension[movement-number] ^definition = "Extension: Movement Sequence-Number"
* hospitalization.dischargeDisposition from $vs-moh-discharge-disposition (extensible)
* location.location only Reference(ILCoreLocation)
* serviceProvider only Reference(ILCoreOrganization)
* partOf only Reference(ILCoreEncounter)
