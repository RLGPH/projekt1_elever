# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/Phoenix/MPLABProjects/projekt1_elever/out/projekt1_elever/default.cmf"
  "/home/Phoenix/MPLABProjects/projekt1_elever/out/projekt1_elever/default.hex"
  "/home/Phoenix/MPLABProjects/projekt1_elever/out/projekt1_elever/default.hxl"
  "/home/Phoenix/MPLABProjects/projekt1_elever/out/projekt1_elever/default.mum"
  "/home/Phoenix/MPLABProjects/projekt1_elever/out/projekt1_elever/default.o"
  "/home/Phoenix/MPLABProjects/projekt1_elever/out/projekt1_elever/default.sdb"
  "/home/Phoenix/MPLABProjects/projekt1_elever/out/projekt1_elever/default.sym"
  )
endif()
