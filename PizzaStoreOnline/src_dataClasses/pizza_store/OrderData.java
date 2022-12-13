package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 5277326334290425734L;

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

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Drink> listDrinks;

  /**
   * Gets the field listDrinks.
   * @return the value of the field listDrinks; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Drink> getListDrinks()
  {
    return listDrinks;
  }

  /**
   * Sets the field listDrinks.
   * @param _listDrinks the new value of the field listDrinks.
   */
  public void setListDrinks(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Drink> _listDrinks)
  {
    listDrinks = _listDrinks;
  }

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Drink> listSelectedDrinks;

  /**
   * Gets the field listSelectedDrinks.
   * @return the value of the field listSelectedDrinks; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Drink> getListSelectedDrinks()
  {
    return listSelectedDrinks;
  }

  /**
   * Sets the field listSelectedDrinks.
   * @param _listSelectedDrinks the new value of the field listSelectedDrinks.
   */
  public void setListSelectedDrinks(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Drink> _listSelectedDrinks)
  {
    listSelectedDrinks = _listSelectedDrinks;
  }

}
