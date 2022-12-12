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
  private static final long serialVersionUID = -7647711241492326874L;

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

}
