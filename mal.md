# mal - Make a Lisp

- Orga [go-yali](https://github.com/go-yali/)
- Repo [yali](https://github.com/go-yali/yali/)
- intended use: `import "gopkg.io/yali"`

## Inspired by

- https://media.ccc.de/v/c4.openchaos.2017.01.make-a-lisp

## Scope / Charta

Sharpen the sword @ [7 Habits](7habits.md)

### learn

- sExpr
- GoCC / ebnf
  Tom [25.05.20 16:57]
  Ich finde GoCC sehr spannend, kann mich gerade aber nicht entscheiden, ob ich den Tokenizer und Parser selber schreiben m�chte, der alte Tom h�tte alles selber gebaut, der neue Tom m�chte gute und ggf. neue Herangehensweise kennenlernen
- REPL
  - [Putting Eval In Go](https://thorstenball.com/blog/2016/11/16/putting-eval-in-go/) by [Thorsten Ball](https://thorstenball.com/)
- Lisp /
  - [Scheme]()
  - [Racket](http://www.racket-lang.org/)

### build

- YALI - Yet Another Lisp Interpreter
  incl. cli-cmd

### noNeed

- handmade parser/scanner/reader/tokenizer
- bells & whistles
- contribute [step0 ... stepA] to mal

- https://en.wikipedia.org/wiki/History_of_compiler_construction

## Resources

### Kirschen in Nachbars Garten

- the standard `bufio.Scanner`
- the standard `text/scanner` package
- the standard `go` GoLang compiler
- the standard `text/template/parse` package
- the [Interpreter book](https://InterpreterBook.com/) - Monkey in Golang -
  WAIIG, by [Thorsten Ball](http://thorstenball.com/)
- v:\DownLoad\.pdf\..9999.pdf\201n\Parser.pdf
- v:\DownLoad\.pdf\..9999.pdf\201n\parser-claessen.pdf
- the [The Tengo Language](https://github.com/d5/tengo/) - Tengo in Golang -

#### forked repos

[lang:go lisp](https://github.com/search?q=lang%3Ago+lisp)@github

- [lisp-go](https://github.com/picasso250/lisp-go)
  Lisp interpreter in Go-lang

  - made in PRoC
  - minimalistic & smart
  - `Closure`
  - funny `Env` struct `{ sMap; parent *Env}` with
    - four constructors - extend(old new) Env which returns {new.Clone(); parent = old}

- [basilisk](https://github.com/cptaffe/basilisk)
  Implementation of my [lang](https://github.com/cptaffe/lang) library, lisp-like interpreter written in go.

- [Monkey](https://github.com/go-yali/interpreter-in-go/)

#### further repos

- [norvig_lisp](https://github.com/InvisibleTech/norvig_lisp)
  A Go lang implementation of Norvig's LISP subset originally done in Python.
  - import "github.com/davecgh/go-spew/spew"
  - forget-it

---
# Packages / Directory structure

## package printer
// Package printer implements printing of AST nodes.

// No need, I think.
//
// I'd prefer to have WriteTo(io.Writer) and String()
// as sExpr-Methods, working recursively.

---

## sExpr Parser

- [] wraps `Vector`
- {} wraps `HashMap` - how?

## Make a Lisp

- [cheatsheet](http://kanaka.github.io/mal/cheatsheet.html)

### Step 0 - RePl

- This has **nothing** to do with any LISP in particular.
- This is just about having a CLI in the host language,
  and some first feeling of the r-e-p-loop.

### Step 1 - R.P. - Read Print

This needs some draft implementation of the S-Expression, which constitutes the.AST.

READ also needs tokens, a lexer (with scanner) as tokenizer, and a parser.
This may be achieved within minutes by using GoCC, or within monthes by asking Young-Tom for a handwritten implementation.

### Step 2 - REP. - Eval

### Step 3 - Env

- sMap, bind.Ings, Env, Envs,
  - go/types/scope.go
  - GoLangsam/kanren/internal/�/bind/smap.gp & ings.go
  - mal/impls/go/src/env/env.go
  - ...

### Step 4 - if fn do

### Step 5 - TCO

### Step 6 - File

### Step 7 - Quote

### Step 8 - Macros

- [@ Monkey](https://thorstenball.com/blog/2017/06/28/the-lost-chapter-a-macro-system-for-monkey/)

---

![http://groups.csail.mit.edu/mac/projects/scheme/schlogo-250.png](http://groups.csail.mit.edu/mac/projects/scheme/schlogo-250.png)

### [Scheme @ MIT](http://groups.csail.mit.edu/mac/projects/scheme/index.html)

Scheme is a statically scoped and properly tail-recursive dialect of the Lisp programming language invented by Guy Lewis Steele Jr. and Gerald Jay Sussman. It was designed to have an exceptionally clear and simple semantics and few different ways to form expressions. A wide variety of programming paradigms, including imperative, functional, and message passing styles, find convenient expression in Scheme.

Scheme was one of the first programming languages to incorporate first class procedures as in the lambda calculus, thereby proving the usefulness of static scope rules and block structure in a dynamically typed language. Scheme was the first major dialect of Lisp to distinguish procedures from lambda expressions and symbols, to use a single lexical environment for all variables, and to evaluate the operator position of a procedure call in the same way as an operand position. By relying entirely on procedure calls to express iteration, Scheme emphasized the fact that tail-recursive procedure calls are essentially goto's that pass arguments. Scheme was the first widely used programming language to embrace first class escape procedures, from which all previously known sequential control structures can be synthesized. More recently, building upon the design of generic arithmetic in Common Lisp, Scheme introduced the concept of exact and inexact numbers. Scheme is also the first programming language to support hygienic macros, which permit the syntax of a block-structured language to be extended reliably.

---

### [SICP](https://mitpress.mit.edu/sites/default/files/sicp/index.html)

- [SICP](https://mitpress.mit.edu/books/structure-and-interpretation-computer-programs)
- [SICP](https://mitpress.mit.edu/sicp)
