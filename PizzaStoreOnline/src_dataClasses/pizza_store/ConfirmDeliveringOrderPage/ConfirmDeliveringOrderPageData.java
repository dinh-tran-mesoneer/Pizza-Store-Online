package pizza_store.ConfirmDeliveringOrderPage;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class ConfirmDeliveringOrderPageData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class ConfirmDeliveringOrderPageData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 2379937421239087368L;

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> listDeliveringOrders;

  /**
   * Gets the field listDeliveringOrders.
   * @return the value of the field listDeliveringOrders; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> getListDeliveringOrders()
  {
    return listDeliveringOrders;
  }

  /**
   * Sets the field listDeliveringOrders.
   * @param _listDeliveringOrders the new value of the field listDeliveringOrders.
   */
  public void setListDeliveringOrders(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> _listDeliveringOrders)
  {
    listDeliveringOrders = _listDeliveringOrders;
  }

  private pizza_store.ConfirmOrderData confirmOrderData;

  /**
   * Gets the field confirmOrderData.
   * @return the value of the field confirmOrderData; may be null.
   */
  public pizza_store.ConfirmOrderData getConfirmOrderData()
  {
    return confirmOrderData;
  }

  /**
   * Sets the field confirmOrderData.
   * @param _confirmOrderData the new value of the field confirmOrderData.
   */
  public void setConfirmOrderData(pizza_store.ConfirmOrderData _confirmOrderData)
  {
    confirmOrderData = _confirmOrderData;
  }

}
