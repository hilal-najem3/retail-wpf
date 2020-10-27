using Caliburn.Micro;
using retail_wpf.Events;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Windows;

namespace retail_wpf.ViewModels
{
    public class ShellViewModel : Conductor<object>
    {
        private string _username = "hilal@gmail.com";
        private string _password = "Hilal123";

        public ShellViewModel(IEventAggregator events)
        {
            StartApp();
        }

        private void StartApp()
        {
            Resize = "NoResize";
            LoginFromVisibility = "Visible";
            AppData = "Collapsed";
            WindowStyle = "None";

            string projectPath = Path.GetDirectoryName(Path.GetDirectoryName(Path.GetDirectoryName(Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase))));
            projectPath += "/Assets/Images/home.png";
            ImagePath = projectPath;
        }

        /*
         * Properies an Private Fields of ShellView
         */
        #region
        private string _windowStyle;

        public string WindowStyle
        {
            get { return _windowStyle; }
            set
            {
                _windowStyle = value;
                NotifyOfPropertyChange(() => WindowStyle);
            }
        }

        private string _appData;

        public string AppData
        {
            get { return _appData; }
            set 
            { 
                _appData = value;
                NotifyOfPropertyChange(() => AppData);
            }
        }

        private string _imagePath;

        public string ImagePath
        {
            get { return _imagePath; }
            set
            {
                _imagePath = value;
                NotifyOfPropertyChange(() => ImagePath);
            }
        }

        private string _loginFromVisibility;

        public string LoginFromVisibility
        {
            get { return _loginFromVisibility; }
            set
            {
                _loginFromVisibility = value;
                NotifyOfPropertyChange(() => LoginFromVisibility);
            }
        }

        private string _resize;

        public string Resize
        {
            get { return _resize; }
            set
            {
                _resize = value;
                NotifyOfPropertyChange(() => Resize);
            }
        }

        private string _windowState;

        public string WindowState
        {
            get { return _windowState; }
            set
            {
                _windowState = value;
                NotifyOfPropertyChange(() => WindowState);
            }
        }
        #endregion

        /*
         * Properies an Private Fields of Login
         */
        #region
        private string _error_message;

        public string ErrorMessage
        {
            get { return _error_message; }
            set
            {
                _error_message = value;
                NotifyOfPropertyChange(() => ErrorMessage);
                NotifyOfPropertyChange(() => IsErrorVisible);
            }
        }

        public bool IsErrorVisible
        {
            get
            {
                bool output = false;

                if (ErrorMessage?.Length > 0)
                {
                    output = true;
                }
                return output;
            }
        }

        public string Password
        {
            get { return _password; }
            set
            {
                _password = value;
                NotifyOfPropertyChange(() => Password);
                NotifyOfPropertyChange(() => CanLogIn);
            }
        }

        public string Username
        {
            get { return _username; }
            set
            {
                _username = value;
                NotifyOfPropertyChange(() => Username);
                NotifyOfPropertyChange(() => CanLogIn);
            }
        }

        public bool CanLogIn
        {
            get
            {
                bool output = false;

                if (Username?.Length > 0 && Password?.Length > 0)
                {
                    output = true;
                }

                return output;
            }
        }
        #endregion

        /*
         * Properties of Menue
         */
        #region
        /*
         * Login Logout Getters 
         */
        #region
        public bool IsLoggedIn
        {
            get
            {
                bool output = false;

                /*if (string.IsNullOrWhiteSpace(user.Token) == false)
                {
                    output = true;
                }*/

                return output;
            }
        }

        public bool NotLoggedIn
        {
            get
            {
                bool output = true;

                /*if (string.IsNullOrWhiteSpace(user.Token) == false)
                {
                    output = false;
                }*/

                return output;
            }
        }
        #endregion

        public bool AdministartionBtn
        {
            get
            {
                bool output = false;

                if (IsLoggedIn)
                {
                    // output = authority.CheckAuthority("UserManagement");
                }

                return output;
            }
        }
        #endregion

        /*
         * Main Functions
         */
        #region
        public void HandleAfterLogin()
        {
            Resize = "CanResize";
            WindowState = "Maximized";
            LoginFromVisibility = "Collapsed";
            AppData = "Visible";
            WindowStyle = "SingleBorderWindow";
            /*ActivateItem(_salesVM);*/
            NotifyOfPropertyChange(() => IsLoggedIn);
            NotifyOfPropertyChange(() => AdministartionBtn);
            NotifyOfPropertyChange(() => NotLoggedIn);
        }

        public void ExitApplication()
        {
            TryClose();
        }

        public void LogIn()
        {
            try
            {
                // var result = authenticationEndpoint.Login(Username, Password);
                ErrorMessage = string.Empty;

                HandleAfterLogin();
            }
            catch (Exception ex)
            {
                ErrorMessage = ex.Message;
            }
        }
        #endregion
    }
}
