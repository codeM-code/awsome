# go lang

## notable posts
(mostly inspired by GoLangWeekly)

- [Benefits of named return values](https://blog.minio.io/golang-internals-part-2-nice-benefits-of-named-return-values-1e95305c8687)

- [Simple techniques to optimise Go programs](https://stephen.sh/posts/quick-go-performance-improvements)
  - Use `sync.Pool` to re-use previously allocated objects
  - Avoid using structures containing pointers as map keys for large maps
  - Code generate marshalling code to avoid runtime reflection
  - Use `strings.Builder` to build up strings
  - Use strconv instead of fmt
  - Allocate capacity in make to avoid re-allocation
  - Use methods that allow you to pass byte slices
  - References - TODO: copy to here as they are gr8
