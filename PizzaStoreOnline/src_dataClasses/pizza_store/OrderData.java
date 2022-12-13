package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 8017331579591058217L;

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

}
