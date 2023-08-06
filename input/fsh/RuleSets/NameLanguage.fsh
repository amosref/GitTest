RuleSet: HumanNameLanguage
* name.extension contains $ext-language named language 0..1
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "extension('http://hl7.org/fhir/StructureDefinition/language').value"
* name ^slicing.rules = #open
* name contains 
    Hebrew 0..1 and
    English 0..1 and
    Arabic 0..1
* name[Hebrew].extension[language].valueCode = #he (exactly)
* name[English].extension[language].valueCode = #en (exactly)
* name[Arabic].extension[language].valueCode = #ar (exactly)
