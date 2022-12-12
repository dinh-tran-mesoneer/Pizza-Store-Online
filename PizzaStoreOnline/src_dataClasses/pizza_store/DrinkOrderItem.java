package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class DrinkOrderItem", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
@javax.persistence.Table(name="drink_order_items")
public class DrinkOrderItem extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 7028537865177944466L;

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

  /**
   * Identifier
   */
  @javax.persistence.Id
  @javax.persistence.ManyToOne(cascade={javax.persistence.CascadeType.ALL}, fetch=javax.persistence.FetchType.EAGER)
  @javax.persistence.JoinColumn(name="drink_id")
  private pizza_store.Drink drink;

  /**
   * Gets the field drink.
   * @return the value of the field drink; may be null.
   */
  public pizza_store.Drink getDrink()
  {
    return drink;
  }

  /**
   * Sets the field drink.
   * @param _drink the new value of the field drink.
   */
  public void setDrink(pizza_store.Drink _drink)
  {
    drink = _drink;
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

  @javax.persistence.Column(name="description")
  private java.lang.String description;

  /**
   * Gets the field description.
   * @return the value of the field description; may be null.
   */
  public java.lang.String getDescription()
  {
    return description;
  }

  /**
   * Sets the field description.
   * @param _description the new value of the field description.
   */
  public void setDescription(java.lang.String _description)
  {
    description = _description;
  }

}
