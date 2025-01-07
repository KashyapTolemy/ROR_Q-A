# StackOverflow Clone with API-based Upvoting

This is a simple application inspired by StackOverflow, built using Ruby on Rails. The app provides APIs for creating questions, adding answers, upvoting both questions and answers, and retrieving answers for specific questions with upvote counts.

## Features
- **Create Questions**: Allows users to create new questions.
- **Create Answers**: Users can post answers for specific questions.
- **Upvote Questions and Answers**: Users can upvote both questions and answers.
- **Get Answers for a Question**: Retrieves all answers with their upvote counts for a given question.

## Technologies Used
- **Ruby on Rails**: The backend framework for building APIs and managing the database.
- **PostgreSQL**: Relational database for storing questions, answers, and votes.
- **ActiveRecord**: ORM for database interactions.

## Installation

To set up and run this project on your local machine, follow the steps below.

### Prerequisites
- Ruby 3.x
- Rails 8.0.x
- PostgreSQL installed locally

### Steps to Install
1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/stackoverflow-clone.git
   cd stackoverflow-clone
2. Install the required dependencies:
   ```bash
   bundle install
3. Set up the database:
   ```bash
   rails db:create db:migrate
4. Start the server:
   ```bash
   rails server
5. The app should now be running on [http://localhost:3000](http://localhost:3000)

## Endpoints

Here are the main API endpoints of the project:

### Create a Question
`POST /questions`

**Payload:**

```json
{
  "title": "Question Title",
  "content": "Question Body"
}
```
### Create an answer
`POST /questions/:question_id/answers`

**Payload:**

```json
{
  "content": "Answer Content",
  "upvotes": 0
}
```
### Upvote a Question
`POST /question/:id/upvote`

### Upvote an Answer
`POST /answers/:id/upvote`

### Get Answers for a Question
`GET /questions/:id/answers`

### Contributing

Feel free to fork the repository and submit pull requests if you have any improvements or bug fixes.
