# SurrealDB

The SurrealDB driver for Julia (unofficial)

# Getting Started
First install [SurrealDB](https://surrealdb.com/install) if you haven't already.

## Installation
```julia
using Pkg
Pkg.add("SurrealDB")
```

## Usage

### notebooks
```julia
db = Surreal("ws://127.0.0.1:8000/rpc")
connect(db)
signin(db,user="root", pass="root")
use(db, namespace="test", database="test") |> display
create(db, thing="person",
        data = Dict("user"=> "me","pass"=> "safe","marketing"=> true,
            "tags"=> ["python", "documentation"])) |> display
update(db, thing="person",
        data = Dict("user"=> "you","pass"=> "very safe","marketing"=> true,
           "tags"=> ["python", "good"]))
query(db, sql="""update person content {
            user: 'mark1',
            pass: 'more_safe2',
            tags: ['awesome2']
        };"""
)
delete(db, thing="person")
close(db)
```
### script

```
```

[![Build Status](https://travis-ci.com/YuriMiyamori/SurrealDB.jl.svg?branch=main)](https://travis-ci.com/YuriMiyamori/SurrealDB.jl)
[![Coverage](https://codecov.io/gh/YuriMiyamori/SurrealDB.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/YuriMiyamori/SurrealDB.jl)
[![Coverage](https://coveralls.io/repos/github/YuriMiyamori/SurrealDB.jl/badge.svg?branch=main)](https://coveralls.io/github/YuriMiyamori/SurrealDB.jl?branch=main)