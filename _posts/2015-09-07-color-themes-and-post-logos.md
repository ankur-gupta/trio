---
layout: post
title: Color Themes and Post Logos
date: 2015-09-07
logo: 'spinner fa-spin'
---

Trio comes with support for 9 different color themes as well as [Font Awesome icons](https://fortawesome.github.io/Font-Awesome/icons/) as logos.

### Color Themes
By default, Trio has two basic colors -- black and [baby blue](). Black is used for all text and headings and this color is fixed. The other color (which is baby blue, by default) may be changed. Trio ships with 8 other colors (copied from [Lanyon theme](https://github.com/poole/lanyon)). These colors are listed in `_sass/_colors.scss`. If you want to change the color theme, simply change the `$theme-color` variable in `_sass/_colors.scss`:

```scss
$theme-color: $base-08; /* Red */
```

Thanks to [Mark Otto](https://github.com/mdo) and [Chris Kempson's base16](https://github.com/chriskempson/base16) for these themes. See the `README.md` on [GitHub Trio page](https://github.com/ankur-gupta/trio) for a screenshot of the red theme.

### Logos
Trio also comes with support for logos, as you can see on the Trio homepage and this post. The logos are simply [Font Awesome](http://fortawesome.github.io/Font-Awesome) icons dipped in the current color theme. Post logos are shown both in the paginated index on the [Trio homepage](/) as well in the title of the blog post. In order to add a post logo, simply search for an icon on [Font Awesome](https://fortawesome.github.io/Font-Awesome/icons/) and find the icon keyword. Simply add icon keyword as the `logo` field in the YAML from-matter to the post's `.md` file. 

```yaml
---
layout: post
title: Blog Post Title
logo: leaf
---
```

The above example will add a `leaf` logo for the blog post. 

Font Awesome has a few [animated icons](https://fortawesome.github.io/Font-Awesome/examples/#animated) that can also be used. Animated icons could be useful to draw attention to a new post (such as this post).

In addition to individual post logos, Trio also supports a site logo that appears in the footer of all pages. Site wide logo is also a Font Awesome icon and may be set in a similar manner. The only difference is that instead of setting the logo in a `.md` file, you need to set the logo in `_config.yml` file:

```yaml
fort_awesome_icon: 'cog fa-spin'
```



