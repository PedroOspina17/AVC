using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Business.ViewModel
{

    public class CustomerViewModel : INotifyPropertyChanged
    {
        private Model.Person ModelPerson = new Model.Person();
        private Model.Customer ModelCustomer = new Model.Customer();
        private Model.PosEntities db = new Model.PosEntities();

        public CustomerViewModel()
        {

        }
        public CustomerViewModel(Model.Customer oCustomer)
        {
            this.ModelCustomer = oCustomer;
            this.ModelPerson = db.Person.Find(oCustomer.PersonId);
        }

        public Model.DocumentType DocumentType
        {
            get { return ModelPerson.DocumentType; }
            set { ModelPerson.DocumentType = value; OnPropertyChange(); }
        }

        public string Document
        {
            get { return ModelPerson.DocumentNumber; }
            set { ModelPerson.DocumentNumber = value; OnPropertyChange(); }
        }

        public string Name
        {
            get
            {
                return ModelPerson.FirstName;
            }
            set
            {
                ModelPerson.FirstName = value; OnPropertyChange(); 
            }
        }

        public string LastName
        {
            get
            {
                return ModelPerson.LastName;
            }
            set
            {
                ModelPerson.LastName = value; OnPropertyChange(); 
            }
        }

        public string FullName
        {
            get
            {
                return ModelPerson.FirstName + " " + ModelPerson.LastName;
            }

        }


        public DateTime DateBird
        {
            get
            {
                return ModelPerson.DateBird;
            }
            set
            {
                ModelPerson.DateBird = value; OnPropertyChange(); 
            }
        }

        public String Gender
        {
            get
            {
                return ModelPerson.Gender == "M" ? "Masculino" : "Femenino";
            }
            set
            {
                ModelPerson.Gender = value == "Masculino" ? "M" : "F";
            }
        }

        public String Address
        {
            get
            {
                return ModelPerson.Address;
            }
            set
            {
                ModelPerson.Address = value; OnPropertyChange(); 
            }
        }
        public String PhoneNumber
        {
            get
            {
                return ModelPerson.PhoneNumber;
            }
            set
            {
                ModelPerson.PhoneNumber = value; OnPropertyChange(); 
            }
        }
        public String CellphoneNumber
        {
            get
            {
                return ModelPerson.CellphoneNumber;
            }
            set
            {
                ModelPerson.CellphoneNumber = value; OnPropertyChange(); 
            }
        }

        public bool Active
        {
            get
            {
                return ModelCustomer.Active;
            }
            set
            {
                ModelCustomer.Active = value; OnPropertyChange(); 
            }
        }

        public List<Model.DocumentType> DocumentTypes
        {
            get { return db.DocumentType.ToList(); }
        }



        //public List<CustomerViewModel> GetAll()
        public List<CustomerViewModel> CustomerList
        {
            get
            {
                try
                {
                    List<Model.Customer> Customers = (from p in db.Person
                                                      join c in db.Customer on p.Id equals c.PersonId
                                                      select c).ToList();

                    List<CustomerViewModel> CustomerViewModels = new List<CustomerViewModel>();
                    foreach (Model.Customer oCustomer in Customers)
                    {
                        CustomerViewModels.Add(new CustomerViewModel(oCustomer));
                    }
                    return CustomerViewModels;

                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
        }

        public void Save()
        {
            try
            {
                if(ModelPerson.Id > 0)
                {
                    db.Entry<Model.Person>(ModelPerson).State = System.Data.Entity.EntityState.Modified;
                }
                else
                {
                    db.Person.Add(ModelPerson);
                }
                db.SaveChanges();
                OnPropertyChange("CustomerList");
            }
            catch (Exception EX)
            {
                
                throw;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public void OnPropertyChange([CallerMemberName] string PropertyName = "")
        {
            if(PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
            }
        }
    }
}
