module Kingdom.Properties (class_, id_, for, value, href) where

import Kingdom (Prop, PropValue)

class_ :: PropValue -> Prop
class_ = (,) "class"

id_ :: PropValue -> Prop
id_ = (,) "id"

for :: PropValue -> Prop
for = (,) "for"

value :: PropValue -> Prop
value = (,) "value"

href :: PropValue -> Prop
href = (,) "href"
