<!DOCTYPE html>
<html>
<head>
    <title>Event Registration</title>
</head>
<body>
<h1>Add Event</h1> <!-- Title of the form -->

<form action="/addEvent" method="post"> <!-- Action points to your addEvent endpoint -->
    <div>
        <label for="title">Title</label>
        <input type="text" id="title" name="title" required> <!-- Title input -->
    </div> 

    <div>
        <label for="description">Description</label>
        <textarea id="description" name="description" required></textarea> <!-- Description textarea -->
    </div>

    <div>
        <label for="location">Location</label>
        <input type="text" id="location" name="location" required> <!-- Location input -->
    </div>

    <div>
        <label for="startDate">Start Date</label>
        <input type="date" id="startDate" name="startDate" required> <!-- Start date input -->
    </div>

    <div>
        <label for="endDate">End Date</label>
        <input type="date" id="endDate" name="endDate" required> <!-- End date input -->
    </div>

    <button type="submit">Add Event</button> <!-- Submit button -->
</form>
</body>
</html>
