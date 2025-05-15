import json
import boto3

def lambda_handler(event, context):
    # Extract bucket name and file name
    bucket = event['Records'][0]['s3']['bucket']['name']
    key = event['Records'][0]['s3']['object']['key']

    # Define email details
    SENDER = "your-verified-email@example.com"
    RECIPIENT = "your-verified-email@example.com"
    SUBJECT = "New File Uploaded to S3"
    BODY_TEXT = f"A new file '{key}' was uploaded to bucket '{bucket}'."
    
    # Send email via SES
    ses = boto3.client('ses')
    response = ses.send_email(
        Source=SENDER,
        Destination={'ToAddresses': [RECIPIENT]},
        Message={
            'Subject': {'Data': SUBJECT},
            'Body': {'Text': {'Data': BODY_TEXT}}
        }
    )
    
    print("Email sent! Message ID:", response['MessageId'])
    return {'statusCode': 200, 'body': json.dumps('Email sent!')}
