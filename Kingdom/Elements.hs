module Kingdom.Elements (
  h1, h2, h3, h4, h5, h6,
  div_, p, hr, pre, blockquote,
  span_, a, code, em, strong, i, b, u, sub, sup, br,
  ol, ul, li, dl, dt, dd,
  img, iframe, canvas, svg, math,
  form, input, textarea, button, select, option,
  section, nav, article, aside, header, footer, address, main_, body,
  figure, figcaption,
  table, caption, colgroup, col, tbody, thead, tfoot, tr, td, th,
  fieldset, legend, label, datalist, optgroup, keygen, output, progress, meter,
  audio, video, source, track,
  embed, object, param,
  ins, del,
  small, cite, dfn, abbr, time, var, samp, kbd, s, q,
  mark, ruby, rt, rp, bdi, bdo, wbr,
  details, summary, menuitem, menu
) where

import Kingdom (node, DOM)

h1 :: DOM
h1 = node "h1"

h2 :: DOM
h2 = node "h2"

h3 :: DOM
h3 = node "h3"

h4 :: DOM
h4 = node "h4"

h5 :: DOM
h5 = node "h5"

h6 :: DOM
h6 = node "h6"

div_ :: DOM
div_ = node "div"

p :: DOM
p = node "p"

hr :: DOM
hr = node "hr"

pre :: DOM
pre = node "pre"

blockquote :: DOM
blockquote = node "blockquote"

span_ :: DOM
span_ = node "span"

a :: DOM
a = node "a"

code :: DOM
code = node "code"

em :: DOM
em = node "em"

strong :: DOM
strong = node "strong"

i :: DOM
i = node "i"

b :: DOM
b = node "b"

u :: DOM
u = node "u"

sub :: DOM
sub = node "sub"

sup :: DOM
sup = node "sup"

br :: DOM
br = node "br"

ol :: DOM
ol = node "ol"

ul :: DOM
ul = node "ul"

li :: DOM
li = node "li"

dl :: DOM
dl = node "dl"

dt :: DOM
dt = node "dt"

dd :: DOM
dd = node "dd"

img :: DOM
img = node "img"

iframe :: DOM
iframe = node "iframe"

canvas :: DOM
canvas = node "canvas"

svg :: DOM
svg = node "svg"

math :: DOM
math = node "math"

form :: DOM
form = node "form"

input :: DOM
input = node "input"

textarea :: DOM
textarea = node "textarea"

button :: DOM
button = node "button"

select :: DOM
select = node "select"

option :: DOM
option = node "option"

section :: DOM
section = node "section"

nav :: DOM
nav = node "nav"

article :: DOM
article = node "article"

aside :: DOM
aside = node "aside"

header :: DOM
header = node "header"

footer :: DOM
footer = node "footer"

address :: DOM
address = node "address"

main_ :: DOM
main_ = node "main"

body :: DOM
body = node "body"

figure :: DOM
figure = node "figure"

figcaption :: DOM
figcaption = node "figcaption"

table :: DOM
table = node "table"

caption :: DOM
caption = node "caption"

colgroup :: DOM
colgroup = node "colgroup"

col :: DOM
col = node "col"

tbody :: DOM
tbody = node "tbody"

thead :: DOM
thead = node "thead"

tfoot :: DOM
tfoot = node "tfoot"

tr :: DOM
tr = node "tr"

td :: DOM
td = node "td"

th :: DOM
th = node "th"

fieldset :: DOM
fieldset = node "fieldset"

legend :: DOM
legend = node "legend"

label :: DOM
label = node "label"

datalist :: DOM
datalist = node "datalist"

optgroup :: DOM
optgroup = node "optgroup"

keygen :: DOM
keygen = node "keygen"

output :: DOM
output = node "output"

progress :: DOM
progress = node "progress"

meter :: DOM
meter = node "meter"

audio :: DOM
audio = node "audio"

video :: DOM
video = node "video"

source :: DOM
source = node "source"

track :: DOM
track = node "track"

embed :: DOM
embed = node "embed"

object :: DOM
object = node "object"

param :: DOM
param = node "param"

ins :: DOM
ins = node "ins"

del :: DOM
del = node "del"

small :: DOM
small = node "small"

cite :: DOM
cite = node "cite"

dfn :: DOM
dfn = node "dfn"

abbr :: DOM
abbr = node "abbr"

time :: DOM
time = node "time"

var :: DOM
var = node "var"

samp :: DOM
samp = node "samp"

kbd :: DOM
kbd = node "kbd"

s :: DOM
s = node "s"

q :: DOM
q = node "q"

mark :: DOM
mark = node "mark"

ruby :: DOM
ruby = node "ruby"

rt :: DOM
rt = node "rt"

rp :: DOM
rp = node "rp"

bdi :: DOM
bdi = node "bdi"

bdo :: DOM
bdo = node "bdo"

wbr :: DOM
wbr = node "wbr"

details :: DOM
details = node "details"

summary :: DOM
summary = node "summary"

menuitem :: DOM
menuitem = node "menuitem"

menu :: DOM
menu = node "menu"
