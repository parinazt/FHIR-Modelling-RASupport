Instance: ExamplePatient
InstanceOf: ParticipantPatientRAProfile
Description: "Example patient with disease duration extension."
Usage: #example

* name.family = "Rossi"
* name.given = "Maria"
* gender = #female
* birthDate = "1950-03-20"
* extension[duration].valueQuantity = 1 'a' "years"  // or just: = 1 'a'