#Trio

Trio is a simple, content-focused, responsive, mobile-friendly [Jekyll](http://jekyllrb.com/) theme. Trio comes with support for these things out-of-the-box:

* RSS feed
* 404 page
* Markdown syntax highlighting, fenced code blocks, tables, GitHub gists, blockquotes
* Post sharing buttons
* Paginated list of posts
* Disqus integration
* Full-text search 

This [Jekyll](http://jekyllrb.com/) theme was crafted with <3 by [Ankur Gupta](https://github.com/ankur-gupta). Checkout the [demo](http://perfectlyrandom.org/trio/).

### Thanks 
Trio was created using inspiration and partial code from these sources:

* [Solo](http://chibicode.github.io/solo/) theme by [Shu Uesugi](https://github.com/chibicode) - HTML/CSS for posts.
* [Lanyon](http://lanyon.getpoole.com/) & [Hyde](http://hyde.getpoole.com/) themes by [Mark Otto](https://github.com/mdo) - color themes.
* [Pixyll](http://pixyll.com/) theme by [John Otander](https://github.com/johnotander) - design principles, some HTML/CSS.
* [Bourbon Refills](http://refills.bourbon.io/) - many HTML/CSS snippets.
* [Font Awesome](http://fortawesome.github.io/Font-Awesome) - awesome icons.
* [Simple-Jekyll-Search](https://github.com/christian-fei/Simple-Jekyll-Search) by [christian-fei](https://github.com/christian-fei) - full-text search.

A big thank you to all of them. I have added links to their licenses wherever I substantially copied their code.

### Color Themes
Trio comes with nine color themes (1 default + 8 from [Lanyon Color Themes](https://github.com/poole/lanyon)). These colors are listed in `_sass/_colors.scss`. To change the color theme, simply change the `$theme-color` variable in `_sass/_colors.scss`:

```scss
$theme-color: $base-08; /* Red */
```

This is an example of the red/`base-08` color theme.

![Trio with red color theme](https://cloud.githubusercontent.com/assets/7110058/9712293/858a2090-54fe-11e5-8165-e16d3b2d9efd.png)

### Script to create favicons
I have written a small [bash script](https://github.com/ankur-gupta/trio/blob/master/create-favicon.sh) that creates favicons using [imagemagick's](http://www.imagemagick.org) `convert`. You can modify the script to change colors and the lettering. See [`_layouts/default.html`](https://github.com/ankur-gupta/trio/blob/master/_layouts/default.html#L55) for the HTML that specifies icons for various vendors.


### Issues
This theme should be ready for use. I am not an expert in SCSS and the current code might be superfluous or overkill. See [issues](https://github.com/ankur-gupta/trio/issues) for future improvements. Feel free to add your own. 


### License
Open sourced under MIT License

