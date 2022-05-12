# SalesDataIntegration-V1

### Setting Up Listener for the Project
Update [***configuration.yaml***](./src/main/resources/configuration.yaml) with the Working directory or file path to listen.
```
files:
  basepath: "E:\\MULESOFT\\Files"
  orders: "orders.csv"
  orderItems: "order_items.csv"
```

### Setting Up Downstream Process and System APIs Config for the Project
Update the following parameters with your downstream configs in ***src/main/resources/configuration.yaml***. Update the host and port where you are hosting the [**SalesDBSysAPI-V1**](https://github.com/SauravB7/SalesDBSysAPI-V1) and [**SalesAPI-V1**](https://github.com/SauravB7/SalesAPI-V1)
```
salesapi:
  host: "192.168.15.10"
  port: "8092"
  basepath: "/salesms/v1"
  connectiontimeout: "30000"
  responsetimeout: "30000"
  orderPath: "/orders"
  
salesdbapi:
  host: "192.168.15.10"
  port: "8092"
  basepath: "/salesdbms/v1"
  connectiontimeout: "30000"
  responsetimeout: "30000"
  orderItemsPath: "/orderItems"
```

### Creating the Deployable Package
To create a deployable package from your configured Project, run the following Maven command inside your Project root folder.
```
mvn clean package
```

### File Structure for Orders and Order Items

Sample data files are present in [Test Resources Folder](./src/test/resources)

**Orders**
![image](https://user-images.githubusercontent.com/28842863/167984463-e04917c4-28ba-4fa2-b03c-b0d57d889100.png)

**Order Items**
![image](https://user-images.githubusercontent.com/28842863/167984535-8173da34-edb7-4100-949e-7db61c359d01.png)

