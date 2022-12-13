package pizza_store.ConfirmedOrdersPage;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class ConfirmedOrdersPageData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class ConfirmedOrdersPageData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -2379937421074208498L;

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> listConfirmedOrders;

  /**
   * Gets the field listConfirmedOrders.
   * @return the value of the field listConfirmedOrders; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> getListConfirmedOrders()
  {
    return listConfirmedOrders;
  }

  /**
   * Sets the field listConfirmedOrders.
   * @param _listConfirmedOrders the new value of the field listConfirmedOrders.
   */
  public void setListConfirmedOrders(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> _listConfirmedOrders)
  {
    listConfirmedOrders = _listConfirmedOrders;
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
