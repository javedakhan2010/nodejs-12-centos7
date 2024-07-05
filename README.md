# nodejs-12-centos7

Steps to Push to GitHub and Deploy to OpenShift
Create a new repository on GitHub.
Clone the repository to your local machine.
Add the files to the repository and commit them.
Push the code to GitHub.

git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/yourusername/s2i-nodejs-app.git
git push -u origin master


Create the OpenShift application using the oc new-app command.
oc new-app https://github.com/yourusername/s2i-nodejs-app.git


Expose the service to access it externally.
oc expose svc/s2i-nodejs-app



============================
s2i-nodejs-app/
├── .s2i/
│   └── environment
├── src/
│   └── server.js
└── Dockerfile