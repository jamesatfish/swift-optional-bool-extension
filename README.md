# swift-optional-bool-extension
Swift Extension class that provides static methods for evaluating optional Bools

**Installation:** Copy the Bool+OptionalsHelper.swift file into a convenient location in your Swift project.

**Usage:**

To evaulate the truthfulness of an optional Bool:
*This function returns `true` if the Bool is Concrete AND True, returns `false` in all other cases.*

```
var optionalBool: Bool?
var boolIsTrue = Bool.isConcreteAndTrue(optionalBool)
```

To evaulate the falsefulness of an optional Bool:
*This function returns `true` if the Bool is Concrete AND False, returns `false` in all other cases.*

```
var optionalBool: Bool?
var boolIsTrue = Bool.isConcreteAndFalse(optionalBool)
```

To compare two Bools that may or may not be Concrete:
*This function returns `true` if both Bools are Concrete AND have the same value, returns `true` if both Bools are nil, returns `false` in all other cases.*

```
var optionalBool1: Bool?
var optionalBool2: Bool?
var boolsHaveSameValue = optionalBool1 %?== optionalBool2
```
