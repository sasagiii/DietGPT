using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace DietGPT.Model
{
    class APICallerManager
    {
        private static APICallerManager _instance = null;
        public static APICallerManager getInstance()
        {
            if(_instance==null)
                _instance = new APICallerManager();
            return _instance;
        }

        private HttpClient httpClient { get; set; }

        private string OPENAI_MODEL = "gpt-3.5-turbo";

        private string API_ENDPOINT = "https://api.openai.com/v1/chat/completions";


        private APICallerManager()
        {
            httpClient = new HttpClient();
        }


        public async Task<string> CallGPT(string recipe)
        {
            string apiKey = APIKeyManager.getInstance().ApiKey;

            // Update headers
            httpClient.DefaultRequestHeaders.Remove("Authorization");
            httpClient.DefaultRequestHeaders.Add("Authorization", $"Bearer {apiKey}");

            // Create the request payload
            var requestPayload = new
            {
                model = OPENAI_MODEL,
                messages = new[]
                {
                    new { role = "system", content = "You are a helpful assistant." },
                    new { role = "user", content = recipe }
                },
                max_tokens = 100
            };

            // Serialize the payload to JSON
            string jsonPayload = JsonSerializer.Serialize(requestPayload);

            // Send the POST request
            var content = new StringContent(jsonPayload, Encoding.UTF8, "application/json");
            HttpResponseMessage response = await httpClient.PostAsync(API_ENDPOINT, content);

            // Read and process the response
            if (response.IsSuccessStatusCode)
            {
                string responseContent = await response.Content.ReadAsStringAsync();
                var jsonResponse = JsonSerializer.Deserialize<JsonElement>(responseContent);

                // Extract and print the assistant's reply
                string reply = jsonResponse.GetProperty("choices")[0]
                                             .GetProperty("message")
                                             .GetProperty("content")
                                             .GetString();
                return reply;
            }
            else
            {
                string errorContent = await response.Content.ReadAsStringAsync();
                return errorContent;
            }
        }

    }
}
