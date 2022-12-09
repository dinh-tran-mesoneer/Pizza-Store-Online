package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -2268790082532738223L;

  private ch.ivyteam.ivy.scripting.objects.List<pizza_store.Product> productList;

  /**
   * Gets the field productList.
   * @return the value of the field productList; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza_store.Product> getProductList()
  {
    return productList;
  }

  /**
   * Sets the field productList.
   * @param _productList the new value of the field productList.
   */
  public void setProductList(ch.ivyteam.ivy.scripting.objects.List<pizza_store.Product> _productList)
  {
    productList = _productList;
  }

  private pizza_store.Product selectedProduct;

  /**
   * Gets the field selectedProduct.
   * @return the value of the field selectedProduct; may be null.
   */
  public pizza_store.Product getSelectedProduct()
  {
    return selectedProduct;
  }

  /**
   * Sets the field selectedProduct.
   * @param _selectedProduct the new value of the field selectedProduct.
   */
  public void setSelectedProduct(pizza_store.Product _selectedProduct)
  {
    selectedProduct = _selectedProduct;
  }

}
