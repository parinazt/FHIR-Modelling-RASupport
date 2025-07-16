Profile: DAS28ScoreProfile
Parent: Observation
Id: das28-score
Title: "DAS28 Disease Activity Score (Observation)"
Description: "Records DAS28 score (0-10) for rheumatoid arthritis activity"

* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] only Quantity
* valueQuantity 1..1 MS
* valueQuantity.value ^short = "Score (0-10, decimals allowed)"
* valueQuantity.unit = "score"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/10  // UCUM 'per 10' scale

// Constraints for valid score range (0.0 to 10.0 float) - I checked and the max score is 10 (https://www.das-score.nl/en/)
* obeys das28-range
Invariant: das28-range
Description: "DAS28 must be between 0.0 and 10.0"
Expression: "valueQuantity.value >= 0.0 and valueQuantity.value <= 10.0"
Severity: #error