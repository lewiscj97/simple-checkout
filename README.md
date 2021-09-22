# simple-checkout

Link to challenge: https://github.com/makersacademy/skills-workshops/blob/main/practicals/testing/test_drive_multiple_objects.md

This project was completed as part of the Makers bootcamp (Week 3: TDD). It was built using the RED-GREEN-REFACTOR TDD process.

## Setup

1. Clone the repo
2. Run `bundle` to install the Rspec gem

## Usage

Items are created using the `Item` class:

```ruby
# Item.new(price)
# e.g.
> banana = Item.new(1.50)
```

The checkout class is used to scan items and return the total of all items scanned:

```ruby
> checkout = Checkout.new

> banana = Item.new(0.80)
> checkout.scan_item(banana)

> checkout.total
=> "Total: £0.80"
```

## Notes

The prices are formatted using the `price_formatter` module, which takes a value and returns it in the expected `£xx.xx` format.