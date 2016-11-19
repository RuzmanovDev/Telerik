﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Data.EntityClient;
using System.ComponentModel;
using System.Xml.Serialization;
using System.Runtime.Serialization;

[assembly: EdmSchemaAttribute()]

namespace Ploeh.Samples.Mary.ECommerce.Data.Sql
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class CommerceObjectContext : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new CommerceObjectContext object using the connection string found in the 'CommerceObjectContext' section of the application configuration file.
        /// </summary>
        public CommerceObjectContext() : base("name=CommerceObjectContext", "CommerceObjectContext")
        {
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new CommerceObjectContext object.
        /// </summary>
        public CommerceObjectContext(string connectionString) : base(connectionString, "CommerceObjectContext")
        {
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new CommerceObjectContext object.
        /// </summary>
        public CommerceObjectContext(EntityConnection connection) : base(connection, "CommerceObjectContext")
        {
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Product> Products
        {
            get
            {
                if ((_Products == null))
                {
                    _Products = base.CreateObjectSet<Product>("Products");
                }
                return _Products;
            }
        }
        private ObjectSet<Product> _Products;

        #endregion
        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Products EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToProducts(Product product)
        {
            base.AddObject("Products", product);
        }

        #endregion
    }
    

    #endregion
    
    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="MaryCommerceModel", Name="Product")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Product : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Product object.
        /// </summary>
        /// <param name="productId">Initial value of the ProductId property.</param>
        /// <param name="name">Initial value of the Name property.</param>
        /// <param name="description">Initial value of the Description property.</param>
        /// <param name="unitPrice">Initial value of the UnitPrice property.</param>
        /// <param name="isFeatured">Initial value of the IsFeatured property.</param>
        public static Product CreateProduct(global::System.Int32 productId, global::System.String name, global::System.String description, global::System.Decimal unitPrice, global::System.Boolean isFeatured)
        {
            Product product = new Product();
            product.ProductId = productId;
            product.Name = name;
            product.Description = description;
            product.UnitPrice = unitPrice;
            product.IsFeatured = isFeatured;
            return product;
        }

        #endregion
        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 ProductId
        {
            get
            {
                return _ProductId;
            }
            set
            {
                if (_ProductId != value)
                {
                    OnProductIdChanging(value);
                    ReportPropertyChanging("ProductId");
                    _ProductId = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("ProductId");
                    OnProductIdChanged();
                }
            }
        }
        private global::System.Int32 _ProductId;
        partial void OnProductIdChanging(global::System.Int32 value);
        partial void OnProductIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Name
        {
            get
            {
                return _Name;
            }
            set
            {
                OnNameChanging(value);
                ReportPropertyChanging("Name");
                _Name = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Name");
                OnNameChanged();
            }
        }
        private global::System.String _Name;
        partial void OnNameChanging(global::System.String value);
        partial void OnNameChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Description
        {
            get
            {
                return _Description;
            }
            set
            {
                OnDescriptionChanging(value);
                ReportPropertyChanging("Description");
                _Description = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Description");
                OnDescriptionChanged();
            }
        }
        private global::System.String _Description;
        partial void OnDescriptionChanging(global::System.String value);
        partial void OnDescriptionChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Decimal UnitPrice
        {
            get
            {
                return _UnitPrice;
            }
            set
            {
                OnUnitPriceChanging(value);
                ReportPropertyChanging("UnitPrice");
                _UnitPrice = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("UnitPrice");
                OnUnitPriceChanged();
            }
        }
        private global::System.Decimal _UnitPrice;
        partial void OnUnitPriceChanging(global::System.Decimal value);
        partial void OnUnitPriceChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Boolean IsFeatured
        {
            get
            {
                return _IsFeatured;
            }
            set
            {
                OnIsFeaturedChanging(value);
                ReportPropertyChanging("IsFeatured");
                _IsFeatured = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("IsFeatured");
                OnIsFeaturedChanged();
            }
        }
        private global::System.Boolean _IsFeatured;
        partial void OnIsFeaturedChanging(global::System.Boolean value);
        partial void OnIsFeaturedChanged();

        #endregion
    
    }

    #endregion
    
}
