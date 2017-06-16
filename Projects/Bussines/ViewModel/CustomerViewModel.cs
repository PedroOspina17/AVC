using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.ViewModel
{

    public class CustomerViewModel
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
            set { ModelPerson.DocumentType = value; }
        }

        public string Document
        {
            get { return ModelPerson.DocumentNumber; }
            set { ModelPerson.DocumentNumber = value; }
        }

        public string Name
        {
            get
            {
                return ModelPerson.FirstName;
            }
            set
            {
                ModelPerson.FirstName = value;
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
                ModelPerson.LastName = value;
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
                ModelPerson.DateBird = value;
            }
        }

        public String Gender
        {
            get
            {
                return ModelPerson.Gender;
            }
            set
            {
                ModelPerson.Gender = value;
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
                ModelPerson.Address = value;
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
                ModelPerson.PhoneNumber = value;
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
                ModelPerson.CellphoneNumber = value;
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
                ModelCustomer.Active = value;
            }
        }

        public List<Model.DocumentType> DocumentTypes
        {
            get { return db.DocumentType.ToList(); }
        }

        public List<CustomerViewModel> GetAll()
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
}
