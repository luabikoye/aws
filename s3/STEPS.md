🚀 Steps to Deploy a Static Website Using Amazon S3
You can host a static website (HTML, CSS, JavaScript) on Amazon S3 without needing a web server. Follow these steps:

🛠️ Step 1: Create an S3 Bucket
1️⃣ Go to the AWS S3 Console → S3 Console
2️⃣ Click "Create Bucket"
3️⃣ Enter a Bucket Name (e.g., wedder-burn-website)
Bucket name must be unique globally
Choose a region (e.g., us-east-1)
4️⃣ Uncheck "Block all public access" (because a public website needs public access)
5️⃣ Confirm public access settings → Check "I acknowledge..."
6️⃣ Click Create Bucket

📂 Step 2: Upload Your Website Files
1️⃣ Click on your S3 bucket (e.g., my-static-website)
2️⃣ Click Upload
3️⃣ Select your website files (HTML, CSS, JavaScript)
4️⃣ Click Upload

🌍 Step 3: Enable Static Website Hosting
1️⃣ Go to Properties tab
2️⃣ Scroll down to Static website hosting
3️⃣ Select "Enable"
4️⃣ Choose "Host a static website"
5️⃣ Set the Index document to index.html
6️⃣ (Optional) Set the Error document (e.g., 404.html)
7️⃣ Copy the Bucket Website Endpoint URL (e.g., http://my-static-website.s3-website-us-east-1.amazonaws.com)
8️⃣ Click Save Changes

🔓 Step 4: Make Files Public
By default, S3 objects are private. You need to update permissions.
Option 1: Modify Each File
1️⃣ Go to the Objects tab in S3
2️⃣ Select all files (e.g., index.html, style.css, etc.)
3️⃣ Click Actions → Make Public
Option 2: Update Bucket Policy (Recommended)
1️⃣ Go to the Permissions tab
2️⃣ Click Bucket Policy
3️⃣ Copy & paste this policy (Replace my-static-website with your bucket name):

{
"Version": "2012-10-17",
"Statement": [
{
"Effect": "Allow",
"Principal": "*",
"Action": "s3:GetObject",
"Resource": "arn:aws:s3:::wedder-burn-website/*"
}
]
}

4️⃣ Click Save
