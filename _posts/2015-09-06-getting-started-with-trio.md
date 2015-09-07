---
layout: post
title: Getting started with Trio
date: 2015-09-06
summary: Basic instructions and tips to get Trio working on your local machine.
logo: rocket
---

### Very First Steps
You should begin by [installing Jekyll](http://jekyllrb.com/docs/installation/) if you don't already have it. You can then [download Trio](https://github.com/ankur-gupta/trio/archive/master.zip) or [clone Trio](https://github.com/ankur-gupta/trio). Try [running Jekyll](http://jekyllrb.com/docs/usage/) using these commands

```bash
jekyll serve --watch
```

and see how Trio looks on your local machine.

<br/>
### Modify `_config.yml`

Take a look at `_config.yml` which contains the basic configuration for Trio. You will probably need to change `title`, `description`, `url`, `owner` and `disqus_shortname` fields.

You can disable a link to one of the social networks in the website footer by leaving `owner.<sharing-platform>` blank.

You can disable or enable post sharing buttons at the end of a post by modifying the `sharing` fields.

[Redcarpet](https://github.com/vmg/redcarpet) has been tested to work nicely with tables, footnotes and fenced code blocks. [Kramdown](http://kramdown.gettalong.org/) works as well but triple backticks are not supported yet for fenced code blocks. You can switch between `redcarpet` and `kramdown` in `_config.yml`.

<br/>
### Naming post Markdown files

The `permalink` field in `_config.yml` decides how the URL to posts are formed.
You can override the global `permalink` value in `_config.yml` by adding a `permalink` field in the `.md` file.

Trio is setup so that the URL to a post depends on the YAML front-matter field `date` in the Markdown file. Once you publish a post, the search engines link to that URL. You do not want to change the `date` field after you publish a post. If you make changes and want to notify readers of the changes, use the YAML field `update_date` instead in the `.md` file.