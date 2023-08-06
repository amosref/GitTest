Profile: ILCoreMedicationRequest 
Parent: MedicationRequest 
Id: il-core-medication-request
Title: "ILCore MedicationRequest Profile"
Description: "Israel Core proposed constraints and extensions on the MedicationRequest  Resource"

* ^url = $ILMedicationRequest 
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore MedicationRequest  Profile"
* . ^definition = "Definitions for the profile-MedicationRequest  resource profile."
* . ^isModifier = false

* extension contains
   ext-recorded-time named recorded 0..1 and
   ext-narcotic-medication named narcotic 0..1  
* extension[recorded] ^short = "Ext: Recorded Time"
* extension[recorded] ^definition = "Extension: The time in whitch an event was recorded"
* extension[narcotic] ^short = "Ext: Narcotic Medication"
* extension[narcotic] ^definition = "Extension: Noting if a medication is narcotic or not"

* status and 
   intent and
   medication[x] and 
   subject and 
   authoredOn and 
   requester and 
   dosageInstruction MS 
* status 1..1
* intent 1..1
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category contains il-core 0..*
* category[il-core] from $vs-il-core-medication-request-category (extensible)
* reportedReference only Reference(ILCorePatient or ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson or ILCoreOrganization)
* medication[x] 1..1
* medication[x] from $vs-il-core-medication-code (extensible)
* medicationReference only Reference(ILCoreMedication)
* subject only Reference(ILCorePatient or ILCoreGroup) 
* encounter only Reference(ILCoreEncounter)
* requester 1..1
* requester only Reference(ILCorePatient or ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson or ILCoreOrganization or ILCoreDevice)
* supportingInformation ^slicing.discriminator.type = #profile
* supportingInformation ^slicing.discriminator.path = "$this.resolve()"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains bodyWeight 0..1
* supportingInformation[bodyWeight] only Reference(http://hl7.org/fhir/StructureDefinition/bodyweight)
* performer only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or ILCorePatient or ILCoreRelatedPerson or ILCoreCareTeam or ILCoreDevice)
* recorder only Reference(ILCorePractitioner or ILCorePractitionerRole)
* reasonCode from $vs-il-core-procedure-reason (extensible)
* reasonReference only Reference(ILCoreCondition or ILCoreObservation)
* reasonReference.extension contains $ext-procedure-reference named procedureReference 0..*
* reasonReference.extension[procedureReference] ^short = "Ext: ILCore Procedure Reference"
* reasonReference.extension[procedureReference] ^definition = "Extension: Procedure Reference"
* basedOn only Reference(CarePlan or ILCoreMedicationRequest or ILCoreServiceRequest or ILCoreImmunizationRecommendation)
* courseOfTherapyType from $vs-il-core-medication-course-of-therapy-type (extensible)
// * insurance only (ILCoreClaimResponse or ILCoreCoverage) // none of these exist yet - march-08-23
* dosageInstruction only ILCoreDosage


