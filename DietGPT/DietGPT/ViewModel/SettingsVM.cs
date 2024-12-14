using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace DietGPT.ViewModel
{
    public class SettingsVM : INotifyPropertyChanged
    {
        private string _displayedTExt="Open AI API Key";
        public string DisplayedTExt
        {
            get { return _displayedTExt; }
            set
            {
                _displayedTExt = value;
                OnPropertyChanged();
            }
        }

        private string _api = "Open AI API Key";
        public string APIKey
        {
            get { 
                return Model.APIKeyManager.getInstance().ApiKey;
            }
            set
            {
                Model.APIKeyManager.getInstance().ApiKey = value;
                OnPropertyChanged();
            }
        }


        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
