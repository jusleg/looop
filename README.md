# Looop ♻  [![Gem Version](https://badge.fury.io/rb/looop.svg)](https://badge.fury.io/rb/looop) ![tests badge](https://img.shields.io/badge/Tests-none-brightgreen) ![loop badge](https://img.shields.io/badge/loop-for-brightgreen) [![license badge](https://img.shields.io/badge/License-MIT-blue)](https://github.com/jusleg/looop/blob/master/LICENSE)
Gone are the days where you convert your entire project to Java just to get the nice `for` loop. You can now build similar looking loops that run much slower than your average loop.

## Get started

`gem install looop`

`require 'looop'`

## How to use Looop

Looop was built with simplicity as its core value. For this reason, we only offer one method: `Loop.for` (`for` was already taken 😢).

Let's say you are [DJ Khaled](https://en.wikipedia.org/wiki/DJ_Khaled), a typical Java developer, and you wish to craft a tweet with your signature catchphrase "Another one." repeated **5** times

```ruby
# tweet.rb
require 'looop'

CATCHPHRASE = 'ANOTHER ONE.'
tweet = ''
Looop.for(index = 1, ->{index <= 5}, ->{index += 1}) do
  tweet.concat(CATCHPHRASE)
end

puts tweet

#=> ANOTHER ONE.ANOTHER ONE.ANOTHER ONE.ANOTHER ONE.ANOTHER ONE.
```

## I'm intrigued, what are these ->{} things?

I'm glad you asked, those are [Procs](https://ruby-doc.org/core-2.6/Proc.html) We'll call these procs while running the loop. This is one of the main reason that make looop a tad bit slower.

## Do U even Big-O ?!1

I guess, you can run nested loops if that's what you are asking.

```ruby
height = 5
Looop.for(i = 1, ->{ i <= height }, -> {i += 1}) do
  Looop.for(h = height - i, -> {h > 0 }, -> {h -= 1}) do
    print " "
  end
  Looop.for(j = 1, -> {j <= i}, -> {j += 1}) do
    print "* "
  end
  print "\n"
end
```

will print:

```console
    * 
   * * 
  * * * 
 * * * * 
* * * * * 
```

## Is this leetcode ready? Can I pass a technical interview with this?

> Is this leetcode ready?

It depends, you might be able to solve the base case, but I'd be surprise if you didn't time out during the evaluation of the secret cases.

> Can I pass a technical interview with this?

Meh, as long as they don't ask for it to be optimized for performance. 

**TL;DR:** don't.

## Is it fast

no

```ruby
Looop.for(i=0, -> {i<1000}, -> {i+=1}) do
  Looop.for(j=0, -> {j<1000}, -> {j+=1}) do
    #noop
  end
end
```

was 6 times slower than

```ruby
i = 0
while i<1000 do
  j = 0
  while j<1000 do
    #noop
    j += 1
  end
  i += 1
end
```

## I don't want to setup a small script to test it but I'm really interested to try it, can you make a repl.it?

Sure. [here](https://repl.it/@jusleg/looop).

## Copyright and License
Copyright (c) 2020, Famingo Inc.

This project is licensed under the [MIT License](https://github.com/jusleg/looop/blob/master/LICENSE).

## Do you have a soundcloud I can follow?

No, but you can follow me on [twitter](https://twitter.com/jusleg). I'll announce it there if I end up creating one.

