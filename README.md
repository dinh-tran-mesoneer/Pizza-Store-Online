# Axon.Ivy Trainning Pizza Store Online
## Expected Goals
- Fundamental knowledge of Axon.ivy and its project.
- Build an Axon.ivy project name PizzaStore Online which supporting simple Use Case.
- Build an Axon.ivy project with more complicated business flows & integrating with external systems.
- Build & deploy Axon.ivy project using CI tools (Jenkins & SonarQube) (Optional).

## Overview
### Roles

1. Customer
2. Receptionsist
3. Chef
4. Delivery

### Usecases

TODO: Add later.

## Tasks

- [x] Setuy Ivy Environment.
- [x] Create a simple project with basic `Bussiness Process`. 
- [ ] Implement business usecases in backend. 
    - [ ] Customer order online. 
    - [ ] Login. 
    - [ ] Receptionist confirm orders. 
    - [ ] Chef confirm done. 
    - [ ] Deliver confirm the payment is done. 

- [ ] Implement GUI screens. 
- [ ] Deploy.
    - [ ] In-Memory Persistence.
    - [ ] JPA.



## Setup Environment

1. Setup `AxonIvyDesigner` environment following this [link](https://mesoneerag.atlassian.net/wiki/spaces/VZ/pages/3691282444/Setup+VZ+workspace). **Don't setup VZ projects.**

2. Go to folder `AxonIvyDesigner` and run file `Axon.ivy Designer.exe`. **Don't run `eclipsec.exe`**, it has error that don't show page view.

3. Create a new project and following the quick tutorial guide.

## How to run a simple Hello World

Add `Script` in `Activity` to process.

In `Code` tab add below code.
```java
ivy.log.info("Hello World");
```

## Setup Database

I use postgres because it's better than mysql.

```shell
docker pull postgres:13.9
docker run 
  --name myPostgresDb 
  -p 5455:5432 
  -e POSTGRES_USER=postgresUser 
  -e POSTGRES_PASSWORD=postgresPW 
  -e POSTGRES_DB=postgresDB
  -d postgres:13.9
```

**When using postgres which has version above 13, I had below error**
```
Error: The authentication type 10 is not supported. Check that you have configured the pg_hba.conf file to include the client's IP address or subnet, and that it is using an authentication scheme supported by the driver.
```

Go to `Definitions` -> `Databases` to add new connection.

### Setup Persistence

Go to `Definitions` -> `Persistence` to add new persistence.

Go to `File` -> `Entity Class` to add new entity class. Define class fields equivalent to table fields.

Go to `Persistence` to generate schema. I can only run `create` option. The `update` option has error.

### Access Data

Using `ivy.persistence.<persistence unit>` to access data.

#### Get Data
```java
import pizza_store.Product;

out.productList = ivy.persistence.<persistence unit>.findAll(Product.class);
```

#### New Data

```java
// persist new created product
  Product product;
  product.name = "Product name";
  product.nr = 12;
  ivy.persistence.<persistence unit>.persist(product);

// get id of new created product
  Number newProductId = product.id;
```


#### View object property in jsf page

Using `data` object to access value.

```html
<ui:repeat value="#{data.orderData.productList}" var="product">
  <div>
    <img src="#{product.imageLink}" alt="#{product.name}" />
    <h2>#{product.name}</h2>
  </div>
</ui:repeat>
```