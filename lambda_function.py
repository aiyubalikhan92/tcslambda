import json
import os
import sys

#print(os.environ['date'])

def lambda_handler(event, context):
    #print(event['date'])
    #thisInstanceID = event['date']
    #print("date: " + thisInstanceID)
    #os.environ.get("date")
    #os.environ.get('BUILD_ID')
    #qualifier = os.environ['QUALIFIER']
    #print(os.environ['qualifier'])
    print(os.environ['date'])
    #print(os.environ['AWS_LAMBDA_LOG_STREAM_NAME'])
    #print(os.environ)
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps('An Mean nasib!')
    }

# import boto3

# def lambda_handler(event, context):
#     aws_mag_con=boto3.session.Session(aws_access_key_id="AKIARIQWLXYMXHSQ3A4L",aws_secret_access_key="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")
#     ec2_con_re=aws_mag_con.resource(service_name="ec2",region_name="us-east-1")
#     ec2_con_cli=aws_mag_con.client(service_name="ec2",region_name="us-east-1")

#     f1={"Name": "instance-state-name", "Values":['running','pending']}

#     f2={"Name": "instance-type", "Values":['t2.micro']}

#     for each in ec2_con_re.instances.filter(Filters=[f1,f2]):
#         print(each)

# lambda_handler('test','demo')

# import numpy as np

# arr = np.array([1, 2, 3, 4, 5])

# def lambda_handler(i):
# 	return i+2

# applyall = np.vectorize(lambda_handler)
# res = applyall(arr)
# print(res)

