import json
import os
import boto3

dynamo = boto3.client('dynamodb')
table_name = os.environ['DYNAMO_TABLE']

def lambda_handler(event, context):
    # S3 event structure
    # https://docs.aws.amazon.com/lambda/latest/dg/with-s3.html
    for record in event['Records']:
        filename = record['s3']['object']['key']
        dynamo.put_item(
            TableName=table_name,
            Item={
                'filename': {'S': filename}
            }
        )
    return {'statusCode': 200, 'body': json.dumps('OK')}
