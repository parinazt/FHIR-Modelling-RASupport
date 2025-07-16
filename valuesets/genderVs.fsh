ValueSet: RestrictedGenderValueSet
Id: restricted-gender-valueset
Title: "Restricted Gender Value Set"
Description: "Allowed values for gender: male, female, other."
* ^status = #active
* include codes from system http://hl7.org/fhir/administrative-gender where concept in #male
* include codes from system http://hl7.org/fhir/administrative-gender where concept in #female
* include codes from system http://hl7.org/fhir/administrative-gender where concept in #other