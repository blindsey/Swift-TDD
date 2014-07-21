Swift-TDD
=========

An attemp to do some test driven development (TDD) in Swift with [KIF](https://github.com/kif-framework/KIF)

### Requirements

* [CocoaPods](http://cocoapods.org/)

<pre>
$ pod install
</pre>

### Note

Xcode-beta3 and CocoaPods don't work with "Defines Module" turned on for Nimble

Solved by doing the following:

Find the /[Long-path-goes-here]/all-product-headers.yaml (Go to Folder... in Finder)
Replace the contents with the code below.
Save and lock the file. (Get info for file, check locked.)
<pre>
{
  'version': 0,
  'case-sensitive': 'false',
  'roots': []
}
</pre>
