# Ruby on Rails Assesment

Thank you for taking this assessment. We will have you work with a sample Pet Adoption Service.

We'll outline below the current features and ask you to implement some new information on our pets.

**The intent here is to get as far as you can within 2-4 hours. Please don't feel like you need to spend anymore time on it.**

There are no tests currently, you may choose MiniTest or Rspec and create tests as you develop the new features. We'll also ask you to use an external API to use one of our
pets and get more information.

We will run the tests locally on our machines. Please provide any documentation in the README you think might be needed for us to be able to follow the steps to do that.

## Steps

1. Clone this repo
2. Navigate to the project directory
3. Run migrations and seeds.

## Requirements

- Current features
  - Can create a pet:
    - Name
    - Kind
    - Breed
  - Can list pets
- New Pet Features:
  - From the list, click to view the pet
  - From the list, click to open a form to Edit the pet
  - Submitting the form should save the Pet
  - Add ability to give the pet a weight
- New Owner Feature:
  - Add a model for owners with basic information
  - Make sure an owner can have many pets
  - We don't need a FrontEnd for this, just be able to do it via the Rails Console
- New API Feature:
  - Use <https://dogapi.dog/>
  - given one of our pets Breeds, choose some more information we may want
    - How would you store the extra information
    - Make that happen

### **Evaluation Criteria**

1. **Code Quality:** Maintainable, well-structured code following Ruby and Rails best practices.
2. **Functionality:** The features you choose to finish should be functional.
3. **Testing:** Extensive test coverage ensures the application's reliability and stability.
4. **Documentation:** Clear and concise documentation covering setup instructions, usage guidelines, and any notable design decisions.
5. **Adherence to Best Practices:** Consistent use of Rails conventions, adherence to RESTful principles, and implementation of secure coding practices.

### Submission

For submiting your assesment, please commit your changes into a new branch and open a new pull request after pushing your changes.

After you submit your solution, we'll review it and talk it over with you.

### Instructions for review

- Run a bundle in order to add new Gems used for the test suite
  ```
  bundle
  ```

Gems added to support testing:

```
rspec
shoulda
FactoryBot
```

- run migrations to create changes in the database schema

## Testing

### Unit tests

Validations have been added to the models and tested via model unit tests

### Functional tests

capybara was used to test behavior of Edit Pet considering the new weight attribute

In order to run the tests use:

```
rspec
```

## API feature

It isn't very clear to me what's the goal of this feature so I didn't implement it. At first glance I would create a metadata column in the pets table with type json and store the info provided by the api in it. The requirements are not clear in sense that:

- should we build a service that hits the api on the fly and pull the information upon a given action?
- which data provided by the API are important to the system
- The API's endpoint `/breeds/id` needs an UUID for a given breed to pull the data related to that breed but the `/breeds` endpoint does not make easy search by breed in order to the get the proper UUID.

Given questions on requirements I decided to not implment the feature until further clarification.
