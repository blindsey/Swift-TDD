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

1. vi /[Long-path-goes-here]/all-product-headers.yaml
2. Replace the contents with the code below.
<pre>
{
  'version': 0,
  'case-sensitive': 'false',
  'roots': []
}
</pre>
3. chmod 444 /[Long-path-goes-here]/all-product-headers.yaml
4. Xcode will complain about write-file but your tests will run
