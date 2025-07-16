Instance: ExampleDAS28
InstanceOf: DAS28ScoreProfile
Usage: #example
Description: "Example DAS28 score instance."
* status = #final
* code = http://loinc.org#75633-8 "Rheumatoid arthritis disease activity score Calculated by VectraDA"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-15"
* valueQuantity = 2.4 '/10' "score"