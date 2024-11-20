using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace DietGPT.ViewModel
{
    public class SavedPageVM : INotifyPropertyChanged
    {
        private string _displayedTExt="In Coming";

        public string DisplayedTExt
        {
            get { return _displayedTExt; }
            set
            {
                _displayedTExt = value;
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
