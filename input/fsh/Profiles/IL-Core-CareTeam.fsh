Profile: ILCoreCareTeam
Parent: CareTeam
Id: il-core-care-team
Title: "ILCore CareTeam Profile"
Description: "Israel Core proposed constraints and extensions on the CareTeam Resource"

* ^url = $ILCareTeam
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2023-05-17"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore CareTeam Profile"
* . ^definition = "Definitions for the profile-CareTeam resource profile."
* . ^isModifier = false

* subject only Reference(ILCorePatient or ILCoreGroup) 
* encounter only Reference(ILCoreEncounter)
* participant.member only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or ILCorePatient or ILCoreRelatedPerson or ILCoreCareTeam)
* participant.onBehalfOf only Reference(ILCoreOrganization)
* reasonReference only Reference(ILCoreCondition)
* managingOrganization only Reference(ILCoreOrganization)