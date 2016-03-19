module Kingdom (
  DOM (..),
  Tag,
  PropName, PropValue,
  Prop, PropList,
  Content,
  DOMList,
  node, text,
  (/-), (/--),
  (/+), (/++),
  (/:)
  ) where

import Data.Monoid ((<>))

type Tag = String
type PropName = String
type PropValue = String
type Prop = (PropName, PropValue)
type PropList = [Prop]
type Content = String
type DOMList = [DOM]

data DOM = DOM Tag PropList [DOM] | Text Content

instance Show DOM where
  show (Text s) = s
  show (DOM tag props frags) =
    "<" <> tag <>
    (spaceIfNotEmpty props) <>
    (unwords $ showProp <$> props) <>
    ">" <>
    (frags >>= show) <>
    "</" <> tag <> ">"

spaceIfNotEmpty :: (Eq a) => [a] -> String
spaceIfNotEmpty list = if list /= []
  then " "
  else ""

showProp :: Prop -> String
showProp (name, value) = name <> "=\"" <> value <> "\""

node :: Tag -> DOM
node tag = DOM tag [] []

text :: Content -> DOM
text = Text
-- Append a single prop

infixl 5 /-
(/-) :: DOM -> Prop -> DOM
(/-) (DOM t ps fs) p = DOM t (ps <> [p]) fs

-- Append a list of props
infixl 5 /--
(/--) :: DOM -> PropList -> DOM
(/--) (DOM t ps fs) pp = DOM t (ps <> pp) fs

-- Append a single element
infixl 5 /+
(/+) :: DOM -> DOM -> DOM
(/+) (DOM t ps fs) f = DOM t ps (fs <> [f])

-- Append a list of elements
infixl 5 /++
(/++) :: DOM -> [DOM] -> DOM
(/++) (DOM t ps fs) ff = DOM t ps (fs <> ff)

infixl 5 /:
(/:) :: DOM -> Content -> DOM
(/:) (DOM t ps fs) s = DOM t ps (fs <> [text s])
