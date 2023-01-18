# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wzh_realsense: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iwzh_realsense:/home/leo/tmdriver_ws/src/wzh_realsense/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wzh_realsense_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg" NAME_WE)
add_custom_target(_wzh_realsense_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wzh_realsense" "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wzh_realsense
  "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wzh_realsense
)

### Generating Services

### Generating Module File
_generate_module_cpp(wzh_realsense
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wzh_realsense
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wzh_realsense_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wzh_realsense_generate_messages wzh_realsense_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg" NAME_WE)
add_dependencies(wzh_realsense_generate_messages_cpp _wzh_realsense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wzh_realsense_gencpp)
add_dependencies(wzh_realsense_gencpp wzh_realsense_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wzh_realsense_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(wzh_realsense
  "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wzh_realsense
)

### Generating Services

### Generating Module File
_generate_module_eus(wzh_realsense
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wzh_realsense
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wzh_realsense_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wzh_realsense_generate_messages wzh_realsense_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg" NAME_WE)
add_dependencies(wzh_realsense_generate_messages_eus _wzh_realsense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wzh_realsense_geneus)
add_dependencies(wzh_realsense_geneus wzh_realsense_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wzh_realsense_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wzh_realsense
  "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wzh_realsense
)

### Generating Services

### Generating Module File
_generate_module_lisp(wzh_realsense
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wzh_realsense
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wzh_realsense_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wzh_realsense_generate_messages wzh_realsense_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg" NAME_WE)
add_dependencies(wzh_realsense_generate_messages_lisp _wzh_realsense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wzh_realsense_genlisp)
add_dependencies(wzh_realsense_genlisp wzh_realsense_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wzh_realsense_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(wzh_realsense
  "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wzh_realsense
)

### Generating Services

### Generating Module File
_generate_module_nodejs(wzh_realsense
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wzh_realsense
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wzh_realsense_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wzh_realsense_generate_messages wzh_realsense_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg" NAME_WE)
add_dependencies(wzh_realsense_generate_messages_nodejs _wzh_realsense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wzh_realsense_gennodejs)
add_dependencies(wzh_realsense_gennodejs wzh_realsense_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wzh_realsense_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wzh_realsense
  "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wzh_realsense
)

### Generating Services

### Generating Module File
_generate_module_py(wzh_realsense
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wzh_realsense
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wzh_realsense_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wzh_realsense_generate_messages wzh_realsense_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leo/tmdriver_ws/src/wzh_realsense/msg/vision.msg" NAME_WE)
add_dependencies(wzh_realsense_generate_messages_py _wzh_realsense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wzh_realsense_genpy)
add_dependencies(wzh_realsense_genpy wzh_realsense_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wzh_realsense_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wzh_realsense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wzh_realsense
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(wzh_realsense_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wzh_realsense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wzh_realsense
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(wzh_realsense_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wzh_realsense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wzh_realsense
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(wzh_realsense_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wzh_realsense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wzh_realsense
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(wzh_realsense_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wzh_realsense)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wzh_realsense\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wzh_realsense
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(wzh_realsense_generate_messages_py std_msgs_generate_messages_py)
endif()
