cmake_minimum_required(VERSION 3.5)
project(rosee_msg)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()


find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(actionlib_msgs REQUIRED)
find_package(example_interfaces REQUIRED)
find_package(std_srvs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)


################################################
## Declare ROS messages, services and actions ##
################################################

rosidl_generate_interfaces(${PROJECT_NAME}
    "msg/EEGraspControl.msg"
    "msg/EEPinchControl.msg"
    "msg/EETriggerControl.msg"
    "msg/GraspingPrimitiveAggregated.msg"
    "msg/ROSEEActionControl.msg"
    "msg/MotorPosition.msg"
    "msg/MotorPhalangePressure.msg"
    "msg/GraspingAction.msg"
    "msg/JointsInvolvedCount.msg"
    "msg/NewGenericGraspingAction.msg"
    "msg/ObjectModelMsg.msg"
    "srv/GraspingPrimitiveAggregatedAvailable.srv"
    "srv/SelectablePairInfo.srv"
    "srv/GraspingActionsAvailable.srv"
    "srv/NewGenericGraspingActionSrv.srv"
    "srv/HandInfo.srv"
    "action/ROSEECommand.action"
    DEPENDENCIES builtin_interfaces geometry_msgs std_srvs example_interfaces actionlib_msgs
)


ament_export_dependencies(rosidl_default_runtime)
ament_package()
