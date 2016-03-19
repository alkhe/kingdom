# kingdom

A modular Virtual DOM combinator library.

## Example
![http://i.imgur.com/cKQ2oG7.png](http://i.imgur.com/cKQ2oG7.png)

## API

### `module Kingdom`

##### `data DOM = DOM Tag [Prop] [DOM] | Text Content`
`DOM` implements `Show`.

```hs
show div_ == "<div></div>"
```

##### `node :: String -> DOM`
Creates an empty Virtual DOM node using the provided string as its tag.

##### `text :: String -> DOM`
Creates a Virtual DOM node containing only the provided string.

##### `(\-) :: DOM -> Prop -> DOM`
Attaches a property to a Virtual DOM node.

##### `(\--) :: DOM -> [Prop] -> DOM`
Attaches a list of properties to a Virtual DOM node.

##### `(\+) :: DOM -> DOM -> DOM`
Appends a child Virtual DOM node to a parent Virtual DOM node.

##### `(\++) :: DOM -> [DOM] -> DOM`
Appends a list of child Virtual DOM node to a parent Virtual DOM node.

##### `(\:) :: DOM -> String -> DOM`
Appends a string as a child to a Virtual DOM node.

Equivalent to `\node string -> node \+ text string`.

### `module Kingdom.Elements`

Provides all HTML elements in the form:
```hs
el :: DOM
el = node "el"
```

`div`, `span`, and `main` are used for other purposes in Haskell, so they are suffixed with an underscore. (e.g. `div_`)

### `module Kingdom.Properties`

Provides often used HTML properties in the form:
```hs
propname :: String -> Prop
propname = (,) "propname"
```

The module currently exports `class_`, `id_`, `for`, and `value`.

## Todo
- use DiffList for props and children to improve performance
