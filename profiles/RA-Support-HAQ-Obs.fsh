Profile: HAQScoreProfile
Parent: Observation
Id: haq-score
Title: "Health Assessment Questionnaire Score (HAQ) (Observation)"
Description: "Records HAQ disability index (0-3)."

* status 1..1 MS
* code 1..1 MS 
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] only Quantity
* valueQuantity 1..1 MS
* valueQuantity.value ^short = "Score (0-3, decimals allowed)"
* valueQuantity.unit = "score"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/3  // UCUM 'per 3' scale

// Constraints for valid score range (0.0 to 3.0 float)
* obeys haq-range
Invariant: haq-range
Description: "HAQ must be between 0.0 and 3.0"
Expression: "valueQuantity.value >= 0.0 and valueQuantity.value <= 3.0"
Severity: #error