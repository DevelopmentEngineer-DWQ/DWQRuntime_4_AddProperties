# DWQRuntime_4_AddProperties
Runtime为分类添加属性的简单实现
![DWQ-LOGO.jpeg](http://upload-images.jianshu.io/upload_images/2231137-1545493cd60adb2b.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

##引述
  作为iOS开发者的我们都知道，分类是不能直接添加属性的，那么我们有时候又需要实现这个功能，那么我们应该怎么办才能为分类添加上属性呢。

##Runtime给分类添加属性原理

给一个类声明属性，其实本质就是给这个类添加关联，并不是直接把这个值的内存空间添加到类存空间。

##Runtime给分类添加属性步骤

- 1.在分类的.h文件中声明想要定义的属性

- 2.在分类的.m文件中实现getter和setter方法

- 3.引入runtime头文件，然后在setter方法中用objc_setAssociatedObject关联对象

```objective-c
  objc_setAssociatedObject(self, @"age", age, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

```
参数说明：

    // object:给哪个对象添加属性
    // key:属性名,根据key去获取关联的对象 ,void * == id
    // value:关联的值
    // policy:策略

- 4.在getter方法中实现获取对象方法

```objective-c
 return objc_getAssociatedObject(self, @"age");

```
- 5.在需要使用的地方引入分类的头文件，然后即可用  .语法来获取值。

```objective
 NSObject *objc = [[NSObject alloc] init];
    objc.age = @"123";
    NSLog(@"%@",objc.age);
```
##效果展示：
![添加属性.png](http://upload-images.jianshu.io/upload_images/2231137-55fdb6305867ce56.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
