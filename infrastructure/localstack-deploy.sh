#!/bin/bash
# 稍微修改脚本逻辑

STACK_NAME="patient-management"
ENDPOINT="--endpoint-url=http://localhost:4566"

echo "Deleting old stack..."
aws $ENDPOINT cloudformation delete-stack --stack-name $STACK_NAME

echo "Deploying new stack..."
# 如果 deploy 失败，手动打印错误日志而不是直接报错退出
if ! aws $ENDPOINT cloudformation deploy \
    --stack-name $STACK_NAME \
    --template-file "./cdk.out/localstack.template.json"; then

    echo "❌ Deployment failed! Fetching events..."
    aws $ENDPOINT cloudformation describe-stack-events --stack-name $STACK_NAME \
        --query "StackEvents[?ResourceStatus=='CREATE_FAILED'].ResourceStatusReason" --output text
    exit 1
fi

echo "✅ Success! Fetching LoadBalancer DNS..."
aws $ENDPOINT elbv2 describe-load-balancers --query "LoadBalancers[0].DNSName" --output text