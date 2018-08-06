API END POINT URL:

Register:-

http://localhost:8000/api/register

Parameter Key:
name
email
password
c_password

Example:

name:Meenu Tiwari
email:sonua@gmail.com
password:meenu@123
c_password:meenu@123

Login:-

http://localhost:8000/api/login

Parameter Key:
email
password

Example:

email:sonamtripathi567@gmail.com
password:testing

User Details:-

http://localhost:8000/api/get-details

Header Key:

Accept
Authorization

Example:-

Accept:application/json
Authorization:Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjAyYmZhZjg2NmRmYzFjNjYwN2IwMGRmNDBjMGUzZGRkNmMwNTFiMzM3NzkxYmMyNzBkNDM0NTA1MmQwNDE2YzkxOGQ4NmIwMTYzNGUyMTlmIn0.eyJhdWQiOiIxIiwianRpIjoiMDJiZmFmODY2ZGZjMWM2NjA3YjAwZGY0MGMwZTNkZGQ2YzA1MWIzMzc3OTFiYzI3MGQ0MzQ1MDUyZDA0MTZjOTE4ZDg2YjAxNjM0ZTIxOWYiLCJpYXQiOjE1MzM0NzEyMDEsIm5iZiI6MTUzMzQ3MTIwMSwiZXhwIjoxNTY1MDA3MjAxLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.N9poPkY0CwenX6n4tnbVgcZ5doVFhOdEOVdkg4UdrugAo6CUwrRfMe103vfr7aHpmchhOJZG0ZwieARYGno9_ee_5hi-nMfDtCFaD3iDHInMsBt8vAWGP0GrZYT4h_mzF6pq30SVS9D4PdEd3F0FWo9QjZKE0eSqCczlS2uarumO8xIfOzPvJoLFqWYUG65YLJkldAzCW5-tpxsxHOxkFeQvXkkg4iTICM_B2vf8XjMSivNxFjRXxuSGGKgh9C2lc77U8ZPCcV92BLHiJttmfyr_FH3Kmax699dibx3VpmKLOrQzzbP5CQAutuZj5MHna0nb5qMESW7fP0KF7oL2MVr2hSkahhKrh7KLACFtttQgxY6w6ssxqHf4sXpgSPoRQ1DlVsZD8i4bAqsKTZrIJuSTKAXye4g0x2q-rayKlAi9L9NnVxJ4jOClcG-JQ90A42Di4pPiztpI2gQWvpCNL0JPofdXU9q36Zj9bJJSYNXTVpeUa5p09_5RLhv8vVFdqazJPXTdV-05GrW2Jikc8a9SUnb4HHrYtSZ8a1Dc6c5KmW3nGxCZhzqEayWOikJ5Pm7r6CkNK8nMSjeUUct_jam0xGIR8RLhKHlky9dO9KaJN8GHS0-VCq6LIszyCh2hQKEfZ2uabkyQcBEomnzdWJ3vBuZFoGM11vwBmUYTDWU

http://localhost:8000/api/contacts

Method : GET

http://localhost:8000/api/contacts/

Method : POST (To Create Contact)

Example-

group_id:2
name:testonly
company:Test ABC
email:abc@gmail.com
phone:987654321
address:No address
user_id:1

http://localhost:8000/api/contacts/2

Method : PUT

Example - 

group_id:2
name:testonly
company:Test ABC
email:abc@gmail.com
phone:987654321
address:No address
user_id:1

http://localhost:8000/api/contacts/2

Method : DELET