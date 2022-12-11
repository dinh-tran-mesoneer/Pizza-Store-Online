package pizza_store.OrderPage;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderPageData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderPageData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -9117966852525605823L;

  private pizza_store.OrderData orderData;

  /**
   * Gets the field orderData.
   * @return the value of the field orderData; may be null.
   */
  public pizza_store.OrderData getOrderData()
  {
    return orderData;
  }

  /**
   * Sets the field orderData.
   * @param _orderData the new value of the field orderData.
   */
  public void setOrderData(pizza_store.OrderData _orderData)
  {
    orderData = _orderData;
  }

  private pizza_store.Order selectedOrder;

  /**
   * Gets the field selectedOrder.
   * @return the value of the field selectedOrder; may be null.
   */
  public pizza_store.Order getSelectedOrder()
  {
    return selectedOrder;
  }

  /**
   * Sets the field selectedOrder.
   * @param _selectedOrder the new value of the field selectedOrder.
   */
  public void setSelectedOrder(pizza_store.Order _selectedOrder)
  {
    selectedOrder = _selectedOrder;
  }

}
