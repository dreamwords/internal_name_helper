Internal Name Helper for Active Model
====================

Pre-Load all records from database, then generate some helper methods.

Since all records will be pre-loaded, and stored in the Rails instance. This is not suitable for large models. 

## Scenarios:

### Plan

There are 3 plans in the Plan model

internal_name
lite
standard
pro

Include the module in Model part

```ruby
	gem 'internal_name_helper'
```

```ruby
	class Plan < ActiveRecord::Base  
	  include InternalNameHelper::Methods
	end
```

The following methods will be generated

Class Methods

```ruby
	Plan.lite
	Plan.standard
	Plan.pro
```

Instance Methods

```ruby
	plan.is_lite?
	plan.is_not_lite?
	plan.is_standard?
	plan.is_not_standard?
	plan.is_pro?
	plan.is_not_pro?
```

Examples

```ruby
	@current_plan = Plan.lite
	if @current_plan.is_lite?
	end
```
