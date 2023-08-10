;; extends

;; graphql
(
 (call
  (identifier) @identifier (#eq? @identifier "query")
  (arguments
    (keywords
      (pair
        key: (keyword) @keyword (#eq? @keyword "query: ")
        value: (string (quoted_content) @injection.content)))))
  (#set! injection.language "graphql")
  (#set! injection.include-children true))

(
 (binary_operator
  left: (identifier) @identifier (#eq? @identifier "query")
  right: (string (quoted_content) @injection.content))
  (#set! injection.language "graphql")
  (#set! injection.include-children true))
