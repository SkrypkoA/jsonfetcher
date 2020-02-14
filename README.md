

This test is separated in two main parts. On one hand, you will have to write a gem fetching data on one endpoint.
On the other hand, you will have to write a ruby script that will use that gem and format the data return by it.

## The gem

Write a one endpoint gem able to fetch data on http://jsonplaceholder.typicode.com/posts

Full documentation here: http://jsonplaceholder.typicode.com/

**Requirements:**
- Be able to get all the post
- Be able to filter by userId

## The script

Write a ruby script that output the data formatted like this to STDOUT:

```
##################
<userId> : <title>
<body>
##################
<userId> : <title>
<body>
##################
<userId> : <title>
<body>
##################
...
```

**Requirements:**
- use class(es)/module(s)/service(s) to interact with the gem
- the script can be run with:
  - `ruby main.rb` (all posts)
  - `ruby main.rb user_id: <user_id>` will filter to only return user_id 1 posts
  - `ruby main.rb output: <path>` will write the output to the path given


Run examples:
`ruby main.rb`
`ruby main.rb user_id: 1`
`ruby main.rb output: ./output.txt`
`ruby main.rb user_id: 1 ouput: ./output.txt`


BONUS:
1 - Write some RSpec specs
2 - Setup a Dockerfile, to:
  - build like this: `docker build . -t fetch_me_that`
  - run like that: `docker run -it fetch_me_that user_id: 1 outpout: ./output.txt`