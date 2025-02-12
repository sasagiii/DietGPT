using CommunityToolkit.Mvvm.Input;
using DietGPT.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace DietGPT.ViewModel
{
    public class HomePageVM : INotifyPropertyChanged
    {
        private bool _displayResults = false;
        public bool DisplayResults
        {
            get { return _displayResults; }
            set
            {
                _displayResults = value;
                OnPropertyChanged();
            }
        }

        private string _recipeResult = "N/A";
        public string DisplayedText
        {
            get { return _recipeResult; }
            set
            {
                _recipeResult = value;
                OnPropertyChanged();
            }
        }

        private MicroMacroResults _microMacroResult = new MicroMacroResults();
        public MicroMacroResults MicroMacroResult
        {
            get { return _microMacroResult; }
            set
            {
                _microMacroResult = value;
                OnPropertyChanged();
            }
        }

        private string _recipe;
        
        public string Recipe
        {
            get { return _recipe; }
            set
            {
                _recipe = value;
                OnPropertyChanged();
            }
        }

        public HomePageVM()
        {
            // Initialize the command with the action to perform
            SendRecipe = new RelayCommand(OnButtonClicked);
        }
        public ICommand SendRecipe { get; }
        private async void OnButtonClicked()
        {
            var result = await Model.APICallerManager.getInstance().CallGPT(Recipe);

            DisplayedText = result;
            // since the api key is missing we will use an exemple object for the sake of the exemple...
             MicroMacroResult= MicroMacroResults.ExempleObject();

            DisplayResults =true;
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
