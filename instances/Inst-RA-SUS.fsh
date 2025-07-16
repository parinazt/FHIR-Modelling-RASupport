Instance: ExampleSUS
InstanceOf: SUSUsabilityAssessment
Description: "An example observation representing a user experience (sus score)."
Usage: #example
* status = #final
* code = http://example.org/CodeSystem/custom-assessment-codes#SUS "System Usability Scale"
* subject = Reference(Patient/example-patient)  // Patient who rated the system
* effectiveDateTime = "2025-12-01"
* extension[susScore].valueInteger = 90  // Example SUS score (0–100)
