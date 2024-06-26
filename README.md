# blinky-billing
A simple billing system for me to experiment with different tools and technologies.
![Blinky billing logo generated using dall-e](_3a91140d-8508-436a-b204-159e857d0f61.jpeg)

## Learning goals
1. Refamiliarise myself with c# and .net and learn the latest features.
2. Experiment with different tools and technologies e.g. github copilot, aws serverless etc.
3. Have fun writing code.

## Tech
This solution uses the following technologies
- .net SDK 9.0.100-preview.4
- [typespec](https://typespec.io/docs) for API first descriptions

## High level domain model
Billing as a domain is complex. Here is a high level map of the domain and the different contexts within it.
![billing domain model](billing-domain-v1.png)
Each of these contexts contains many entities and business rules. I'll be focusing on the product catalog initially.