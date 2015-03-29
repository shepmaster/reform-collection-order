# Reform has-many collection ordering reproduction

By default, Reform seems to ignore the `id` attribute of items in a
has-many relationship when using `fields_for`. Instead, only the order
of items in the parameters is used, which may differ from the order of
items in the model.

## To reproduce

1. Clone this repo.
2. Run `rails s`.
3. Navigate to [http://127.0.0.1:3000/songs/new](http://127.0.0.1:3000/songs/new)
4. Click the first checkbox.
5. Submit the form.
6. Note that last checkbox is now selected.
