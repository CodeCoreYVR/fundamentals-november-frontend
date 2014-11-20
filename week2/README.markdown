Topics covered
-----------------------------------

- Recap of last class, a couple of exercises
  - Inspector
  - block elements, inline elements, inline-block
    - `inline-block` is like `inline` but can have width and height.
  - Box model
    - `box-model: border-box` is easier to reason about! Read the week 1 notes.
- Pseudo-selectors: hover, active, visited, link. [More info here](http://css-tricks.com/pseudo-class-selectors/)

  ```css
    .google-link {
      color: red;
    }

    .google-link:hover {
      color: blue;
    }
  ```

- Positioning boxes beside each other
  - See week 1 notes.
- Centering block elements
  - `margin: 0 auto;`
  - `margin-top: 0; margin-bottom: 0; margin-left: auto; margin-right:
    auto;`
  - This is the same as `margin-left: auto; margin-right: auto`
- Positioning boxes on top of other boxes
  - Make both boxes `block` elements
- Positioning a box relative to its containing box
  - Icons
  - This is what we're always doing, but `position: absolute`
    works bad on large containers. Need to change it too much for
    screen size, content size, etc.
  - Containing box that you want to position an element relative to
    should be set as `position: relative;` - the element inside that
    you want to precisely position should be `position: absolute;`
    and then the co-ordinates will start in the top left of that box.
    So if you do `top: 0px;` and `left: 0px;` it will appear in the
    very top left of the first parent element that has `position: relative`

![Absolute positioning step-by-step diagram](https://raw.githubusercontent.com/CodeCoreYVR/fundamentals-october/master/week2/abs-pos-diagram.png)

- Making a box always stay in one place when scrolling
  - `position: fixed`
  - Position it to the top using the `top` attribute, like with absolute
    positioning.
  - Add some padding to the body so that it pushes the content down beyond
    where header (so it doesn't overlap it).

- Making text wrap around a box (float)
  - Float: I don't recommend using this for layout right now, but
  useful for positioning things beside text. We are keeping things
  simple here by just using absolute positioning and inline-blocks for
  our main layout techniques, but you can also use float to position
  your columns.
  - See (this
    example)[https://github.com/CodeCoreYVR/fundamentals-october/blob/master/week2/index.html]
from class.

  ```css
    .container {
      width: 600px;
      margin: 0 auto;
    }

    .my-photo {
      float: right;
      width: 150px;
    }

    .my-photo img {
      max-width: 100%;
    }
    .photo-credits {
      margin-top: 5px;
      font-size: 0.7em;
    }
  ```

  ```html
    <div class="container">
      <aside class="my-photo">
        <img src="photo.png">
        <p class="photo-credits">
          Taken by John Smith
        </p>
      </aside>
      <p class="about-me">A bunch of text here...</p>
    </div>
  ```

- Fun: Animations
  - Covered this a bit! The `transition` property!

Did not cover at all
-----------------------------------

- Fun: Google Fonts
- Fun: Animations - animate.css
- Exercise: Resume - do this as an exercise!
- Media queries again
- Forms
  - action / method
  - inputs
    - text / email / password
    - radio
    - checkbox
    - textarea
    - select
    - submit button
- Fun: Parallax - http://pixelcog.com/parallax.js/
- Instagram copy
