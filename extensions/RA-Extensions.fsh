Extension: DiseaseDuration
Id: disease-duration
Title: "Disease Duration with UCUM Units"
Description: "Duration in years with decimal support using UCUM standard."

* value[x] only Quantity
* valueQuantity 1..1 MS
* valueQuantity.code = #a  // UCUM code for years
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.unit = "years" (exactly)




Extension: SUSScore
Id: SUS-Score
Title: "SUS Score"
Description: "System Usability Scale (SUS Score)"
* value[x] only integer



