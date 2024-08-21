# ruby-dsa

## Sorting
Cogito ergo sum

### Tester
Initializing and setting data
```
foo = Tester.new
foo.to_s
=> "| 10 | 7 | 4 | 5 | 2 | 8 | 9 | 6 | 1 | 3 |"

foo.data = (1..10).to_a
foo.to_s
=> "| 10 | 7 | 4 | 5 | 2 | 8 | 9 | 6 | 1 | 3 |"

foo = Tester.new((1..10).to_a)
foo.to_s
=> "| 10 | 7 | 4 | 5 | 2 | 8 | 9 | 6 | 1 | 3 |"
```

Calling sorts
```
foo.bubble_sort
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
foo.data
=> [10, 7, 4, 5, 2, 8, 9, 6, 1, 3]
foo.bubble_sort != foo.data
```
