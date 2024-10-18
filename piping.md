---
title: Piping
---

- [Up to Concepts](concepts)

Piping is one of the most powerful constructs in UNIX style shells,
and the general concept of passing data through a composable
series of filters can significantly aid a range of designs.

While the larger concept may also include details such as the
management of the data itself, this will focus on the basic
notion of attaching filters together, often within the same
process space (though ideally agnostic of that).

Wider use of this concept remains actively explored across languages
and distributed systems such as looking to incorporate it into
[SQL](https://www.infoq.com/news/2024/09/google-sql-pipe-syntax/ "Google Proposes Adding Pipe Syntax to SQL - InfoQ"){atime="2024-10-13"}.

## [Bash](bash)

Bash provides the `|` to pass the stdout of a command to
the stdin of the next.
