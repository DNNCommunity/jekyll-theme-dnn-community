---
layout: page
---

# Github metadata

The site.github variable contains all sorts of github metadata from the project and organization where the documentation is hosted.

For instance, if you need the project name, you can use in any markdown file the following:

```
{% raw %}
{{ site.github.project_title }}
{% endraw %}
```

Most of the sidebar content located on the side bar of this page is populated from this metadata.

Here is the full list of the contents of the site.github collection for this site:

{% highlight json %}
    {{ site.github | json }}
{% endhighlight %}