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
    public class MainWindowVM : INotifyPropertyChanged
    {
        private string _currentViewName;

        // Property to represent the name of the current view
        public string CurrentViewName
        {
            get => _currentViewName;
            set
            {
                if (_currentViewName != value)
                {
                    _currentViewName = value;
                    OnPropertyChanged();
                }
            }
        }

        private SettingsVM _settingsContext;
        private HomePageVM _homePageContext;
        private SavedPageVM _savedPageContext;
        private Object _currentDataContext;
        public Object CurrentDataContext
        {
            get => _currentDataContext;
            set
            {
                if (_currentDataContext != value)
                {
                    _currentDataContext = value;
                    CurrentViewName = value.GetType().Name;

                    OnPropertyChanged();
                }
            }
        }

        // Commands for View Switching
        public ICommand ShowHomePage { get; }
        public ICommand ShowSavedPage { get; }
        public ICommand ShowSettings { get; }

        public MainWindowVM()
        {
            _settingsContext=new SettingsVM();
            _savedPageContext = new SavedPageVM();
            _homePageContext = new HomePageVM();


            CurrentDataContext = _homePageContext;

            // Initialize commands to switch views
            ShowHomePage = new Command(ShowHomePageAction);
            ShowSavedPage = new Command(ShowSavedPageAction);
            ShowSettings = new Command(ShowSettingsAction);
        }

        void ShowHomePageAction()
        { CurrentDataContext = _homePageContext; }

        void ShowSavedPageAction()
        { CurrentDataContext = _savedPageContext; }

        void ShowSettingsAction()
        { CurrentDataContext = _settingsContext; }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
