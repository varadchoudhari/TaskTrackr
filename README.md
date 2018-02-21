# Task Trackr.

## Design Decisions

**1. Unique users**   
The application uses username to login and I have enforced uniqueness constraint so that multiple users with same username are not registered. 

**2. The Feed**  
The "/feed" page will show all the tasks created by all the users of this application. All the information about a task is shown in the feed. There is an ability to EDIT and DELETE the task right from the feed.

**3. Tasks can be DELETED or EDITED only by the owner and the assignee**   
Since the feed lists all the tasks across the system, to enforce security, I have given the authorization to DELETE and EDIT a task only to the owner of the task and the assignee.

**4. Task's TITLE, BODY, and ASSIGNEE name can be edited only by the owner of the task**   
If a task is assigned to a user, that user has no right to edit the task's title, body, and the assignee. Only the user who has created the task (the owner) has the right to edit the task's TITLE, BODY, and ASSIGNEE.

**5. Task's ASSIGNEE can only edit the COMPLETED status and TIME TAKEN**   
If an assignee clicks on the EDIT task button, he will be presented only with the fields to alter COMPLETED status and TIME TAKEN status.

**6. Enter TITLE, BODY, and ASSIGNEE while creating new task**   
While creating a new task, the user needs to enter only the task TITLE, BODY, and the ASSIGNEE name. Time taken field is set to 0 by default, and completed status is set to false by default. To edit time taken and completed status, the owner/assignee needs to EDIT the task.

**7. "Created Tasks" list**   
I have kept a separate index that shows a list of tasks created by the user that is currently logged in.

**8. "Assigned Tasks" list**   
I have kept a separate index that shows a list of tasks that are assigned to the user that is currently logged in.

**9. Redirecting to feed if already logged in**   
If a user is already logged in, then, on starting the application again in a different tab will redirect to that user's feed instead of loading the login page again.

## Running the application

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).
