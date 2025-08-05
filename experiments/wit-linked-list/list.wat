(component
  (type (;0;)
    (component
      (type (;0;)
        (component
          (type (;0;) (list u8))
          (type (;1;) (variant (case "none") (case "any") (case "restricted" 1)))
          (import "allowed-destinations" (type (;2;) (eq 1)))
        )
      )
      (export (;0;) "documentation:example/list-experiment@1.0.1" (component (type 0)))
    )
  )
  (export (;1;) "list-experiment" (type 0))
  (@custom "package-docs" "\01{}")
  (@producers
    (processed-by "wit-component" "0.235.0")
  )
)
