# Robot Control System
Создание системы управлением роботом

## Installation
Клон репрзитория:

### Установить зависимости <br>
	cd robot_control
	./install_dependencies.sh
	
### Настройка доступа по ssh <br>
	./ssh_setup.sh


### Сборка проекта <br>
	colcon build
	source install/setup.bash


### Рабочее пространство ros
	ros2 pkg create my_robot_pkg --dependencies rclcpp std_msgs