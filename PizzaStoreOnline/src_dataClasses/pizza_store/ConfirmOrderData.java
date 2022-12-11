package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class ConfirmOrderData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class ConfirmOrderData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -7927169402290071216L;

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> listOrder;

  /**
   * Gets the field listOrder.
   * @return the value of the field listOrder; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> getListOrder()
  {
    return listOrder;
  }

  /**
   * Sets the field listOrder.
   * @param _listOrder the new value of the field listOrder.
   */
  public void setListOrder(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Order> _listOrder)
  {
    listOrder = _listOrder;
  }

}
