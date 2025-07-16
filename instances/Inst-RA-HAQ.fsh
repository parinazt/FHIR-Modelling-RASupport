Instance: ExampleHAQ
InstanceOf: HAQScoreProfile
Usage: #example
Description: "Example HAQ score instance."
* status = #final
* code = http://loinc.org#71950-0 "Health Assessment Questionnaire [HAQ]" // https://loinc.org/71950-0
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-15"
* valueQuantity = 1.8 '/3' "score"