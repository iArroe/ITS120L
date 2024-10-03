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
           <title>Countries</title>
           <meta charset="UTF-8">
           <meta name="viewport" content="width=device-width, initial-scale=1.0">
       </head>
       <body>
       <h2>List of Users</h2>
        <div class="main">
               <a href="/">Back</a>
        </div>
       <table class="table">
           <tr>
               <th>Id</th>
               <th>Name</th>
               <th>Email</th>
               <th>Password</th>
               <th>UserType</th>
           </tr>
           <#list users as user>
               <tr>
                   <td>${user.userId}</td>
                   <td>${user.name}</td>
                   <td>${user.email}</td>
                   <td>${user.password}</td>
                   <td>${user.userType}</td>
               </tr>
           </#list>
       </table>
       </body>
       </html>