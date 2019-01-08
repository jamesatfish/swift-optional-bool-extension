//
//  Bool+OptionalsHelper.swift
//
//	Bool class extensions to evaluate optional Bools in Swift
//
//  Created by James Hodge, fyshh iPhone Development, 2018
//  Free for modification and re-use.
//


extension Bool {
    
    // Helper functions to determine truthfullness of optional Bools without explicitly unwrapping
    
    public static func isConcreteAndTrue(_ optionalBool: Bool?) -> Bool {
        if let unwrappedBool = optionalBool {
            return unwrappedBool
        }
        return false
    }
    
    public static func isConcreteAndFalse(_ optionalBool: Bool?) -> Bool {
        if let unwrappedBool = optionalBool {
            return !unwrappedBool
        }
        return false
    }
    
}

// operators to allow comparison of optional Bools without unwrapping

infix operator %?==

public func %?== (lhsOptional: Bool?, rhsOptional: Bool?) -> Bool {
    // if both can be unwrapped, compare using concrete comparitor
    if let lhs = lhsOptional, let rhs = rhsOptional {
        return lhs == rhs
    }
    // if lhsOptional OR rhsOptional are nil when the other is non-nil, comparitor fails
    // note we don't use 'if lhsOptional != nil' as that's just a cyclical reference to these same comparitors
    if let _ = lhsOptional { // swiftlint:disable:this unused_optional_binding
        return false
    }
    if let _ = rhsOptional { // swiftlint:disable:this unused_optional_binding
        return false
    }
    // default case is when both sides are nil, in which case nil==nil, return true
    return true
}
