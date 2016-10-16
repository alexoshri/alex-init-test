# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ardrone_project: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iardrone_project:/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ardrone_project_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg" NAME_WE)
add_custom_target(_ardrone_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_project" "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ardrone_project
  "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_project
)

### Generating Services

### Generating Module File
_generate_module_cpp(ardrone_project
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_project
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ardrone_project_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ardrone_project_generate_messages ardrone_project_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg" NAME_WE)
add_dependencies(ardrone_project_generate_messages_cpp _ardrone_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_project_gencpp)
add_dependencies(ardrone_project_gencpp ardrone_project_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_project_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ardrone_project
  "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_project
)

### Generating Services

### Generating Module File
_generate_module_lisp(ardrone_project
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_project
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ardrone_project_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ardrone_project_generate_messages ardrone_project_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg" NAME_WE)
add_dependencies(ardrone_project_generate_messages_lisp _ardrone_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_project_genlisp)
add_dependencies(ardrone_project_genlisp ardrone_project_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_project_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ardrone_project
  "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_project
)

### Generating Services

### Generating Module File
_generate_module_py(ardrone_project
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_project
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ardrone_project_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ardrone_project_generate_messages ardrone_project_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oshri/ros_tutorials/catkin_ws/src/ardrone_project/msg/ImageCalc.msg" NAME_WE)
add_dependencies(ardrone_project_generate_messages_py _ardrone_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_project_genpy)
add_dependencies(ardrone_project_genpy ardrone_project_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_project_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_project
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ardrone_project_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_project
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ardrone_project_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_project)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_project\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_project
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ardrone_project_generate_messages_py std_msgs_generate_messages_py)
