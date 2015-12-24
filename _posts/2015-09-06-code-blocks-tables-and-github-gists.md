---
layout: post
title: Code blocks, Tables and GitHub gists
date: 2015-09-06
logo: code
---

Examples to show how these basic components look in Trio.

<br/>
### Code blocks

Since Trio uses `redcarpet` instead of `kramdown`, we can use the triple backticks to define fenced code blocks. See the Markdown source of this file [here](https://github.com/ankur-gupta/trio/blob/master/_posts/2015-09-06-code-blocks-tables-and-github-gists.md).

Here is how code blocks look in Trio:

```css
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
```

You can also use liquid tag `highlight` which has the same effect:

{% highlight c %}
void main() {
    printf("Hello World!");
}
{% endhighlight %}

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

{% highlight css %}
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
{% endhighlight %}

{% highlight ruby %}
def what?
  42
end
{% endhighlight %}

You can also use the triple tilde ala `kramdown` which same the same effect:

~~~ ruby
def what?
  42
end
~~~

### Footnotes
Markdown footnotes[^1] work nicely in Trio. You need to make sure proper extensions are enabled in either `redcarpet` or `kramdown` parsers.

[^1]: <http://en.wikipedia.org/wiki/Syntax_highlighting>

<br/>
### Tables
This is how tables look like in Solo. See the Markdown source of this file [here](https://github.com/ankur-gupta/trio/blob/master/_posts/2015-09-06-code-blocks-tables-and-github-gists.md) for a demo of Markdown Tables. An excellent source to create tables in many formats (including Markdown) is [Tables Generator](http://www.tablesgenerator.com/).

| Left-Aligned  | Center Aligned  | Right Aligned |
| :------------ |:---------------:| -----:|
| col 3 is      | some wordy text | $1600 |
| col 2 is      | centered        |   $12 |
| zebra stripes | are neat        |    $1 |

<br/>
### Github Gists

This is how GitHub Gists look in Solo.

<script src="https://gist.github.com/ankur-gupta/582bfba52054b9e8d9b3.js"></script>


### Blockquotes

Trio supports lists, `<hr>`s, `<table>`s  and

> blockquotes

