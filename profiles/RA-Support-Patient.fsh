Profile: ParticipantPatientRAProfile
Parent: Patient
Id: participant-patient-ra
Title: "Information of Participating Patients (Patient)"
Description: "Demographic details of participating patients"

* extension contains DiseaseDuration named duration 1..1 MS
* extension[duration].valueQuantity 1..1 MS
* extension[duration].valueQuantity.code = #a  // Enforce years


* name 1..1 MS
* name.given 1..1 MS
* name.family 1..1 MS
* gender 1..1 MS

* gender from RestrictedGenderValueSet (required)


// defining the age restriction
* birthDate 1..1 MS
* obeys patient-65-plus  // FHIRPath constraint

Invariant: patient-65-plus // invariant-> defining the rule that must be true for fhir profile
Description: "Patient must be 65+ years old."
Expression: "today() - birthDate >= 65 years"
Severity: #error



