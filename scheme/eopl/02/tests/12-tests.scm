(require rackunit rackunit/text-ui)
(load-relative "../../support/eopl.scm")
(load-relative "../12.scm")

(define eopl-2.12-tests
  (test-suite
    "Tests for EOPL exercise 2.12"

    (check-true (empty-stack? (empty-stack)))
    (check-true (empty-stack? (pop (push 1 (empty-stack)))))
    (check-false (empty-stack? (push 1 (empty-stack))))
    (check-false (empty-stack? (pop (push 2 (push 1 (empty-stack))))))
))

(exit (run-tests eopl-2.12-tests))
