Profile: ILCoreImmunizationRecommendation
Parent: ImmunizationRecommendation
Id: il-core-immunization-recommendation
Title: "ILCore ImmunizationRecommendation Profile"
Description: "Israel Core proposed constraints and extensions on the ImmunizationRecommendation Resource"

* ^url = $ILImmunizationRecommendation
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2023-05-22"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore ImmunizationRecommendation Profile"
* . ^definition = "Definitions for the profile-ImmunizationRecommendation resource profile."
* . ^isModifier = false

* patient only Reference(ILCorePatient)
* authority only Reference(ILCoreOrganization)
* recommendation.supportingImmunization only Reference(ILCoreImmunization or ImmunizationEvaluation)
