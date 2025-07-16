Profile: SUSUsabilityAssessment
Parent: Observation
Id: SUS-observation
Title: "SUS Usability Assessment (Observation)"
Description: "Captures the System Usability Scale (SUS) score as an observation."

* status 1..1 MS

* code = http://example.org/CodeSystem/custom-assessment-codes#SUS "System Usability Scale"  // Example custom code
* subject 1..1 MS  //  Patient (who rated the system)
* effectiveDateTime 1..1 MS  // Date of sus assessment
* value[x] 0..0  // No value at root level (score is in extensions)
* extension contains
    SUSScore named susScore 1..1 MS  // Overall SUS score (0–100)
  

// Constraints to enforce valid SUS scores
* extension[SUSScore] ^constraint[0].key = "sus-score-range"
* extension[SUSScore] ^constraint[0].severity = #error
* extension[SUSScore] ^constraint[0].expression = "valueInteger.exists() and valueInteger >= 0 and valueInteger <= 100"

