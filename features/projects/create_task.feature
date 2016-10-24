@api
Feature: Creating a task

  Rules:
    - Project id is required
    - Name of task is required
    - Description of task is required

  Scenario: Creating a task with all fields
    Given a project:
    | ID          | 54f8419c-3f22-4cba-b194-5f8b4727ccfd |
    | NAME        | Sample Project                       |
    | DESCRIPTION | A small sample project               |
    | STATE       | active                               |
    When I create a task with:
      | PROJECT_ID  | 54f8419c-3f22-4cba-b194-5f8b4727ccfd |
      | NAME        | Grocery Shopping                     |
      | DESCRIPTION | Whole Paycheck                       |
    Then the system has the tasks:
      | NAME             | DESCRIPTION    | PROJECT_ID                           |
      | Grocery Shopping | Whole Paycheck | 54f8419c-3f22-4cba-b194-5f8b4727ccfd |
