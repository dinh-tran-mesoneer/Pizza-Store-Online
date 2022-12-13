package pizza_store.OrderPage;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderPageData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderPageData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -1834832108493730371L;

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Pizza> listPizzas;

  /**
   * Gets the field listPizzas.
   * @return the value of the field listPizzas; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Pizza> getListPizzas()
  {
    return listPizzas;
  }

  /**
   * Sets the field listPizzas.
   * @param _listPizzas the new value of the field listPizzas.
   */
  public void setListPizzas(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Pizza> _listPizzas)
  {
    listPizzas = _listPizzas;
  }

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Pizza> listSelectedPizzas;

  /**
   * Gets the field listSelectedPizzas.
   * @return the value of the field listSelectedPizzas; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Pizza> getListSelectedPizzas()
  {
    return listSelectedPizzas;
  }

  /**
   * Sets the field listSelectedPizzas.
   * @param _listSelectedPizzas the new value of the field listSelectedPizzas.
   */
  public void setListSelectedPizzas(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Pizza> _listSelectedPizzas)
  {
    listSelectedPizzas = _listSelectedPizzas;
  }

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

}
