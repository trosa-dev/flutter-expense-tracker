# Flutter Expense Tracker

This is a simple app for tracking and managing personal expenses, intended for Flutter study.

## Features

- Add new expenses by providing title, amount, date, and category
- Remove expenses
- Display expenses in a list
- Show a graph with expenses grouped by category
- Light and dark themes based on the system mode

## Screens

The app has a main screen with two views:

### Portrait

![App Screen 1](https://i.ibb.co/31SMVxq/screen1.png)

### Landscape

![App Screen 2](https://i.ibb.co/6FNxc0c/screen2.png)

## Models

The app uses the following models:

- **Expense**: Represents an expense
- **Category**: Enumeration with expense categories
- **ExpenseBucket**: Represents a grouping of expenses by category

## Widgets

The main widgets used are:

- **Expenses**: Manages the list of expenses and the app's state
- **ExpensesList**: Displays the list of expenses
- **ExpenseItem**: Widget for each row in the list
- **Chart**: Displays the expense graph
- **ChartBar**: Each bar in the graph
- **NewExpense**: Modal screen for adding a new expense

Feel free to use and modify it as you wish in your own projects!
