az servicebus namespace authorization-rule keys list \
    --resource-group learn-bbe9227a-24f6-4815-83cd-a0d5104bc20d \
    --name RootManageSharedAccessKey \
    --query primaryConnectionString \
    --output tsv \
    --namespace-name alesteamappContoso22


    az servicebus queue show \
    --resource-group learn-bbe9227a-24f6-4815-83cd-a0d5104bc20d \
    --name salesmessages \
    --query messageCount \
    --namespace-name alesteamappContoso22


    az servicebus queue show \
    --resource-group learn-bbe9227a-24f6-4815-83cd-a0d5104bc20d \
    --name salesmessages \
    --query messageCount \
    --namespace-name alesteamappContoso22


    az servicebus topic subscription show \
    --resource-group learn-b30351f7-793a-4352-991f-27e5a56eccb4 \
    --namespace-name <namespace-name> \
    --topic-name salesperformancemessages \
    --name Americas \
    --query messageCount

   ## Europe message count
    az servicebus topic subscription show \
    --resource-group learn-b30351f7-793a-4352-991f-27e5a56eccb4 \
    --namespace-name alesteamappContoso22 \
    --topic-name salesperformancemessages \
    --name EuropeAndAsia \
    --query messageCount


    az servicebus topic subscription show \
     --resource-group learn-b30351f7-793a-4352-991f-27e5a56eccb4 \
     --namespace-name alesteamappContoso22 \
     --topic-name salesperformancemessages \
     --name Americas \
     --query messageCount

     az 