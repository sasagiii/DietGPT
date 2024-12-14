using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DietGPT.Model
{
    class APIKeyManager
    {
        private static APIKeyManager _instance = null;
        public static APIKeyManager getInstance()
        {
            if(_instance==null)
                _instance = new APIKeyManager();
            return _instance;
        }

        private string _apiKey = "";
        public string ApiKey
        {
            get
            {
                return _apiKey;
            }
            set
            {
                _apiKey = value;
                Preferences.Set("ApiKey", ApiKey);
            }
        }


        public APIKeyManager()
        {
            ApiKey = Preferences.Get("ApiKey", "");
        }

    }
}
