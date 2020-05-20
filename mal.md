# mal - Make a Lisp

- Orga [go-yali](https://github.com/go-yali/)
- Repo [yali](https://github.com/go-yali/yali/)
- intended use: `import "gopkg/yali"`

## Inspired by
- https://media.ccc.de/v/c4.openchaos.2017.01.make-a-lisp

## Scope / Charta

Sharpen the sword - [7 Habits](7habits.md)

### learn
- sExpr
- GoCC / ebnf
- REPL
- Lisp / Scheme / Racket - TODO: What's the matter / Which witch is better?

### build
- YALI - Yet Another Lisp Interpreter
  incl. cli-cmd

### noNeed
- handmade parser/scanner/reader/tokenizer
- bells & whistles
- contribute [step0 ... stepA] to mal

## Resources

### Kirschen in Nachbars Garten
- the standard `text/scanner` package
- the standard `go` GoLang compiler
- the standard `text/template/parse` package
- the [Interpreter book](https://InterpreterBook.com/) - Monkey in Golang - 
  WAIIG, by [Thorsten Ball](http://thorstenball.com/)
- v:\DownLoad\.pdf\..9999.pdf\201n\Parser.pdf
- v:\DownLoad\.pdf\..9999.pdf\201n\parser-claessen.pdf

#### forked repos
[lang:go lisp](https://github.com/search?q=lang%3Ago+lisp)@github
- [lisp-go](https://github.com/picasso250/lisp-go)
  Lisp interpreter in Go-lang
  - made in PRoC
  - minimalistic & smart
  - `Closure`
  - funny `Env` struct `{ sMap; parent *Env}` with
    - four constructors
	- extend(old new) Env which returns {new.Clone(); parent = old} 

- [basilisk](https://github.com/cptaffe/basilisk)
  Implementation of my [lang](https://github.com/cptaffe/lang) library, lisp-like interpreter written in go.

- [Monkey](https://github.com/go-yali/interpreter-in-go/)

- [norvig_lisp](https://github.com/InvisibleTech/norvig_lisp)
  A Go lang implementation of Norvig's LISP subset originally done in Python.
  - import "github.com/davecgh/go-spew/spew"
  - forget-it

---
## sExpr Parser
- [] wraps `Vector`
- {} wraps `HashMap` - how?


### Step 3
- sMap, bind.Ings, Env, Envs


### Step N - Macros
- [@ Monkey](https://thorstenball.com/blog/2017/06/28/the-lost-chapter-a-macro-system-for-monkey/)
