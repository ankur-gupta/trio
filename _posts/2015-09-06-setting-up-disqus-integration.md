---
layout: post
title: Setting up Disqus integration
date: 2015-09-06
logo: comments-o
---

Trio comes with [Disqus](http://disqus.com) integration. Trio contains all the Disqus Javascript and HTML code required to make Disqus work. All you need to do is change the `disqus_shortname` field in `_config.yml`.

To get a `disqus_shortname`, you'll need to [sign up](https://disqus.com/profile/signup/) for a Disqus account. 

While testing on your local machine, you might want to enable _developer mode_ for Disqus by setting the Javascript `disqus_developer` variable to `1` in 
`index.html` and `_layouts/post.html` files:

```js
var disqus_developer = 1; // Comment out when the site is live
```

Remember to comment out the lines when making your website live. 

There is a delay (about 5-10 minutes) between setting up Disqus correctly and seeing the comments and comment counts show up. For more details or to understand how Trio adds Disqus comments, see [this post](http://www.perfectlyrandom.org/2014/06/29/adding-disqus-to-your-jekyll-powered-github-pages/).
