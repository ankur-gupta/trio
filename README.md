#Trio

Trio is a simple, content-focused, responsive, mobile-friendly [Jekyll](http://jekyllrb.com/) theme. Trio comes with support for these things out-of-the-box:

* [RSS feed](/feed.xml)
* [404 page](/404.html)
* Markdown syntax highlighting, fenced code blocks, tables, GitHub gists, blockquotes
* Post sharing buttons
* Paginated list of posts
* [Disqus integration]({% post_url 2015-09-06-setting-up-disqus-integration %})

This [Jekyll](http://jekyllrb.com/) theme was crafted with <3 by [Ankur Gupta](https://github.com/ankur-gupta). Checkout the [demo](http://perfectlyrandom.org/trio/).

### Thanks 
Trio was created using inspiration and partial code from these sources:

* [Solo](http://chibicode.github.io/solo/) theme by [Shu Uesugi](https://github.com/chibicode) - HTML/CSS for posts.
* [Lanyon](http://lanyon.getpoole.com/) & [Hyde](http://hyde.getpoole.com/)themes by [Mark Otto](https://github.com/mdo) - color themes.
* [Pixyll](http://pixyll.com/) theme by [John Otander](https://github.com/johnotander) - design principles, some HTML/CSS.
* [Bourbon Refills](http://refills.bourbon.io/) - many HTML/CSS snippets.
* [Font Awesome](http://fortawesome.github.io/Font-Awesome) - awesome icons.

A big thank you to all of them. I have added links to their licenses wherever I copied their code verbatim. 

### Color Themes
Trio comes with nine color themes (1 default + 8 from [Lanyon Color Themes](https://github.com/poole/lanyon)). These colors are listed in `_sass/_colors.scss`. To change the color theme, simply change the `$theme-color` variable in `_sass/_colors.scss`:

```scss
$theme-color: $base-08; /* Red */
```

This is an example of the red/`base-08` color theme.

![Trio with red color theme](trio-red-screenshot.png)


### Work in progress
I am not an expert in SCSS and the current code might be superfluous or overkill. While the theme works nicely, I will make the code more concise without changing the look and feel of the theme.

Some things I plan to add in the future:

* Search capability


### License
Open sourced under MIT License

