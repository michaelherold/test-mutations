## Sample Mutations Illustrating a Bug

The casting to ``HashWithIndifferentAccess`` in
``mutations/hash_filter`` is causing issues with passing an
``OmniAuth::AuthHash`` to a command as a model.

## Steps to Reproduce

  1. Check out this repository

    ```sh
    git clone https://github.com/michaelherold/test-mutations.git
    ```

  2. Run ``bundler install``

  3. Run ``bundle exec rspec``

## Expected Result

All tests should pass.

## Actual Result

Only the generic success test passes, but the others do not.

## Diagnosis

The ``OmniAuth::AuthHash`` that is passed to the specific command is
cast to a ``HashWithIndifferentAccess`` as a byproduct of using that
type of hash.

This hash should remain an ``OmniAuth::AuthHash`` to match the
expected model type.
