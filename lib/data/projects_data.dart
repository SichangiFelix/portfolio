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
      title: "Amazon-clone", 
      description: "Developed a fully functional e-commerce web application inspired by the Amazon platform. Implemented user authentication, product browsing, search functionality, shopping cart management, and secure checkout processes", 
      techStack: "Flutter \nDart \nCloudinary \nMongoDB \nNode.Js \nExpress", 
      skillsGained: "UI design \nAPI ntergration \nPush notifications \nBackend development \nRelational data modelling"),
    Project(
      title: "Artllery", 
      description: "This is a cross-platform application built to give artists a platform to showcase their skills and sell pieces of art. The application also gives its users the ability to buy art pieces that have been posted on there. Some of the key features of this application are authentication, Images and files upload and download, managing an artist’s profile on the platform, offer chat feature between an artist and a potential buyer. Searching for particular art categories on the platform.", 
      techStack: "Flutter \nDart \nDjango \nPostgreSQL", 
      skillsGained: "UI design \nAPI ntergration \nPush notifications \nBackend development \nPayment methods intergration \nRelational data modelling"),
    Project(
      title: "BMI Calculator", 
      description: "This is a mobile application built using flutter that targets helping people live healthy lives. It does this by simply helping them calculate their body mass index. The main feature for the application is calculating the body mass index, it has input fields for mass and height, it has a beautiful interface that’s attractive to the users.", 
      techStack: "Flutter \nDart", 
      skillsGained: "UI design and implementation"),
  ];

}