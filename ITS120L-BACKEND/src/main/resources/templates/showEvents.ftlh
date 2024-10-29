<!DOCTYPE html>
       <html>
       <head>
            <style>
                .main {
                    font-weight: bold;
                    font-size: xx-large;
                    background-color: tomato;
                }

                .table{
                    color: blue;
                    background-color: yellow;
                }
            </style>
           <title>Events</title>
           <meta charset="UTF-8">
           <meta name="viewport" content="width=device-width, initial-scale=1.0">
       </head>
       <body>
       <h2>List of Events</h2>
        <div class="main">
               <a href="/">Back</a>
        </div>
       <table class="table">
           <tr>
               <th>Id</th>
               <th>Title</th>
               <th>Description</th>
               <th>Location</th>
               <th>Start Date</th>
               <th>End Date</th>
               <th>User</th>
           </tr>
           <#list events as event>
               <tr>
                   <td>${event.eventId}</td>
                   <td>${event.title}</td>
                   <td>${event.description}</td>
                   <td>${event.location}</td>
                   <td>${event.startDate?string("yyyy-MM-dd")}</td>
                   <td>${event.endDate?string("yyyy-MM-dd")}</td>
                   <td>${event.user.name}</td>
               </tr>
           </#list>
       </table>
       </body>
       </html>