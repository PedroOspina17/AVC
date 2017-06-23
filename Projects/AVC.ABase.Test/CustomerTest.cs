using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using AVC.ABase.Business.Model;
using System.Linq;
using AVC.ABase.Business.ViewModel;

namespace AVC.ABase.Test
{
    [TestClass]
    public class CustomerTest
    {
        [TestMethod]
        public void Create_BindedModel()
        {
            // Arrange
            ABaseEntities context = new ABaseEntities();
            CustomerViewModel vmCustomer = new CustomerViewModel(context);
            if (context.Customer.Any(c => c.Person.DocumentNumber == "111111"))
            {
                context.Customer.RemoveRange(context.Customer.Where(c => c.Person.DocumentNumber == "111111").ToList());
                context.Person.RemoveRange(context.Person.Where(p => p.DocumentNumber == "111111").ToList());
                context.SaveChanges();
            }

            // act  
            vmCustomer.Active = true;
            vmCustomer.Address = "Testing address create ";
            vmCustomer.CellphoneNumber = "3333333333";
            vmCustomer.City = context.City.FirstOrDefault();
            vmCustomer.DateBird = DateTime.Now;
            vmCustomer.DocumentNumber = "111111";
            vmCustomer.DocumentType = context.DocumentType.FirstOrDefault();
            vmCustomer.FirstName = "Testing name create";
            vmCustomer.Gender = 1;
            vmCustomer.LastName = "Testing last name create";
            vmCustomer.PhoneNumber = "2222222";
            vmCustomer.Save();

            // assert
            Customer Entity = context.Customer.Where(c => c.Person.DocumentNumber == "111111").FirstOrDefault();
            Assert.IsNotNull(Entity);
        }
        
        [TestMethod]
        public void Update_BindedModel()
        {
            // arrange 
            ABaseEntities context = new ABaseEntities();
            if (context.Customer.Any(c => c.Person.DocumentNumber == "222222"))
            {
                context.Customer.RemoveRange(context.Customer.Where(c => c.Person.DocumentNumber == "222222").ToList());
                context.Person.RemoveRange(context.Person.Where(p => p.DocumentNumber == "222222").ToList());
                context.SaveChanges();
            }

            CustomerViewModel vmCustomer = new CustomerViewModel(context);
            vmCustomer.Active = true;
            vmCustomer.Address = "Testing address update ";
            vmCustomer.CellphoneNumber = "3333333333";
            vmCustomer.City = context.City.FirstOrDefault();
            vmCustomer.DateBird = DateTime.Now;
            vmCustomer.DocumentNumber = "222222";
            vmCustomer.DocumentType = context.DocumentType.FirstOrDefault();
            vmCustomer.FirstName = "Testing name update";
            vmCustomer.Gender = 1;
            vmCustomer.LastName = "Testing last name update";
            vmCustomer.PhoneNumber = "2222222";
            vmCustomer.Save();

            // act

            Customer EntityToModify = context.Customer.Where(c => c.Person.DocumentNumber == "222222").FirstOrDefault();
            vmCustomer.Refresh(new CustomerViewModel(EntityToModify,context));
            vmCustomer.FirstName = "Testing updated first name";
            vmCustomer.Save();

            // assert
            Customer Entity = context.Customer.Where(c => c.Person.DocumentNumber == "222222").FirstOrDefault();
            Assert.AreEqual("Testing updated first name", Entity.Person.FirstName);
        }
        
        [TestMethod]
        public void Delete_BindedModel()
        {
            // arrange 
            ABaseEntities context = new ABaseEntities();
            if (context.Customer.Any(c => c.Person.DocumentNumber == "333333"))
            {
                context.Customer.RemoveRange(context.Customer.Where(c => c.Person.DocumentNumber == "333333").ToList());
                context.Person.RemoveRange(context.Person.Where(p => p.DocumentNumber == "333333").ToList());
                context.SaveChanges();
            }                

            CustomerViewModel vmCustomer = new CustomerViewModel(context);
            vmCustomer.Active = true;
            vmCustomer.Address = "Testing address delete ";
            vmCustomer.CellphoneNumber = "3333333333";
            vmCustomer.City = context.City.FirstOrDefault();
            vmCustomer.DateBird = DateTime.Now;
            vmCustomer.DocumentNumber = "333333";
            vmCustomer.DocumentType = context.DocumentType.FirstOrDefault();
            vmCustomer.FirstName = "Testing name delete";
            vmCustomer.Gender = 1;
            vmCustomer.LastName = "Testing last name delete";
            vmCustomer.PhoneNumber = "2222222";
            vmCustomer.Save();

            // act
            Customer EntityToDelete = context.Customer.Where(c => c.Person.DocumentNumber == "333333").FirstOrDefault();
            vmCustomer.Refresh(new CustomerViewModel(EntityToDelete,context));
            vmCustomer.Delete();

            // assert
            Customer EntityDeleted = context.Customer.Where(c => c.Person.DocumentNumber == "333333").FirstOrDefault();
            Assert.IsNull(EntityDeleted);
        }
        [TestMethod]
        public void Clean_BindedModel()
        {
            ABaseEntities context = new ABaseEntities();
            CustomerViewModel vmCustomer = new CustomerViewModel(context);
            Customer entity = context.Customer.FirstOrDefault();
            vmCustomer.Refresh(new CustomerViewModel(entity, context));
            vmCustomer.Clean();
            Assert.IsTrue(
                            vmCustomer.Gender == null
                            && !vmCustomer.Active
                            && string.IsNullOrEmpty( vmCustomer.Address)
                            && string.IsNullOrEmpty( vmCustomer.CellphoneNumber)
                            && vmCustomer.City == null
                            && vmCustomer.DateBird == new DateTime(1900,1,1)
                            && string.IsNullOrEmpty(vmCustomer.DocumentNumber)
                            && vmCustomer.DocumentType == null
                            && string.IsNullOrEmpty(vmCustomer.FirstName)
                            && string.IsNullOrEmpty(vmCustomer.LastName)
                            && string.IsNullOrEmpty(vmCustomer.PhoneNumber)
                          , "Any property is not empty");

        }

        [TestMethod]
        public void Refresh_BindedModel()
        {
            // arrange 
            ABaseEntities context = new ABaseEntities();
            CustomerViewModel vmCustomer = new CustomerViewModel(context);
            vmCustomer.Active = true;
            vmCustomer.Address = "Testing address delete ";
            vmCustomer.CellphoneNumber = "3333333333";
            vmCustomer.City = context.City.FirstOrDefault();
            vmCustomer.DateBird = DateTime.Now;
            vmCustomer.DocumentNumber = "333333";
            vmCustomer.DocumentType = context.DocumentType.FirstOrDefault();
            vmCustomer.FirstName = "Testing name delete";
            vmCustomer.Gender = 1;
            vmCustomer.LastName = "Testing last name delete";
            vmCustomer.PhoneNumber = "2222222";            

            // act
            Customer Entity = context.Customer.FirstOrDefault(c => c.Person.DocumentNumber != "333333");
            CustomerViewModel vmCustomerToRefresh = new CustomerViewModel(Entity, context);
            vmCustomer.Refresh(vmCustomerToRefresh);

            // assert            
            Assert.AreEqual(vmCustomer.DocumentNumber,Entity.Person.DocumentNumber);
        }

        [TestMethod]
        public void List_ViewModels()
        {
            // arrange 
            ABaseEntities context = new ABaseEntities();
            if (context.Customer.Any(c => c.Person.DocumentNumber == "444444"))
            {
                context.Customer.RemoveRange(context.Customer.Where(c => c.Person.DocumentNumber == "444444").ToList());
                context.Person.RemoveRange(context.Person.Where(p => p.DocumentNumber == "444444").ToList());
                context.SaveChanges();
            }

            int NumberOfEntriesBefore = context.Customer.Count();

            // act
            CustomerViewModel vmCustomer = new CustomerViewModel(context);
            vmCustomer.Active = true;
            vmCustomer.Address = "Testing address listed";
            vmCustomer.CellphoneNumber = "3333333333";
            vmCustomer.City = context.City.FirstOrDefault();
            vmCustomer.DateBird = DateTime.Now;
            vmCustomer.DocumentNumber = "444444";
            vmCustomer.DocumentType = context.DocumentType.FirstOrDefault();
            vmCustomer.FirstName = "Testing name listed";
            vmCustomer.Gender = 1;
            vmCustomer.LastName = "Testing last name listed";
            vmCustomer.PhoneNumber = "2222222";
            vmCustomer.Save();

            int NumberOfEntriesAfter = vmCustomer.CustomerList.Count;

            // assert

            Assert.IsTrue(NumberOfEntriesAfter > NumberOfEntriesBefore);
        }

    }
}
