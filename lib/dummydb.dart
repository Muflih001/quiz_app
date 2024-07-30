
abstract class QuestionDB {
  List<Map<String, Object>> get _questions;
}

class DummyDB extends QuestionDB {
  static const List<Map<String, Object>> questions = [
    {
      'question': 'What is Flutter?',
      'options': [
        'A mobile app framework',
        'A web development framework',
        'A desktop app framework',
        'A game engine'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is Dart?',
      'options': [
        'A programming language',
        'A framework for building web apps',
        'A library for building mobile apps',
        'A tool for debugging code'
      ],
      'correctanswer': 1,
    },
    {
      'question': 'What is the main advantage of using Flutter?',
      'options': [
        'Fast development',
        'Easy to learn',
        'High-performance apps',
        'All of the above'
      ],
      'correctanswer': 4
    },
    {
      'question':
          'What is the purpose of the `pubspec.yaml` file in a Dart project?',
      'options': [
        'To define project dependencies',
        'To configure the build process',
        'To write code comments',
        'To create a new project'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is a widget in Flutter?',
      'options': [
        'A reusable UI component',
        'A function to perform a task',
        'A variable to store data',
        'A class to define a model'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `var` and `final` in Dart?',
      'options': [
        '`var` is used for mutable variables, `final` is used for immutable variables',
        '`var` is used for immutable variables, `final` is used for mutable variables',
        'Both are used for mutable variables',
        'Both are used for immutable variables'
      ],
      'correctanswer': 1
    },
  ];

  @override
  List<Map<String, Object>> get _questions => questions;
}

class DartDB extends QuestionDB {
  static const List<Map<String, Object>> questions = [
    {
      'question': 'What is Dart?',
      'options': [
        'A programming language',
        'A framework for building web apps',
        'A library for building mobile apps',
        'A tool for debugging code'
      ],
      'correctanswer': 1,
    },
    {
      'question': 'What is the main advantage of using Dart?',
      'options': [
        'Fast execution',
        'Easy to learn',
        'High-performance apps',
        'All of the above'
      ],
      'correctanswer': 4
    },
    {
      'question': 'What is the purpose of the `main()` function in Dart?',
      'options': [
        'To define the entry point of a Dart program',
        'To define a class in Dart',
        'To define a function in Dart',
        'To define a variable in Dart'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `null` and `void` in Dart?',
      'options': [
        '`null` is used to represent no value, `void` is used to represent an empty value',
        '`null` is used to represent an empty value, `void` is used to represent no value',
        'Both are used to represent no value',
        'Both are used to represent an empty value'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the purpose of the `async` and `await` keywords in Dart?',
      'options': [
        'To define asynchronous functions',
        'To define synchronous functions',
        'To handle errors in Dart',
        'To make API calls in Dart'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `List` and `Set` in Dart?',
      'options': [
        '`List` is used for ordered collections, `Set` is used for unordered collections',
        '`List` is used for unordered collections, `Set` is used for ordered collections',
        'Both are used for ordered collections',
        'Both are used for unordered collections'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the purpose of the `Map` class in Dart?',
      'options': [
        'To store key-value pairs',
        'To store a list of values',
        'To store a set of values',
        'To store a single value'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `abstract` and `interface` in Dart?',
      'options': [
        '`abstract` is used to define an abstract class, `interface` is used to define an interface',
        '`abstract` is used to define an interface, `interface` is used to define an abstract class',
        'Both are used to define an abstract class',
        'Both are used to define an interface'
      ],
      'correctanswer': 1
    },
  ];

  @override
  List<Map<String, Object>> get _questions => questions;
}

class PythonDB extends QuestionDB {
  static const List<Map<String, Object>> questions = [
   {
      'question': 'What is Python?',
      'options': [
        'A programming language',
        'A web development framework',
        'A database management system',
        'A operating system'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the main advantage of using Python?',
      'options': [
        'Fast execution',
        'Easy to learn',
        'High-level language',
        'All of the above'
      ],
      'correctanswer': 4
    },
    {
      'question': 'What is the purpose of the `__init__.py` file in a Python project?',
      'options': [
        'To define project dependencies',
        'To configure the build process',
        'To write code comments',
        'To indicate that a directory should be treated as a package'
      ],
      'correctanswer': 4
    },
    {
      'question': 'What is a module in Python?',
      'options': [
        'A reusable piece of code',
        'A function to perform a task',
        'A variable to store data',
        'A class to define a model'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `==` and `is` in Python?',
      'options': [
        '`==` checks for equality, `is` checks for identity',
        '`==` checks for identity, `is` checks for equality',
        'Both are used for equality checks',
        'Both are used for identity checks'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is a decorator in Python?',
      'options': [
        'A function that modifies another function',
        'A class that modifies another class',
        'A variable that stores data',
        'A module that imports other modules'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the purpose of the `try`-`except` block in Python?',
      'options': [
        'To handle exceptions and errors',
        'To implement conditional statements',
        'To create loops and iterations',
        'To define functions and modules'
      ],
      'correctanswer': 1
    },
  ];

  @override
  List<Map<String, Object>> get _questions => questions;
}
class PhysicsDB extends QuestionDB {
  static const List<Map<String, Object>> questions = [
   {
      'question': 'What is the unit of force in the International System of Units (SI)?',
      'options': [
        'Newton (N)',
        'Joule (J)',
        'Kilogram (kg)',
        'Meter (m)'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the law that states that every action has an equal and opposite reaction?',
      'options': [
        'Law of Universal Gravitation',
        'Law of Conservation of Energy',
        'Law of Motion',
        'Newton\'s Third Law'
      ],
      'correctanswer': 4
    },
    {
      'question': 'What is the process by which an object\'s velocity increases as it moves closer to a source of gravitational pull?',
      'options': [
        'Acceleration',
        'Deceleration',
        'Gravitational attraction',
        'Orbital velocity'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the term for the energy an object possesses due to its motion?',
      'options': [
        'Kinetic energy',
        'Potential energy',
        'Thermal energy',
        'Electrical energy'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the scientific term for the "building blocks of matter"?',
      'options': [
        'Atoms',
        'Molecules',
        'Cells',
        'Tissues'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the process by which a solid changes directly to a gas?',
      'options': [
        'Melting',
        'Boiling',
        'Sublimation',
        'Deposition'
      ],
      'correctanswer': 3
    },
    {
      'question': 'What is the term for the amount of matter in an object?',
      'options': [
        'Mass',
        'Weight',
        'Volume',
        'Density'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the scientific term for the study of the behavior of objects in motion?',
      'options': [
        'Kinematics',
        'Dynamics',
        'Thermodynamics',
        'Electromagnetism'
      ],
      'correctanswer': 1
    },
  ];

  @override
  List<Map<String, Object>> get _questions => questions;
}
class JavaDB extends QuestionDB {
  static const List<Map<String, Object>> questions = [
    {
      'question': 'What is Java?',
      'options': [
        'A programming language',
        'A web development framework',
        'A database management system',
        'A operating system'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the main advantage of using Java?',
      'options': [
        'Fast execution',
        'Easy to learn',
        'High-level language',
        'All of the above'
      ],
      'correctanswer': 4
    },
    {
      'question': 'What is the purpose of the `public static void main()` method in Java?',
      'options': [
        'To define the entry point of a Java program',
        'To define a class in Java',
        'To define a function in Java',
        'To define a variable in Java'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `==` and `.equals()` in Java?',
      'options': [
        '`==` checks for equality, `.equals()` checks for identity',
        '`==` checks for identity, `.equals()` checks for equality',
        'Both are used for equality checks',
        'Both are used for identity checks'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is a constructor in Java?',
      'options': [
        'A special method that is used to initialize objects',
        'A method that is used to perform a specific task',
        'A variable that is used to store data',
        'A class that is used to define a model'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the purpose of the `this` keyword in Java?',
      'options': [
        'To refer to the current object',
        'To refer to a class',
        'To refer to a method',
        'To refer to a variable'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `interface` and `abstract class` in Java?',
      'options': [
        '`interface` is used to define a contract, `abstract class` is used to define a partial implementation',
        '`interface` is used to define a partial implementation, `abstract class` is used to define a contract',
        'Both are used to define a contract',
        'Both are used to define a partial implementation'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the purpose of the `try`-`catch` block in Java?',
      'options': [
        'To handle exceptions and errors',
        'To implement conditional statements',
        'To create loops and iterations',
        'To define functions and methods'
      ],
      'correctanswer': 1
    },
  ];

  @override
  List<Map<String, Object>> get _questions => questions;
}
class ChemistryDB extends QuestionDB {
  static const List<Map<String, Object>> questions = [
   {
      'question': 'What is the smallest unit of matter that still retains the properties of an element?',
      'options': [
        'Molecule',
        'Compound',
        'Atom',
        'Mixture'
      ],
      'correctanswer': 3
    },
    {
      'question': 'What is the process by which atoms gain or lose electrons to form ions?',
      'options': [
        'Ionization',
        'Electrolysis',
        'Oxidation',
        'Reduction'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the type of bond that forms between two atoms that share one or more pairs of electrons?',
      'options': [
        'Ionic bond',
        'Covalent bond',
        'Hydrogen bond',
        'Electrostatic bond'
      ],
      'correctanswer': 2
    },
    {
      'question': 'What is the scientific term for the study of the structure, properties, and reactions of matter?',
      'options': [
        'Chemistry',
        'Physics',
        'Biology',
        'Geology'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the process by which a solid changes directly to a gas?',
      'options': [
        'Melting',
        'Boiling',
        'Sublimation',
        'Deposition'
      ],
      'correctanswer': 3
    },
    {
      'question': 'What is the term for the amount of heat energy required to raise the temperature of 1 gram of a substance by 1 degree Celsius?',
      'options': [
        'Specific heat capacity',
        'Molar heat capacity',
        'Thermal conductivity',
        'Heat of fusion'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the type of reaction that involves the combination of two or more substances to form a new compound?',
      'options': [
        'Synthesis reaction',
        'Decomposition reaction',
        'Single displacement reaction',
        'Double displacement reaction'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the term for the ability of an atom to attract electrons towards itself?',
      'options': [
        'Electronegativity',
        'Electropositivity',
        'Ionization energy',
        'Electron affinity'
      ],
      'correctanswer': 1
    },
  ];

  @override
  List<Map<String, Object>> get _questions => questions;
}
class ReactDB extends QuestionDB {
  static const List<Map<String, Object>> questions = [
    {
      'question': 'What is React?',
      'options': [
        'A JavaScript library for building user interfaces',
        'A JavaScript framework for building web applications',
        'A JavaScript toolkit for building mobile applications',
        'A JavaScript library for building desktop applications'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is JSX?',
      'options': [
        'A syntax extension for JavaScript',
        'A templating language for React',
        'A markup language for React',
        'A styling language for React'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the main advantage of using React?',
      'options': [
        'Fast rendering',
        'Easy to learn',
        'High-performance apps',
        'All of the above'
      ],
      'correctanswer': 4
    },
    {
      'question': 'What is the purpose of the `render()` method in React?',
      'options': [
        'To render the component to the DOM',
        'To update the component\'s state',
        'To handle user input',
        'To make API calls'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is a component in React?',
      'options': [
        'A reusable piece of code',
        'A function to perform a task',
        'A variable to store data',
        'A class to define a model'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `state` and `props` in React?',
      'options': [
        '`state` is used for mutable data, `props` is used for immutable data',
        '`state` is used for immutable data, `props` is used for mutable data',
        'Both are used for mutable data',
        'Both are used for immutable data'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the purpose of the `constructor()` method in React?',
      'options': [
        'To initialize the component\'s state',
        'To update the component\'s state',
        'To handle user input',
        'To make API calls'
      ],
      'correctanswer': 1
    },
    {
      'question': 'What is the difference between `class` and `functional` components in React?',
      'options': [
        '`class` components have a lifecycle, `functional` components do not',
        '`class` components do not have a lifecycle, `functional` components do',
        'Both have a lifecycle',
        'Neither have a lifecycle'
      ],
      'correctanswer': 1
    },
  ];

  @override
  List<Map<String, Object>> get _questions => questions;
}