import Data.Monoid ((<>))
import Kingdom ((/-), (/--), (/+), (/++), (/:))
import Kingdom.Elements (div_, label, input, button)
import Kingdom.Properties (class_, id_, for, value)

tree = div_ /+ (label /- for "height" /: "Height (cm): ")
            /+ (input /- id_ "height" /- value "177")
            /+ (button /- class_ "btn submit" /: "Submit")

tree' = div_ /++ [
  label /- for "height" /: "Height (cm): ",
  input /-- [id_ "height", value "177"],
  button /- class_ "btn submit" /: "Submit"
  ]

formLabel name measure units = label /- for name /: measure <> " (" <> units <> "): "
formInput name initial = input /-- [id_ name, value initial]
submitButton = button /- class_ "btn submit" /: "Submit"

askHeight = div_ /++ [
  formLabel "height" "Height" "cm",
  formInput "height" "177",
  submitButton
  ]

main = print tree
