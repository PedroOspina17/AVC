using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Reflection;


namespace AVC.ABase.Business.ViewModel
{

    public class CustomerViewModel : BaseViewModels
    {
        private Model.Customer ModelCustomer = new Model.Customer();

        public CustomerViewModel(Model.ABaseEntities context)
            : base(context)
        {
            ModelCustomer.Person = new Model.Person();
            DateBird = new DateTime(1900, 1, 1);

        }
        public CustomerViewModel(Model.Customer oCustomer, Model.ABaseEntities context)
            : base(context)
        {
            this.ModelCustomer = oCustomer;
        }

        public Model.DocumentType DocumentType
        {
            get { return ModelCustomer.Person.DocumentType; }
            set { ModelCustomer.Person.DocumentType = value; OnPropertyChange(); }
        }
        public string DocumentNumber
        {
            get { return ModelCustomer.Person.DocumentNumber; }
            set
            {
                ModelCustomer.Person.DocumentNumber = value; OnPropertyChange();
            }
        }

        public string FirstName
        {
            get
            {
                return ModelCustomer.Person.FirstName;
            }
            set
            {
                ModelCustomer.Person.FirstName = value;
                OnPropertyChange();
                OnPropertyChange("FullName");
            }
        }

        public string LastName
        {
            get
            {
                return ModelCustomer.Person.LastName;
            }
            set
            {
                ModelCustomer.Person.LastName = value; OnPropertyChange(); OnPropertyChange("FullName");
            }
        }

        public string FullName
        {
            get
            {
                return ModelCustomer.Person.FirstName + " " + ModelCustomer.Person.LastName;
            }

        }

        public DateTime? ConvertToNullable(DateTime date)
        {
            DateTime? newDate = new DateTime(date.Ticks);
            return date == new DateTime(1900, 1, 1) ? null : newDate;
        }

        public DateTime? DateBird
        {
            get
            {
                return ConvertToNullable(ModelCustomer.Person.DateBird);
            }
            set
            {
                ModelCustomer.Person.DateBird = value ?? new DateTime(1900, 1, 1); OnPropertyChange();
            }
        }

        public Model.Gender Gender
        {
            get
            {
                return ModelCustomer.Person.Gender;
            }
            set
            {
                ModelCustomer.Person.Gender = value;
            }
        }

        public String Address
        {
            get
            {
                return ModelCustomer.Person.Address;
            }
            set
            {
                ModelCustomer.Person.Address = value; OnPropertyChange();
            }
        }
        public String PhoneNumber
        {
            get
            {
                return ModelCustomer.Person.PhoneNumber;
            }
            set
            {
                ModelCustomer.Person.PhoneNumber = value; OnPropertyChange();
            }
        }
        public String CellphoneNumber
        {
            get
            {
                return ModelCustomer.Person.CellphoneNumber;
            }
            set
            {
                ModelCustomer.Person.CellphoneNumber = value; OnPropertyChange();
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
                return ModelCustomer.Person.City;
            }
            set
            {
                ModelCustomer.Person.City = value; OnPropertyChange();
            }
        }

        public DateTime CreationDate
        {
            get { return ModelCustomer.Person.CreationDate; }
        }


        public List<Model.DocumentType> DocumentTypes
        {
            get { return db.DocumentType.ToList(); }
        }

        public List<Model.City> Cities
        {
            get { return db.City.ToList(); }
        }

        public List<Model.Gender> Genders
        {
            get { return db.Gender.ToList(); }
        }

        public List<CustomerViewModel> CustomerList
        {
            get
            {
                try
                {
                    List<Model.Customer> Customers = (from c in db.Customer select c).ToList();

                    List<CustomerViewModel> CustomerViewModels = new List<CustomerViewModel>();
                    foreach (Model.Customer oCustomer in Customers)
                    {
                        CustomerViewModels.Add(new CustomerViewModel(oCustomer, db));
                    }
                    return CustomerViewModels;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error has ocurred in CustomerViewModel -> get CustomerList property. -- " + ex.ToString());
                }
            }
        }

        public void Save()
        {
            try
            {
                if (ModelCustomer != null && ModelCustomer.Person != null)
                {
                    if (ModelCustomer.Person.Id > 0)
                    {
                        db.Entry<Model.Person>(ModelCustomer.Person).State = System.Data.Entity.EntityState.Modified;
                        if (ModelCustomer.Id > 0)
                        {
                            db.Entry<Model.Customer>(ModelCustomer).State = System.Data.Entity.EntityState.Modified;
                        }
                    }
                    else
                    {
                        this.ModelCustomer.Person.CreationDate = DateTime.Now;

                        db.Person.Add(ModelCustomer.Person);
                        db.SaveChanges();
                        // ToDo: Verify if the person exits but the customer is not created
                        db.Customer.Add(ModelCustomer);

                    }
                    db.SaveChanges();
                    Clean();
                    OnPropertyChange("CustomerList");
                }
                else
                {
                    throw new Exception("Error has ocurred in CustomerViewModel -> Save method. -- The models are null. Cannot save with null models");
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error has ocurred in CustomerViewModel -> Save method. -- " + ex.ToString());
            }
        }

        public void Delete()
        {
            try
            {
                if (this.ModelCustomer != null && this.ModelCustomer.Id > 0)
                {
                    db.Customer.Remove(this.ModelCustomer);
                    if (this.ModelCustomer.PersonId > 0 && db.Person.Any(p => p.Id == this.ModelCustomer.PersonId))
                    {
                        db.Person.Remove(db.Person.Find(this.ModelCustomer.PersonId));
                    }
                    db.SaveChanges();
                    Clean();
                }

            }
            catch (Exception ex)
            {
                throw new Exception("Error has ocurred in CustomerViewModel -> Delete method. -- " + ex.ToString());
            }
        }

        public void Clean()
        {
            try
            {
                this.ModelCustomer = new Model.Customer();
                this.ModelCustomer.Person = new Model.Person();
                DateBird = new DateTime(1900, 1, 1);
                Refresh();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public void Refresh(CustomerViewModel CurrentCustomer)
        {
            this.ModelCustomer = CurrentCustomer.ModelCustomer;
            Refresh();
        }
    }
}
