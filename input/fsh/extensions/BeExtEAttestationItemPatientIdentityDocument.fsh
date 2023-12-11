Extension: BeExtPatientIdentityDocument
Id: be-ext-patientidentitydocument
Title: "BeExtPatientIdentityDocument"
Description: "Data from the Belgian eID"
* extension contains readingDate 0..1  MS  and
    readingTime 0..1 MS  and
    entryType 1..1 MS  and
    reasonManual 0..1 MS  and
    medium 1..1 MS  and
    stickerReason 0..1 MS  and
    serialNumber 0..1 MS 
* extension[readingDate].value[x] only date
* extension[readingTime].value[x] only time
* extension[entryType].value[x] only CodeableConcept
* extension[entryType].valueCodeableConcept from BeVSIdDocInputType (required)
* extension[reasonManual].value[x] only CodeableConcept
* extension[reasonManual].valueCodeableConcept from BeVSIdDocManualInputJustification (required)
* extension[stickerReason].value[x] only CodeableConcept
* extension[stickerReason].valueCodeableConcept from BeVSIdDocVignetteUseJustification (required)
* extension[medium].value[x] only CodeableConcept
* extension[medium].valueCodeableConcept from BeVSIdDocMediaType (required)
* extension[serialNumber].value[x] only string

* ^context.type = #element
* ^context.expression = "Claim.item"
//
