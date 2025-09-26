# SportApp #


Please make sure to enable the spelling checker for Xcode.

Select Xcode-->click on edit in top menu--> Format--> spelling and Grammar-->Check spelling while typing.


## Naming Convention ##

Please follow naming convention for UIKit element i.e.
emailTextField = For TextField (here "email" represent the working history and "TextField" represent the actual behaviour )
loginButton = For Button
copyrightLabel = For UILabel

Same way we need to use for other UIKit elements

# Warning#
*Please avoid underscore(_) in app, don't use underscore in function name.

*Avoid space between Group names (Folder name), it will create issues in github.

*Don’t commit  hidden code (//hidden code ) and unnecessary code to bitbucket

*Don’t add extra images which is not required in app 

*Add Image in group of same screen(Login screen required images should be in login group folder)

* If there is any more than one UIkit element in design  then should use UIView and Stack View according to requirement.


## Linter ##

Rule configuration at:


**Update**

New rules are continuously added so keep the linter up to date and compare the rule configuration file to the list of rules to make sure new rules that make sense for this project are enabled. To update just run: 

```
pod update SwiftLint
```

Don't forget to commit the `Podfile.lock` after every update.

## Getting Started ##

First of all, start downloading Xcode if you haven't already.
You can't develop on any platform other than OS X. Just don't bother.


### General  account ###


### How do I get set up? ###

* Download Xcode (you should have already done this)
* You need a  Apple developer account. Ask another admin to add you.

### Certificates and Provisioning profiles ###

**Development**

You can use Xcode to automatically create your development certificate and provisioning profiles. 

**Distribution**

Ask another developer to share their certificate and private key by:

* Open Keychain Access 
* Select certificate and private key
* Right click and choose export
* Use a strong password
* Send the `.p12` file. 
* Open the cetificate in your mac and add it to your Keychain. 

### Cocoapods ###

* Install Cocoapods and get dependencies:
* [Getting Started with Cocoapods](https://guides.cocoapods.org/using/getting-started.html)
* In the root directory of project (the directory with Podfile), run `pod install `
* Run pod update at your own risk. Only do so if you are prepared to deal with potential breakages from dependency updates.

## TestFlight ##

We use TestFlight for QA builds and in some cases for public betas. 

## Tests ##

Unit tests are implemented in `appTests` target.

Test will run in host-less mode to avoid launching a new simulator and installing the app everytime tests are run. To run the tests:

* Select a simulator device (it won't run on devices)
* On the top menu, select `Product -> Test` or simply hit `⌘+U`

**Important:** Make sure that all tests are passing before pushing and/or merging 

### Who do I talk to? ###

* Sandeep (sthakur820@gmail.com) is your best bet for any questions about how to get up and running. 
