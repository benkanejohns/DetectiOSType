# DetectiOSType
Detect iOS device types, screen width and height for SpriteKit.

I came across a dilemma when I submitting my first iOS app/game to the app store.
I got rejected because my source code would not running on an iPad. Apple's resolution centre sent me a message saying "We noticed that your app did not run at iPhone resolution when reviewed on iPad". I failed to meet the requirement 2.10 in the Appe Store Review Guidlines. https://developer.apple.com/app-store/review/guidelines/

This was my first attempt at submitting to the App Store so I was really unfamiliar with the process and the guidelines.

If you find yourself in the same situation please read on.

Basically what Apple was letting me know is that the source code should working nicely across the iPhone and the iPad without any modification. I had to workout how I would make all my SKTextures, SKLabelNodes and SKPhyicsBody's display that same across the iPhone and the iPad which are different resolutions and screen sizes.

I set about to see what other people have done to get around this and the shortly answer is. There is no general guide to get your source code working across both iPhone and iPad when you are using SpriteKit. In SpriteKit you don't use Storyboards so the really cool AutoLayouts features are not available. 

This is what I have put together after weeks of research on this topic. I used a combination of two things to make it work nicely and was detecting the device type (iPhone or iPad) and then detecting the screen width.
