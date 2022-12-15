package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class PizzaOrderItem", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
@javax.persistence.Table(name="pizza_order_items")
public class PizzaOrderItem extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -4353490373865894391L;

  @javax.persistence.Id
  @javax.persistence.Column(name="order_id")
  private java.lang.Integer orderId;

  /**
   * Gets the field orderId.
   * @return the value of the field orderId; may be null.
   */
  public java.lang.Integer getOrderId()
  {
    return orderId;
  }

  /**
   * Sets the field orderId.
   * @param _orderId the new value of the field orderId.
   */
  public void setOrderId(java.lang.Integer _orderId)
  {
    orderId = _orderId;
  }

  @javax.persistence.Id
  @javax.persistence.ManyToOne(cascade={javax.persistence.CascadeType.ALL}, fetch=javax.persistence.FetchType.EAGER)
  @javax.persistence.JoinColumn(name="pizza_id")
  private pizza_store.Pizza pizza;

  /**
   * Gets the field pizza.
   * @return the value of the field pizza; may be null.
   */
  public pizza_store.Pizza getPizza()
  {
    return pizza;
  }

  /**
   * Sets the field pizza.
   * @param _pizza the new value of the field pizza.
   */
  public void setPizza(pizza_store.Pizza _pizza)
  {
    pizza = _pizza;
  }

  @javax.persistence.Column(name="quantity")
  private java.lang.Integer quantity;

  /**
   * Gets the field quantity.
   * @return the value of the field quantity; may be null.
   */
  public java.lang.Integer getQuantity()
  {
    return quantity;
  }

  /**
   * Sets the field quantity.
   * @param _quantity the new value of the field quantity.
   */
  public void setQuantity(java.lang.Integer _quantity)
  {
    quantity = _quantity;
  }

  @javax.persistence.Column(name="size")
  private java.lang.String size;

  /**
   * Gets the field size.
   * @return the value of the field size; may be null.
   */
  public java.lang.String getSize()
  {
    return size;
  }

  /**
   * Sets the field size.
   * @param _size the new value of the field size.
   */
  public void setSize(java.lang.String _size)
  {
    size = _size;
  }

  @javax.persistence.Column(name="crust")
  private java.lang.String crust;

  /**
   * Gets the field crust.
   * @return the value of the field crust; may be null.
   */
  public java.lang.String getCrust()
  {
    return crust;
  }

  /**
   * Sets the field crust.
   * @param _crust the new value of the field crust.
   */
  public void setCrust(java.lang.String _crust)
  {
    crust = _crust;
  }

  private transient java.lang.Boolean isSelected;

  /**
   * Gets the field isSelected.
   * @return the value of the field isSelected; may be null.
   */
  public java.lang.Boolean getIsSelected()
  {
    return isSelected;
  }

  /**
   * Sets the field isSelected.
   * @param _isSelected the new value of the field isSelected.
   */
  public void setIsSelected(java.lang.Boolean _isSelected)
  {
    isSelected = _isSelected;
  }

}
