import Kingdom
import Kingdom.Elements
import Kingdom.Properties

ex1 =
  div_
    /+ (h1 /: "Kingdom")
    /+ (i /: "It's a pleasure.")
{-- show ex1
<div>
  <h1>Kingdom</h1>
  <i>It's a pleasure.</i>
</div>
--}

ex2 =
  div_ /++ [
    label /- for "height" /: "Height (cm): ",
    input /- id_ "height" /- value "177",
    button /- class_ "btn submit" /: "Submit"
  ]
{-- show ex2
<div>
  <label for="height">Height (cm) :</label>
  <input id="height" value="177" />
  <button class="btn submit">Submit</button>
</div>
--}

main = print ex2
