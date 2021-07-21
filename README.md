# Active Record Querying Methods Lab

## Learning Goals

- Create a table using Active Record
- Use Active Record's querying methods

## Introduction

In this lab, we'll be working in a TV show domain. We have a TV show model, the
`Show` class, and a `shows` table that you'll create in your database.

You'll be required not only to write a migration that creates a `shows` table
and gives the `Show` class certain attributes, but also to use Active Record's
querying methods.

### Active Record Querying Methods

Active Record makes it easy to ask our database for certain information and
datasets by providing a bunch of built-in methods for us. For example, we can
request the sum of all of the values of a particular column with the `#sum`
method:

```ruby
ClassName.sum(:column_name)
```

We can query our database based on certain conditions using the `#where` method.

Let's say we have a `Song` class and table and each song has a `number_of_stars`
rating attribute. We could query for songs with more than 3 stars like this:

```ruby
Song.where("number_of_stars > ?", 3)
```

Let's look at one more example: Let's say we want to query our database for the
lowest value in the `number_of_stars` column, i.e., the lowest rating that any
song has:

```ruby
Song.minimum(:number_of_stars)
```

You'll be writing methods that _rely on Active Record methods like `#minimum`,
`#sum`, and `#where`_ to get these tests passing.

Use the following resources to help you find the Active Record query methods
that will help you pass these tests:

- [Calculations](http://guides.rubyonrails.org/active_record_querying.html#calculations)
- [Ordering](http://guides.rubyonrails.org/active_record_querying.html#ordering)
- [Conditions](http://guides.rubyonrails.org/active_record_querying.html#conditions)

## Instructions

### Migration

Create a migration called `create_shows` using Rake.

In the migration file, write the migration code to create a `shows` table. The
table should have `name`, `network`, `day`, and `rating` columns. `name`,
`network`, and `day` have a datatype of string, and `rating` has a datatype of
integer.

Create a file, `show.rb`, in `app/models`. In this file, you will define a
`Show` class that inherits from `ActiveRecord::Base`.

Oops, we forgot a step in our first migration! Create a second migration to add
another column to our `shows` table. Use Rake to generate a
`add_season_to_shows` migration file. Write a migration to add a column,
`season`, to the `shows` table. The datatype of this column is string.

### Methods

You'll be defining the following methods as **class methods** on the `Show` class:

- `.highest_rating`: This method should return the highest value in the ratings
  column. **Hint**: if there is a `.minimum` Active Record method, might there be a
  `.maximum` method?

- `.most_popular_show`: Returns the **show** with the highest rating.

- `.lowest_rating`: Returns the **lowest value** in the ratings column.

- `.least_popular_show`: Returns the **show** with the lowest rating.

- `.ratings_sum`: Returns the sum of all of the ratings.

- `.popular_shows`: Returns a list of all of the shows that have a rating
  greater than 5. **Hint**: use the `.where` Active Record method.

- `.shows_by_alphabetical_order`: Returns an array of all of the shows sorted in
  alphabetical order according to their names. **Hint**: use the `.order` Active
  Record method.

## Resources

- [Calculations](http://guides.rubyonrails.org/active_record_querying.html#calculations)
- [Ordering](http://guides.rubyonrails.org/active_record_querying.html#ordering)
- [Conditions](http://guides.rubyonrails.org/active_record_querying.html#conditions)
