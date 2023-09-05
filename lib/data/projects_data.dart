class Project{
  String title;
  String description;
  String techStack;
  String skillsGained;

  Project({
    required this.title,
    required this.description,
    required this.techStack,
    required this.skillsGained,
    });

}

class Projects{

  List<Project> projects = [
    Project(
      title: "Artllery", 
      description: "Developed a fully functional e-commerce web application inspired by the Amazon platform. Implemented user authentication, product browsing, search functionality, shopping cart management, and secure checkout processes", 
      techStack: "HTML \nCSS \nJavascript \nReact \nNodeJs \nExpress", 
      skillsGained: "UI design \nAPI ntergration \nPush notifications \nBackend development \nPayment methods intergration \nRelational data modelling"),
    Project(
      title: "Artllery", 
      description: "Developed a fully functional e-commerce web application inspired by the Amazon platform. Implemented user authentication, product browsing, search functionality, shopping cart management, and secure checkout processes", 
      techStack: "HTML \nCSS \nJavascript \nReact \nNodeJs \nExpress", 
      skillsGained: "UI design \nAPI ntergration \nPush notifications \nBackend development \nPayment methods intergration \nRelational data modelling"),
    Project(
      title: "Artllery", 
      description: "Developed a fully functional e-commerce web application inspired by the Amazon platform. Implemented user authentication, product browsing, search functionality, shopping cart management, and secure checkout processes", 
      techStack: "HTML \nCSS \nJavascript \nReact \nNodeJs \nExpress", 
      skillsGained: "UI design \nAPI ntergration \nPush notifications \nBackend development \nPayment methods intergration \nRelational data modelling"),
  ];

}