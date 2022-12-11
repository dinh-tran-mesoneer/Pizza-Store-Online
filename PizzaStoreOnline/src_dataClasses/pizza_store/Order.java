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
  private static final long serialVersionUID = -8440586257580423750L;

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

  @javax.persistence.OneToOne(cascade={javax.persistence.CascadeType.ALL}, fetch=javax.persistence.FetchType.EAGER, optional=false, orphanRemoval=false)
  @javax.persistence.JoinColumn(name="product_id", nullable=false)
  private pizza_store.Product product;

  /**
   * Gets the field product.
   * @return the value of the field product; may be null.
   */
  public pizza_store.Product getProduct()
  {
    return product;
  }

  /**
   * Sets the field product.
   * @param _product the new value of the field product.
   */
  public void setProduct(pizza_store.Product _product)
  {
    product = _product;
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

  @javax.persistence.Column(name="status")
  private java.lang.Integer status;

  /**
   * Gets the field status.
   * @return the value of the field status; may be null.
   */
  public java.lang.Integer getStatus()
  {
    return status;
  }

  /**
   * Sets the field status.
   * @param _status the new value of the field status.
   */
  public void setStatus(java.lang.Integer _status)
  {
    status = _status;
  }

}
