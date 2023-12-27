# VX-DetectionRules
Detection rules to identify threat actor flexing to VX-Underground.org in your network. High fidelity indicator of network compromise if all other detections have failed you.

This repository contains rules for 3 different platforms:

exchange_vxug_transport_rule.ps1 - A powershell script for Office 365 that creates a Transport Rule to forward all messages to vx-underground.org to a user for approval and detection.
sigma_email_sent_to_vxug.yml - A Sigma rule that works if you're ingesting Message Trace logs into your logging platform of choice.
sublime_vxug_detection_rule.yml - A Sublime detection rule that will trigger on any message sent from a mailbox monitored by the Sublime platform.
