;;; Program structure
(module) @scope

; Imports
(aliased_import
  alias: (identifier) @definition.import)
(import_statement
  name: (dotted_name ((identifier) @definition.import)))
(import_from_statement
  name: (dotted_name ((identifier) @definition.import)))

; Function with parameters, defines parameters
(parameters
  (identifier) @definition.parameter)

(default_parameter
  (identifier) @definition.parameter)

(typed_parameter
  (identifier) @definition.parameter)

(typed_default_parameter
  (identifier) @definition.parameter)

; *args parameter
(parameters
  (list_splat_pattern
    (identifier) @definition.parameter))

; **kwargs parameter
(parameters
  (dictionary_splat_pattern
    (identifier) @definition.parameter))

; Function defines function and scope
((function_definition
  name: (identifier) @definition.function) @scope
 (#set! definition.function.scope "parent"))


;;; Loops
; not a scope!
(for_statement
  left: (pattern_list
          (identifier) @definition.var))
(for_statement
  left: (tuple_pattern
          (identifier) @definition.var))
(for_statement
  left: (identifier) @definition.var)

; not a scope!
;(while_statement) @scope

; for in list comprehension
(for_in_clause
  left: (identifier) @definition.var)
(for_in_clause
  left: (tuple_pattern
          (identifier) @definition.var))
(for_in_clause
  left: (pattern_list
          (identifier) @definition.var))

(dictionary_comprehension) @scope
(list_comprehension) @scope
(set_comprehension) @scope

;;; Assignments

(assignment
 left: (identifier) @definition.var)

(assignment
 left: (pattern_list
   (identifier) @definition.var))
(assignment
 left: (tuple_pattern
   (identifier) @definition.var))

(assignment
 left: (attribute
   (identifier)
   (identifier) @definition.field))

(as_pattern
  alias: (as_pattern_target) @definition.var)

;;; REFERENCES
(identifier) @reference
