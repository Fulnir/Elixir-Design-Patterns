# Elixir Design Patterns
[![Build Status](https://semaphoreci.com/api/v1/fulnir/elixir_design_patterns/branches/master/shields_badge.svg)](https://semaphoreci.com/fulnir/elixir_design_patterns) [![codecov](https://codecov.io/bb/fulnir/elixir_design_patterns/branch/master/graph/badge.svg)](https://codecov.io/bb/fulnir/elixir_design_patterns) [![Ebert](https://ebertapp.io/github/Fulnir/Elixir_Design_Pattern.svg)](https://ebertapp.io/github/Fulnir/Elixir_Design_Pattern) [![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.txt)

###  🚧

## Creational patterns

### Builder

See [https://en.wikipedia.org/wiki/Builder_pattern](https://en.wikipedia.org/wiki/Builder_pattern)

The simplest way to build a struct.

```elixir
car = Car.new("Blues Mobil")
# Or full struct
car = %Car{name: "Blue Ocean", color: :blue, color_doors: :cyan}
```

With a builder
```elixir
CarBuilder.build()
    |> name("Blues Mobil")
    |> color_doors(:black)
```

Or with the Director
```elixir
car = CarDirector.construct("Blues Mobil")
```

[Builder Test](test/builder_test.ex)

### Singleton

This is useful when exactly one object is needed to coordinate actions across the system. 

[Singleton Test](test/singleton_test.ex)


See [https://en.wikipedia.org/wiki/Singleton_pattern](https://en.wikipedia.org/wiki/Singleton_pattern)

# 🚧


[![Build Status](https://semaphoreci.com/api/v1/fulnir/elixir_design_patterns/branches/master/shields_badge.svg)](https://semaphoreci.com/fulnir/elixir_design_patterns) [![codecov](https://codecov.io/bb/fulnir/elixir_design_patterns/branch/master/graph/badge.svg)](https://codecov.io/bb/fulnir/elixir_design_patterns) [![Ebert](https://ebertapp.io/github/Fulnir/Elixir_Design_Pattern.svg)](https://ebertapp.io/github/Fulnir/Elixir_Design_Pattern)


Copyright © 2018 Edwin Bühler [![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.txt)