---
title: "Code Poetry"
date: 2018-07-22T06:28:36+03:00
draft: false
---

I thought about calling this series of blog entries [Code Clinic](https://www.lynda.com/Java-tutorials/Getting-most-from-Code-Clinic/162454/182051-4.html)
like the folks at [Lynda.com](https://www.lynda.com/) but **Code Poetry** felt more catchy.. The idea is simple, every now and then, I will try to solve 
code challenges in different programming languages - my aim is to use the languages I am most familiar with but also explore weird or 
[esoteric](https://esolangs.org/wiki/Esoteric_programming_language) programming languages, 
the likes of [Brainfuck](https://esolangs.org/wiki/Brainfuck) or [Lazy K](https://esolangs.org/wiki/Lazy_K) :smiley:

I don't know whether it will be a daily, weekly, bi-weekly, or monthly thing, not sure. I love challenges so let's see how it goes.

Without futher ado, here is our first code challenge:point_down:

> Given an array of integers, return True if the sequence '1, 2, 3' appears somewhere in the array.

Example:   
 
(1) input: [1, 2, 3, 24, 1] => output: True   
(2) input [11, 1, 3, 1] => output: False  

##### Python:snake:

```python
def foo(array):
    seq = '1, 2, 3'
    return seq in ','.join(str(i) for i in array)
```

##### Javascript:heart:

```javascript
function foo(array){
    seq = '1, 2, 3';
    return array.join('').includes(seq.replace(/\s/g, '').replace(/,/g, ''));
}
```

##### PHP:elephant:

```php
function foo($arr){
    $seq = '1, 2, 3';
    return (strpos(join('', $arr), str_replace(',', '', $seq)) !== false)? 'True' : 'False';
}
```

