Instance: ExampleSystemOutput
InstanceOf: SystemPatientOutputCommunication
Description: "An example of conversation between patient and the system - system output."
Usage: #example
* status = #completed
* subject = Reference(Patient/example-patient) 
* sent = "2025-03-31T14:48:00Z"
* sender = Reference(Patinet/example-patient)  
* payload.contentString = "Based on your current symptoms and the fact that your rheumatoid arthritis is in remission or showing low activity, it's important to continue regular monitoring and follow-up. This helps detect any early signs of flare-ups. Maintaining your current treatment plan, staying physically active, and reporting any new joint pain, stiffness, or fatigue are key. We'll also provide ongoing education to help you understand your condition, manage lifestyle factors, and recognize symptoms early to prevent progression."
//* basedOn = Reference(ServiceRequest/example-referral-request)  // to check later- maybe needed here