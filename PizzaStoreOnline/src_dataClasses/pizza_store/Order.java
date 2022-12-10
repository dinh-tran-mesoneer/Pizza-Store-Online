package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Order", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
@javax.persistence.Table(name="orders")
public class Order extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -8768421527910428713L;

  /**
   * Identifier
   */
  @javax.persistence.Id
  @javax.persistence.GeneratedValue
  private java.lang.Integer id;

  /**
   * Gets the field id.
   * @return the value of the field id; may be null.
   */
  public java.lang.Integer getId()
  {
    return id;
  }

  /**
   * Sets the field id.
   * @param _id the new value of the field id.
   */
  public void setId(java.lang.Integer _id)
  {
    id = _id;
  }

  @javax.persistence.Column(name="product_id", nullable=false)
  private java.lang.Integer productId;

  /**
   * Gets the field productId.
   * @return the value of the field productId; may be null.
   */
  public java.lang.Integer getProductId()
  {
    return productId;
  }

  /**
   * Sets the field productId.
   * @param _productId the new value of the field productId.
   */
  public void setProductId(java.lang.Integer _productId)
  {
    productId = _productId;
  }

  @org.hibernate.annotations.Type(type = "ch.ivyteam.ivy.process.data.persistence.usertype.DateTimeUserType")
  @javax.persistence.Column(name="created_date")
  private ch.ivyteam.ivy.scripting.objects.DateTime createDate;

  /**
   * Gets the field createDate.
   * @return the value of the field createDate; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.DateTime getCreateDate()
  {
    return createDate;
  }

  /**
   * Sets the field createDate.
   * @param _createDate the new value of the field createDate.
   */
  public void setCreateDate(ch.ivyteam.ivy.scripting.objects.DateTime _createDate)
  {
    createDate = _createDate;
  }

}
