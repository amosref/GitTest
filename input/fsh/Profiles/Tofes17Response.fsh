Profile: Tofes17Response
Parent: CoverageEligibilityResponse
Id: tofes-17-response
Title: "Tofes 17 Response Profile"
Description: "Outburn Tofes 17 Response Profile on CoverageEligibilityResponse"

* ^url = "http://fhir.health.gov.il/StructureDefinition/tofes-17-response"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-07-06"
* ^publisher = "Outburn LTD."

* . ^short = "Tofes 17 Response Profile"
* . ^definition = "Definitions for the Outburn Tofes 17 Response Profile on CoverageEligibilityResponse."
* . ^isModifier = false

* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* purpose 1..*
* purpose = #validation (exactly)
* identifier contains UUID 1..1
* identifier[UUID].system 1..1
* identifier[UUID].system = "urn:ietf:rfc:3986"
* patient 1..1
* patient.identifier 1..1
* patient.identifier.system 1..1
* patient.identifier.system = "http://fhir.health.gov.il/identifier/il-national-id" (exactly)
* requestor 1..1
* requestor only Reference(Organization)
* requestor.identifier 1..1
* requestor.identifier.system 1..1
* requestor.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity" (exactly)
* insurer.identifier 1..1
* insurer.identifier.system 1..1
* insurer.identifier.system = "http://fhir.health.gov.il/identifier/legal-entity" (exactly)
* insurance.item.productOrService.coding ^slicing.discriminator.type = #value
* insurance.item.productOrService.coding ^slicing.discriminator.path = "system"
* insurance.item.productOrService.coding ^slicing.rules = #open
* insurance.item.productOrService.coding contains MohCode 1..1
* insurance.item.productOrService.coding[MohCode].system 1..1
* insurance.item.productOrService.coding[MohCode].system = "http://fhir.health.gov.il/cs/medical-service-moh"
* insurance.item.provider only Reference(Practitioner)
* insurance.item.provider.identifier 1..1
* insurance.item.provider.identifier.system 1..1
* insurance.item.provider.identifier.system = "http://practitioners.health.gov.il/Practitioners"
// * error.extension contains http://fhir.outburn.co.il/StructureDefinition/issue-regards named issue-regards 0..1

