---
title: Create a blog with Hexo
date: 2020-02-23
tags:
- blogging
- hexo
---
This is a series of posts on how I created my blog with [Hexo](https://hexo.io) and hosted it using [ZEIT](https://zeit.co/)

- {% post_link create-blog-hexo %}

## Introduction
So you want to start writing a simple blog? There are many options available, including: 

- Wordpress or similar (content management system)
- Hosted service like Squarespace or Medium
- Static site generator

[Hexo](https://hexo.io/) is a [static site generator](https://davidwalsh.name/introduction-static-site-generators) that allows you to create a blog by simply writing your posts as [Markdown](https://en.wikipedia.org/wiki/Markdown) instead of HTML. The approach makes your blog much easier to write and host.

## Why a Static Site Generator?
If your blog is going to be somewhat simple, and you are familiar with the command line and yaml configuration, then a static site generator will suit you well. 

Static site generators allow you to write your posts in Markdown. The site then gets built, which transforms your Markdown files into HTML. The end result is a folder with HTML and JavaScript files. This folder can simply be copied to any web server, which means you can host your site with a number of different providers, for much cheaper then a Wordpress site (because Wordpress uses a SQL database), with far fewer security concerns.

## Why Hexo?
There are a lot of static site generators out there, many used by very large companies very successfully. I wanted something that was simple to use out of the box. [Jekyll](https://jekyllrb.com/) is one of the most popular, and a great option. The problem is that it runs on the Ruby programming lanaguage, and the experience on Windows can be imperfect.

Hexo is another popular option, which runs on Node.js (cross-platform & familiar to a lot of developers). The default template for Hexo gets you up and running with full blog capabilities, which I liked.

## Setup & Installation

### Setup the site

The instructions on the [official site](https://hexo.io/docs/) are quite straightforward:

- Install Node.js and git
- Install the Hexo CLI tool:

```
npm install -g hexo-cli
```

- Create a new hexo project:

```
hexo init MyNewBlog
cd MyNewBlog
npm install
```

You will now have a folder called MyNewBlog that contains a few files and folders. The important ones are:

- `_config.yml` - Settings for the site
- `source/_posts` folder - where your posts go. This will contain an example post.

### Configure the site

Now to edit the _config.yml file to personalise the site. I changed all the settings in the `# Site` section and `url`.

### Running the site
To run your site, run

```
hexo server
```

Open your browser at the displayed address, should be http://localhost:4000

Now make a change to the example post, save, then go back to your browser and refresh and you should see your changes.

To improve the experience when writing posts, stop the Hexo server and install the [BrowserSync plugin](https://github.com/hexojs/hexo-browsersync):

```
npm install hexo-browsersync --save
```

Restart hexo with `hexo server`. Now when you make changes and save a file, your browser will automatically refresh. This will make writing posts much easier.