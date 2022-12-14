package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Order", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
@javax.persistence.Table(name="orders")
public class Order extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -4533056091481767720L;

  /**
   * Identifier
   */
  @javax.persistence.Id
  @javax.persistence.GeneratedValue
  @javax.persistence.Column(name="id")
  private java.lang.Integer id;

  /**
   * Gets the field id.
   * @return the value of the field id; may be null.
   */
  public java.lang.Integer getId()
  {
    return id;
  }

  /**
   * Sets the field id.
   * @param _id the new value of the field id.
   */
  public void setId(java.lang.Integer _id)
  {
    id = _id;
  }

  @org.hibernate.annotations.Type(type = "ch.ivyteam.ivy.process.data.persistence.usertype.DateTimeUserType")
  @javax.persistence.Column(name="created_date")
  private ch.ivyteam.ivy.scripting.objects.DateTime orderedDateTime;

  /**
   * Gets the field orderedDateTime.
   * @return the value of the field orderedDateTime; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.DateTime getOrderedDateTime()
  {
    return orderedDateTime;
  }

  /**
   * Sets the field orderedDateTime.
   * @param _orderedDateTime the new value of the field orderedDateTime.
   */
  public void setOrderedDateTime(ch.ivyteam.ivy.scripting.objects.DateTime _orderedDateTime)
  {
    orderedDateTime = _orderedDateTime;
  }

  @javax.persistence.Column(name="status")
  private java.lang.Integer status;

  /**
   * Gets the field status.
   * @return the value of the field status; may be null.
   */
  public java.lang.Integer getStatus()
  {
    return status;
  }

  /**
   * Sets the field status.
   * @param _status the new value of the field status.
   */
  public void setStatus(java.lang.Integer _status)
  {
    status = _status;
  }

  @javax.persistence.Column(name="name")
  private java.lang.String name;

  /**
   * Gets the field name.
   * @return the value of the field name; may be null.
   */
  public java.lang.String getName()
  {
    return name;
  }

  /**
   * Sets the field name.
   * @param _name the new value of the field name.
   */
  public void setName(java.lang.String _name)
  {
    name = _name;
  }

  @javax.persistence.Column(name="phone_number")
  private java.lang.String phoneNumber;

  /**
   * Gets the field phoneNumber.
   * @return the value of the field phoneNumber; may be null.
   */
  public java.lang.String getPhoneNumber()
  {
    return phoneNumber;
  }

  /**
   * Sets the field phoneNumber.
   * @param _phoneNumber the new value of the field phoneNumber.
   */
  public void setPhoneNumber(java.lang.String _phoneNumber)
  {
    phoneNumber = _phoneNumber;
  }

  @javax.persistence.Column(name="delivery_address")
  private java.lang.String deliveryAddress;

  /**
   * Gets the field deliveryAddress.
   * @return the value of the field deliveryAddress; may be null.
   */
  public java.lang.String getDeliveryAddress()
  {
    return deliveryAddress;
  }

  /**
   * Sets the field deliveryAddress.
   * @param _deliveryAddress the new value of the field deliveryAddress.
   */
  public void setDeliveryAddress(java.lang.String _deliveryAddress)
  {
    deliveryAddress = _deliveryAddress;
  }

  private transient java.util.List<pizza_store.PizzaOrderItem> pizzas;

  /**
   * Gets the field pizzas.
   * @return the value of the field pizzas; may be null.
   */
  public java.util.List<pizza_store.PizzaOrderItem> getPizzas()
  {
    return pizzas;
  }

  /**
   * Sets the field pizzas.
   * @param _pizzas the new value of the field pizzas.
   */
  public void setPizzas(java.util.List<pizza_store.PizzaOrderItem> _pizzas)
  {
    pizzas = _pizzas;
  }

  private transient java.util.List<pizza_store.DrinkOrderItem> drinks;

  /**
   * Gets the field drinks.
   * @return the value of the field drinks; may be null.
   */
  public java.util.List<pizza_store.DrinkOrderItem> getDrinks()
  {
    return drinks;
  }

  /**
   * Sets the field drinks.
   * @param _drinks the new value of the field drinks.
   */
  public void setDrinks(java.util.List<pizza_store.DrinkOrderItem> _drinks)
  {
    drinks = _drinks;
  }

  private transient java.lang.Integer price;

  /**
   * Gets the field price.
   * @return the value of the field price; may be null.
   */
  public java.lang.Integer getPrice()
  {
    return price;
  }

  /**
   * Sets the field price.
   * @param _price the new value of the field price.
   */
  public void setPrice(java.lang.Integer _price)
  {
    price = _price;
  }

}
