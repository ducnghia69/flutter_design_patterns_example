import '../index.dart';

class AppDataSource {
  AppDataSource._();

  static DesignPatternCategory dpCreationalCategory = DesignPatternCategory(
    title: AppConstant.dpCreationalCategoryTitle,
    color: AppColor.current.fadedGreen,
    type: DesignPatternType.creational,
    patterns: const [
      DesignPattern(
        title: 'Singleton',
        description:
            'Ensure a class has only one instance, and provide a global point of access to it.',
      ),
      DesignPattern(
        title: 'Factory Method',
        description:
            'Define an interface for creating an object, but let subclasses alter the type of objects that will be created.',
      ),
      DesignPattern(
        title: 'Abstract Factory',
        description:
            'Provide an interface for creating families of related or dependent objects without specifying their concrete classes.',
      ),
      DesignPattern(
        title: 'Builder',
        description:
            'Separate the construction of a complex object from its representation, allowing the same construction process to create various representations.',
      ),
      DesignPattern(
        title: 'Prototype',
        description:
            'Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.',
      ),
    ],
  );

  static DesignPatternCategory dpStructuralCategory = DesignPatternCategory(
    title: AppConstant.dpStructuralCategoryTitle,
    color: AppColor.current.jasminePurple.withOpacity(0.5),
    type: DesignPatternType.structural,
    patterns: const [
      DesignPattern(
        title: 'Adapter',
        description:
            'Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn\'t otherwise because of incompatible interfaces.',
        route: AdapterRoute(),
      ),
      DesignPattern(
        title: 'Composite',
        description:
            'Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.',
        route: CompositeRoute(),
      ),
      DesignPattern(
        title: 'Decorator',
        description:
            'Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.',
      ),
      DesignPattern(
        title: 'Facade',
        description:
            'Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.',
      ),
      DesignPattern(
        title: 'Flyweight',
        description: 'Use sharing to support large numbers of fine-grained objects efficiently.',
      ),
      DesignPattern(
        title: 'Proxy',
        description:
            'Provide a surrogate or placeholder for another object to control access to it.',
      ),
      DesignPattern(
        title: 'Bridge',
        description:
            'Decouple an abstraction from its implementation so that the two can vary independently.',
      )
    ],
  );

  static DesignPatternCategory dpBehavioralCategory = DesignPatternCategory(
    title: AppConstant.dpBehavioralCategoryTitle,
    color: AppColor.current.saffronMango,
    type: DesignPatternType.behavioral,
    patterns: const [
      DesignPattern(
        title: 'Observer',
        description:
            'Define a one-to-many dependency between objects where a state change in one object results in all its dependents being notified and updated automatically.',
      ),
      DesignPattern(
        title: 'Strategy',
        description:
            'Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it.',
        route: FadeTransitionStrategyRoute(),
      ),
      DesignPattern(
        title: 'Template Method',
        description:
            'Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm\'s structure.',
        route: TemplateMethodRoute(),
      ),
      DesignPattern(
        title: 'Command',
        description:
            'Encapsulate a request as an object, thereby letting you parameterize clients with queues, requests, and operations. Command decouples the sender from the receiver.',
      ),
      DesignPattern(
        title: 'Chain of Responsibility',
        description:
            'Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.',
      ),
      DesignPattern(
        title: 'State',
        description:
            'Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.',
        route: StateRoute(),
      ),
      DesignPattern(
        title: 'Mediator',
        description:
            'Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly and lets you vary their interaction independently.',
      ),
      DesignPattern(
        title: 'Interpreter',
        description:
            'Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.',
      ),
      DesignPattern(
        title: 'Memento',
        description:
            'Without violating encapsulation, capture and externalize an object\'s internal state so that the object can be restored to this state later.',
      ),
      DesignPattern(
        title: 'Visitor',
        description:
            'Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates.',
      ),
      DesignPattern(
          title: 'Iterator',
          description:
              'Traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.).'),
    ],
  );
}
