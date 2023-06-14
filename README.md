#  Dice Roller

Part of a set on experiments in the new APIs released during WWDC 2023.

Test Subject: Animation

Findings:

- Code is straightforward but not very discoverable (per SwiftUI norms)
- Animation appears to be single-threaded, other taps are blocked during roll
    - Move investigation needed
- #preview macro fails on current Mac. 
    - Macroexpand (nice feature) implies @available macOS 14. 

Misc: 
- Bing Image Creator doesn't understand how to draw dice.
- Xcode integrated source control update is ok, but also rough aroudn the edges 
    - Connecting to GitHub requires token creation, fails with opaque error unless Xcode creates repo
