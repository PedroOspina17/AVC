using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Reflection;

namespace Business.ViewModel
{

    public class CustomerViewModel : INotifyPropertyChanged
    {
        private Model.Person ModelPerson = new Model.Person();
        private Model.Customer ModelCustomer = new Model.Customer();
        private Model.PosEntities db = new Model.PosEntities();


        public event PropertyChangedEventHandler PropertyChanged;

        public void OnPropertyChange([CallerMemberName] string PropertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
            }
        }


        public CustomerViewModel()
        {
            this.ModelCustomer.Person = this.ModelPerson;
        }
        public CustomerViewModel(Model.Customer oCustomer)
        {
            this.ModelCustomer = oCustomer;
            this.ModelPerson = db.Person.Find(oCustomer.PersonId);
            this.ModelCustomer.Person = this.ModelPerson;
        }

        public Model.DocumentType DocumentType
        {
            get { return ModelPerson.DocumentType; }
            set { ModelPerson.DocumentType = value; OnPropertyChange(); }
        }
        [MaxLength(5, ErrorMessage = "Error personalizado")]
        public string DocumentNumber
        {
            get { return ModelPerson.DocumentNumber; }
            set { ModelPerson.DocumentNumber = value; OnPropertyChange(); }
        }

        public string FirstName
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
                return (ModelPerson.Gender ?? "") == "" ? "" : ModelPerson.Gender == "M" ? "Masculino" : "Femenino";
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

        public Model.City City
        {
            get
            {
                return ModelPerson.City;
            }
            set
            {
                ModelPerson.City = value; OnPropertyChange();
            }
        }




        public List<Model.DocumentType> DocumentTypes
        {
            get { return db.DocumentType.ToList(); }
        }

        public List<Model.City> Cities
        {
            get { return db.City.ToList(); }
        }

        public enum eGenders
        {
            Masculino,
            Femenino
        }
        public List<string> Genders { get { return (new string[] { "Masculino", "Femenino" }).ToList(); } }

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
                if (ModelPerson != null && ModelCustomer != null)
                {
                    if (ModelPerson.Id > 0)
                    {
                        db.Entry<Model.Person>(ModelPerson).State = System.Data.Entity.EntityState.Modified;
                        if (ModelCustomer.Id > 0)
                        {
                            db.Entry<Model.Customer>(ModelCustomer).State = System.Data.Entity.EntityState.Modified;
                        }

                    }
                    else
                    {
                        this.ModelPerson.CreationDate = DateTime.Now;
                        
                        db.Person.Add(ModelPerson);
                        db.SaveChanges();                        
                        // ToDo: Verify if the person exits but the customer is not created
                        db.Customer.Add(ModelCustomer);

                    }
                    db.SaveChanges();
                    //Clean();
                    OnPropertyChange("CustomerList");
                }
                else
                {
                    throw new Exception("The models are null. Cant save with null models");
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public void Delete()
        {
            try
            {
                if (this.ModelCustomer != null && this.ModelCustomer.Id > 0)
                {
                    db.Customer.Remove(this.ModelCustomer);
                    if (this.ModelPerson != null && this.ModelPerson.Id > 0)
                    {
                        db.Person.Remove(this.ModelPerson);
                    }
                    db.SaveChanges();
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void Clean()
        {
            try
            {
                this.ModelPerson = new Model.Person();
                this.ModelCustomer = new Model.Customer();
                Refresh();
            }
            catch (Exception ex)
            {

                throw ex;
            }
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
