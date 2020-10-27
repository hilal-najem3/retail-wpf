using Caliburn.Micro;
using retail_wpf.Events;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Windows;

namespace retail_wpf.ViewModels
{
    public class ShellViewModel : Conductor<object>, IHandle<LogOnEvent>
    {
        public string ImagePath { get; set; }

        public ShellViewModel()
        {
            StartApp();
            
        }

        private void StartApp()
        {
            string projectPath = Path.GetDirectoryName(Path.GetDirectoryName(Path.GetDirectoryName(Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase))));
            projectPath += "/Assets/Images/home.png";
            ImagePath = projectPath;


        }

        public void Handle(LogOnEvent message)
        {
            throw new NotImplementedException();
        }
    }
}
