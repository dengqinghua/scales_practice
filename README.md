ScalesPractice
=============

Scalse In Guitar
----------------
```ruby
SCALES = {
  1 => {
    0  => %w(Mi 3),  # 0   - 3
    1  => %w(Fa 4),  # 1   | 4
    2  => %w(b5 #4), # 2   | b5
    3  => %w(Suo 5), # 3  o| 5
    4  => %w(b6 #5), # 4   | b6
    5  => %w(La 6),  # 5  o| 6
    6  => %w(b7 #6), # 6   | b7
    7  => %w(Xi 7),  # 7  o| 7
    8  => %w(Duo 1), # 8   | 1
    9  => %w(b2 #1), # 9  o| b2
    10 => %w(Rui 2), # 10  | 2
    11 => %w(b3 #2), # 11  | b3
    12 => %w(Mi 3),  # 12 o| 3
  },
  2 => {
    0  => %w(Xi 7),  # 0   - 7
    1  => %w(Duo 1), # 1   | 1
    2  => %w(b2 #1), # 2   | b2
    3  => %w(Rui 2), # 3  o| 2
    4  => %w(b3 #2), # 4   | b3
    5  => %w(Mi 3),  # 5  o| 3
    6  => %w(Fa 4),  # 6   | 4
    7  => %w(b5 #4), # 7  o| b5
    8  => %w(Suo 5), # 8   | 5
    9  => %w(b6 #5), # 9  o| b6
    10 => %w(La 6),  # 10  | 6
    11 => %w(b7 #6), # 11  | b7
    12 => %w(Xi 7),  # 12 o| 7
  },
  3 => {
    0  => %w(Suo 5), # 0   - 5
    1  => %w(b6 #5), # 1   | b6
    2  => %w(La 6),  # 2   | 6
    3  => %w(b7 #6), # 3  o| b7
    4  => %w(Xi 7),  # 4   | 7
    5  => %w(Duo 1), # 5  o| 1
    6  => %w(b2 #1), # 6   | b2
    7  => %w(Rui 2), # 7  o| 2
    8  => %w(b3 #2), # 8   | b3
    9  => %w(Mi 3),  # 9  o| 3
    10 => %w(Fa 4),  # 10  | 4
    11 => %w(b5 #4), # 11  | b5
    12 => %w(Suo 5), # 12 o| 5
  },
  4 => {
    0  => %w(Rui 2), # 0   - 2
    1  => %w(b3 #2), # 1   | b3
    2  => %w(Mi 3),  # 2   | 3
    3  => %w(Fa 4),  # 3  o| 4
    4  => %w(b5 #4), # 4   | b5
    5  => %w(Suo 5), # 5  o| 5
    6  => %w(b6 #5), # 6   | b6
    7  => %w(La 6),  # 7  o| 6
    8  => %w(b7 #6), # 8   | b7
    9  => %w(Xi 7),  # 9  o| 7
    10 => %w(Duo 1), # 10  | 1
    11 => %w(b2 #1), # 11  | b2
    12 => %w(Rui 2), # 12 o| 2
  },
  5 => {
    0  => %w(La 6),  # 0   - 6
    1  => %w(b7 #6), # 1   | b7
    2  => %w(Xi 7),  # 2   | 7
    3  => %w(Duo 1), # 3  o| 1
    4  => %w(b2 #1), # 4   | b2
    5  => %w(Rui 2), # 5  o| 2
    6  => %w(b3 #2), # 6   | b3
    7  => %w(Mi 3),  # 7  o| 3
    8  => %w(Fa 4),  # 8   | 4
    9  => %w(b5 #4), # 9  o| b5
    10 => %w(Suo 5), # 10  | 5
    11 => %w(b6 #5), # 11  | b6
    12 => %w(La 6),  # 12 o| 6
  },
  6 => {
    0  => %w(Mi 3),  # 0   - 3
    1  => %w(Fa 4),  # 1   | 4
    2  => %w(b5 #4), # 2   | b5
    3  => %w(Suo 5), # 3  o| 5
    4  => %w(b6 #5), # 4   | b6
    5  => %w(La 6),  # 5  o| 6
    6  => %w(b7 #6), # 6   | b7
    7  => %w(Xi 7),  # 7  o| 7
    8  => %w(Duo 1), # 8   | 1
    9  => %w(b2 #1), # 9  o| b2
    10 => %w(Rui 2), # 10  | 2
    11 => %w(b3 #2), # 11  | b3
    12 => %w(Mi 3),  # 12 o| 3
  },
}
```

Usage
-----

```shell
ruby practice.rb

# Ask which string you want to test
which string?

# The string is fixed, and the pin is randomed
The 1 string 9 pin is ?

# We should output the right tune of 1 string 9 pin
b2
```

OR

```shell
ruby practice.rb r

# The string is fixed, and the pin is randomed

The 1 string 9 pin is ?
b2

The 3 string 2 pin is ?
6
```
