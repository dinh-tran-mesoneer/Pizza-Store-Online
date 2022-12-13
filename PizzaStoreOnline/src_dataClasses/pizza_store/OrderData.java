package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -3182121508438851484L;

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

  private java.lang.String name;

  /**
   * Gets the field name.
   * @return the value of the field name; may be null.
   */
  public java.lang.String getName()
  {
    return name;
  }

  /**
   * Sets the field name.
   * @param _name the new value of the field name.
   */
  public void setName(java.lang.String _name)
  {
    name = _name;
  }

  private java.lang.String phoneNumber;

  /**
   * Gets the field phoneNumber.
   * @return the value of the field phoneNumber; may be null.
   */
  public java.lang.String getPhoneNumber()
  {
    return phoneNumber;
  }

  /**
   * Sets the field phoneNumber.
   * @param _phoneNumber the new value of the field phoneNumber.
   */
  public void setPhoneNumber(java.lang.String _phoneNumber)
  {
    phoneNumber = _phoneNumber;
  }

  private java.lang.String deliveryAddress;

  /**
   * Gets the field deliveryAddress.
   * @return the value of the field deliveryAddress; may be null.
   */
  public java.lang.String getDeliveryAddress()
  {
    return deliveryAddress;
  }

  /**
   * Sets the field deliveryAddress.
   * @param _deliveryAddress the new value of the field deliveryAddress.
   */
  public void setDeliveryAddress(java.lang.String _deliveryAddress)
  {
    deliveryAddress = _deliveryAddress;
  }

}
