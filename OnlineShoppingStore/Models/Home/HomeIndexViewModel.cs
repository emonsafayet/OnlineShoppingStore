using OnlineShoppingStore.DAL;
using OnlineShoppingStore.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShoppingStore.Models.Home
{
    public class HomeIndexViewModel
    {
        public GenericUnitOfWork _unitOfWork = new GenericUnitOfWork();

        public IEnumerable<Tbl_Product> ListofProducts { get; set; }

        public HomeIndexViewModel CreateModel()
        {

            return new HomeIndexViewModel
            {
                ListofProducts = _unitOfWork.GetRepositoryInstance<Tbl_Product>().GetAllRecords()
            };
        }

    }
}