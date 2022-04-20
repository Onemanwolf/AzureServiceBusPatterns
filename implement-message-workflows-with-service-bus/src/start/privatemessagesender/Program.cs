﻿using System;
using System.Text;
using System.Threading.Tasks;
using Azure.Messaging.ServiceBus;

namespace privatemessagesender
{
    class Program
    {

        const string ServiceBusConnectionString = "";
        const string QueueName = "salesmessages";

        static void Main(string[] args)
        {
            Console.WriteLine("Sending a message to the Sales Messages queue...");

            SendSalesMessageAsync().GetAwaiter().GetResult();

            Console.WriteLine("Message was sent successfully.");
        }

        static async Task SendSalesMessageAsync()
        {
            // Create a Service Bus client here
            await using var client = new ServiceBusClient(ServiceBusConnectionString);

            // Create a sender here
            await using ServiceBusSender sender = client.CreateSender(QueueName);

            try
            {
                // Create and send a message here

                string messageBody = $"$10,000 order for bicycle parts from retailer Adventure Works.";
                var message = new ServiceBusMessage(messageBody);
                Console.WriteLine($"Sending message: {messageBody}");
                await sender.SendMessageAsync(message);
            }
            catch (Exception exception)
            {
                Console.WriteLine($"{DateTime.Now} :: Exception: {exception.Message}");
            }

            // Close the connection to the sender here

            finally
{
            // Calling DisposeAsync on client types is required to ensure that network
            // resources and other unmanaged objects are properly cleaned up.
            await sender.DisposeAsync();
            await client.DisposeAsync();
}
        }
    }
}
