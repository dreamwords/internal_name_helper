Internal Name Helper for Active Model
====================

Pre-Load all records from database, then generate helper methods.

For example

There are 3 plans in the Plan model

internal_name
lite
standard
pro

The following methods will be generated

```ruby
Plan.lite
Plan.standard
Plan.pro
```

```ruby
plan.is_lite?
plan.is_not_lite?
plan.is_standard?
plan.is_not_standard?
plan.is_pro?
plan.is_not_pro?
```