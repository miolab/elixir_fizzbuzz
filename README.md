# Elixir FizzBuzz variation

## 概要

- `Elixir`で __Fizz Buzz__ を、数パターン実行します。
- その他、関連する _tips_ をメモ書きします。
- 参考
  - [Elixir](https://elixir-lang.org/)（[ja](https://elixir-lang.jp/)）
  - [Fizz Buzz](https://ja.wikipedia.org/wiki/Fizz_Buzz)

## 想定表示結果

```terminal:Fizz Buzz
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
16
.
.
```

---





---

## 関連tips

### 1から15までの値を出力する

- `Enum` をつかう

  ```elixir:terminal(IEx)
  iex> 1..15 |> Enum.each(&(&1) |> IO.puts)
  1
  2
  3
  （省略）
  14
  15
  :ok
  ```

  - `1..15 |> Enum.each(fn n -> IO.puts n end)` でも可

- `for`でリストをつくる

  ```elixir:terminal(IEx)
  iex()> for n <- 1..15, do: IO.puts n
  1
  2
  3
  （省略）
  14
  15
  [:ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok]
  ```


### Range

[Hexdocs](https://hexdocs.pm/elixir/Range.html#content)

- __連続した整数のシーケンス__ を表す。

  ```elixir:terminal(IEx)
  iex(1)> range_sample = 1..3
  1..3

  iex(2)> i range_sample
  Term
    1..3
  Data type
    Range
  Description
    This is a struct. Structs are maps with a __struct__ key.
  Reference modules
    Range, Map
  Implemented protocols
    Enumerable, IEx.Info, Inspect

  iex(3)> first_num..last_num = range_sample
  1..3

  iex(4)> first_num
  1

  iex(5)> last_num
  3

  iex(6)> Enum.sum(range_sample)
  6

  iex(7)> Enum.count(range_sample)
  3

  iex(8)> range_reverse = 5..1
  5..1
  ```

---
---

(on going)

$ elixirc fizzbuzz_cond.ex 
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
16
17
fizz
19
buzz
fizz
22
23
fizz
buzz
26
fizz
28
29
fizzbuzz
31
32
fizz
34
buzz
fizz
37
38
fizz
buzz
41
fizz
43
44
fizzbuzz
46
47
fizz
49
buzz



iex(9)> c "fizzbuzz_cond.ex"
warning: redefining module FizzbuzzCond (current version loaded from Elixir.FizzbuzzCond.beam)
  fizzbuzz_cond.ex:1

1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
16
17
fizz
19
buzz
fizz
22
23
fizz
buzz
26
fizz
28
29
fizzbuzz
31
32
fizz
34
buzz
fizz
37
38
fizz
buzz
41
fizz
43
44
fizzbuzz
46
47
fizz
49
buzz
[FizzbuzzCond]
