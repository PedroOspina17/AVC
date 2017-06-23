using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace AVC.ABase.Business.ViewModel
{
    public class BaseViewModels : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public void OnPropertyChange([CallerMemberName] string PropertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
            }
        }


        protected Model.ABaseEntities db;
        public BaseViewModels(Model.ABaseEntities context)
        {
            db = context;
        }



        public void Refresh()
        {
            PropertyInfo[] properties = this.GetType().GetProperties();
            foreach (PropertyInfo property in properties)
            {
                OnPropertyChange(property.Name);
            }
        }
    }
}
