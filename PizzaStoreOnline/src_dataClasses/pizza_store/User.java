package pizza_store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class User", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
@javax.persistence.Table(name="users")
public class User extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -8745893494331926431L;

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

  @javax.persistence.Column(name="name", nullable=false)
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

  @org.hibernate.annotations.Type(type = "ch.ivyteam.ivy.process.data.persistence.usertype.DateTimeUserType")
  @javax.persistence.Column(name="last_login_time")
  private ch.ivyteam.ivy.scripting.objects.DateTime lastLoginTime;

  /**
   * Gets the field lastLoginTime.
   * @return the value of the field lastLoginTime; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.DateTime getLastLoginTime()
  {
    return lastLoginTime;
  }

  /**
   * Sets the field lastLoginTime.
   * @param _lastLoginTime the new value of the field lastLoginTime.
   */
  public void setLastLoginTime(ch.ivyteam.ivy.scripting.objects.DateTime _lastLoginTime)
  {
    lastLoginTime = _lastLoginTime;
  }

  @javax.persistence.Column(name="password", nullable=false)
  private java.lang.String password;

  /**
   * Gets the field password.
   * @return the value of the field password; may be null.
   */
  public java.lang.String getPassword()
  {
    return password;
  }

  /**
   * Sets the field password.
   * @param _password the new value of the field password.
   */
  public void setPassword(java.lang.String _password)
  {
    password = _password;
  }

  @javax.persistence.Column(name="username", nullable=false)
  private java.lang.String username;

  /**
   * Gets the field username.
   * @return the value of the field username; may be null.
   */
  public java.lang.String getUsername()
  {
    return username;
  }

  /**
   * Sets the field username.
   * @param _username the new value of the field username.
   */
  public void setUsername(java.lang.String _username)
  {
    username = _username;
  }

}
