;; extends

;; Lambdas
((symbol) @keyword.function @conceal
          (#any-of? @keyword.function "lambda")
          (#set! conceal "λ"))

;; Functions
((symbol) @keyword.function @conceal
          (#any-of? @keyword.function "fn")
          (#set! conceal ""))

;; Hash Functions
((symbol) @keyword.function @conceal
          (#any-of? @keyword.function "hashfn" "#")
          (#set! conceal "#"))
