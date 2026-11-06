include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(projekt1_elever_default_library_list )

set(OUTPUT_SUFFIX elf)
# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(projekt1_elever_default_default_XC8_FILE_TYPE_assemble)
add_library(projekt1_elever_default_default_XC8_assemble OBJECT ${projekt1_elever_default_default_XC8_FILE_TYPE_assemble})
    projekt1_elever_default_default_XC8_assemble_rule(projekt1_elever_default_default_XC8_assemble)
    list(APPEND projekt1_elever_default_library_list "$<TARGET_OBJECTS:projekt1_elever_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(projekt1_elever_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(projekt1_elever_default_default_XC8_assemblePreprocess OBJECT ${projekt1_elever_default_default_XC8_FILE_TYPE_assemblePreprocess})
    projekt1_elever_default_default_XC8_assemblePreprocess_rule(projekt1_elever_default_default_XC8_assemblePreprocess)
    list(APPEND projekt1_elever_default_library_list "$<TARGET_OBJECTS:projekt1_elever_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(projekt1_elever_default_default_XC8_FILE_TYPE_compile)
add_library(projekt1_elever_default_default_XC8_compile OBJECT ${projekt1_elever_default_default_XC8_FILE_TYPE_compile})
    projekt1_elever_default_default_XC8_compile_rule(projekt1_elever_default_default_XC8_compile)
    list(APPEND projekt1_elever_default_library_list "$<TARGET_OBJECTS:projekt1_elever_default_default_XC8_compile>")

endif()

# Handle files with suffix elf, for group default-XC8
if(projekt1_elever_default_default_XC8_FILE_TYPE_objcopy_avr)
add_library(projekt1_elever_default_default_XC8_objcopy_avr OBJECT ${projekt1_elever_default_default_XC8_FILE_TYPE_objcopy_avr})
    projekt1_elever_default_default_XC8_objcopy_avr_rule(projekt1_elever_default_default_XC8_objcopy_avr)
    list(APPEND projekt1_elever_default_library_list "$<TARGET_OBJECTS:projekt1_elever_default_default_XC8_objcopy_avr>")

endif()


# Main target for this project
add_executable(projekt1_elever_default_image_MhtDNkaY ${projekt1_elever_default_library_list})

set_target_properties(projekt1_elever_default_image_MhtDNkaY PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${projekt1_elever_default_output_dir}")
target_link_libraries(projekt1_elever_default_image_MhtDNkaY PRIVATE ${projekt1_elever_default_default_XC8_FILE_TYPE_link})
# Add the link options from the rule file.
projekt1_elever_default_link_rule( projekt1_elever_default_image_MhtDNkaY)


#Add objcopy steps
projekt1_elever_default_objcopy_avr_rule(projekt1_elever_default_image_MhtDNkaY)

