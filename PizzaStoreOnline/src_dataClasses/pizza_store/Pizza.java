package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Pizza", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
@javax.persistence.Table(name="pizzas")
public class Pizza extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 8374992858583067900L;

  /**
   * Identifier
   */
  @javax.persistence.Id
  @javax.persistence.GeneratedValue
  @javax.persistence.Column(name="id")
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

  @javax.persistence.Column(name="name")
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

  @javax.persistence.Column(name="description")
  private java.lang.String description;

  /**
   * Gets the field description.
   * @return the value of the field description; may be null.
   */
  public java.lang.String getDescription()
  {
    return description;
  }

  /**
   * Sets the field description.
   * @param _description the new value of the field description.
   */
  public void setDescription(java.lang.String _description)
  {
    description = _description;
  }

  @javax.persistence.Column(name="size")
  private java.lang.String size;

  /**
   * Gets the field size.
   * @return the value of the field size; may be null.
   */
  public java.lang.String getSize()
  {
    return size;
  }

  /**
   * Sets the field size.
   * @param _size the new value of the field size.
   */
  public void setSize(java.lang.String _size)
  {
    size = _size;
  }

  @javax.persistence.Column(name="crust")
  private java.lang.String crust;

  /**
   * Gets the field crust.
   * @return the value of the field crust; may be null.
   */
  public java.lang.String getCrust()
  {
    return crust;
  }

  /**
   * Sets the field crust.
   * @param _crust the new value of the field crust.
   */
  public void setCrust(java.lang.String _crust)
  {
    crust = _crust;
  }

  @javax.persistence.Column(name="price")
  private java.lang.Integer price;

  /**
   * Gets the field price.
   * @return the value of the field price; may be null.
   */
  public java.lang.Integer getPrice()
  {
    return price;
  }

  /**
   * Sets the field price.
   * @param _price the new value of the field price.
   */
  public void setPrice(java.lang.Integer _price)
  {
    price = _price;
  }

  @javax.persistence.Column(name="image_link")
  private java.lang.String imageLink;

  /**
   * Gets the field imageLink.
   * @return the value of the field imageLink; may be null.
   */
  public java.lang.String getImageLink()
  {
    return imageLink;
  }

  /**
   * Sets the field imageLink.
   * @param _imageLink the new value of the field imageLink.
   */
  public void setImageLink(java.lang.String _imageLink)
  {
    imageLink = _imageLink;
  }

}
