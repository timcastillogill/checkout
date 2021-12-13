# Checkout Kata

This exercise is based on the [checkout kata][checkout-kata]. We have written
some code (lib/checkout.rb) with tests (spec/checkout_spec.rb) to model a few
common discount scenarios; the code is poorly written and new requirements have
come in.

## User Stories

As a software engineer <br>
So that I can quickly see what this method is doing <br>
I want to DRY and easily readable code <br>

As a user <br>
So that I can total items in a basket <br>
I want to see the total cost of items inputted without discounts <br>

As a user <br>
So that I can quickly see totals including discounts applied <br>
I want to see the total cost of items inputted with discounts <br>

## Installation

1. clone the repo
2. cd checkout
3. bundle install

### Rspec Tests

1. cd into the folder
2. Run rspec on the command line

## Given More Time

1. Added functionality to dynamically add/change deals to items
2. Added functionality to dynamically change prices of items
3. Create methods for CRUD capability in the price/deal database
