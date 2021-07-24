cmake_minimum_required(VERSION 3.5)

project(  vlfeat
      LANGUAGES C
    #    LANGUAGES CXX
    VERSION   "0.9.21" )

set(CMAKE_INCLUDE_CURRENT_DIR ON)

#set(CMAKE_AUTOUIC ON)
#set(CMAKE_AUTOMOC ON)
#set(CMAKE_AUTORCC ON)

#set(CMAKE_CXX_STANDARD 11)
#set(CMAKE_CXX_STANDARD_REQUIRED ON)

# QtCreator supports the following variables for Android, which are identical to qmake Android variables.
# Check http://doc.qt.io/qt-5/deployment-android.html for more information.
# They need to be set before the find_package(Qt5 ...) call.

#if(ANDROID)
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
#    if (ANDROID_ABI STREQUAL "armeabi-v7a")
#        set(ANDROID_EXTRA_LIBS
#            ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libcrypto.so
#            ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libssl.so)
#    endif()
#endif()

#find_package(QT NAMES Qt6 Qt5 COMPONENTS Widgets LinguistTools REQUIRED)
#find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Widgets LinguistTools REQUIRED)

#set(TS_FILES qtDrawImageLineReg_zh_CN.ts)

if( 0 )
    if (UNIX)
        set(Eigen3_DIR  "/home/alex/bin2104/eigen-3.3.7/x64/share/eigen3/cmake" )
        find_package(  Eigen3  REQUIRED  PATHS  "/home/alex/bin2104/eigen-3.3.7/x64" )
    elseif (MSVC)
        set(Eigen3_DIR  "D:/win10/aspDep14/eigen-3.3.7/x64/share/eigen3/cmake" )
        find_package(  Eigen3  REQUIRED  PATHS  "D:/win10/aspDep14/eigen-3.3.7/x64" )
    endif ()
    include_directories(  ${EIGEN3_INCLUDE_DIR})
    include_directories(  ${EIGEN3_INCLUDE_DIRS})
    include_directories(  ${EIGEN3_ROOT_DIR})
    include_directories(  "D:/win10/aspDep14/eigen-3.3.7/x64/include/eigen3")
endif()


if (UNIX)
    if( 0 )
        set(Opencv_rot_my /home/alex/bin2104/installCv3414Ubun2104FullNew)
        set(OpenCV_DIR ${Opencv_rot_my}/share/OpenCV)
        find_package(opencv PATHS ${Opencv_rot_my}/share/OpenCV) #REQUIRED
        include_directories(${Opencv_rot_my}/include
            ${Opencv_rot_my}/include/opencv
            ${Opencv_rot_my}/include/opencv2
            )
    endif()
    if(0)
        set(Opencv_rot_my /home/alex/bin2104/installCV410Ubun1804GLIPP)
        set(OpenCV_DIR ${Opencv_rot_my}/lib/cmake/opencv4)
        find_package(opencv PATHS ${Opencv_rot_my} ) #REQUIRED
        include_directories(${Opencv_rot_my}/include
            ${Opencv_rot_my}/include/opencv4
            ${Opencv_rot_my}/include/opencv4/opencv2
            )
    endif()
    if( 0 )  # installCv24136U2104
        set(Opencv_rot_my /home/alex/bin2104/installCv24136U2104)
        set(OpenCV_DIR ${Opencv_rot_my}/share/OpenCV)
        find_package(opencv PATHS ${Opencv_rot_my}/share/OpenCV) #REQUIRED
        include_directories(${Opencv_rot_my}/include
            ${Opencv_rot_my}/include/opencv
            ${Opencv_rot_my}/include/opencv2
            )
    endif()
elseif (MSVC)
    if(0)
        set(Opencv_rot_my  "D:/win10/cv451/opencv/build" REQUIRED)
        set(OpenCV_DIR "D:/win10/cv451/opencv/build/x64/vc14/lib")
        find_package(opencv PATHS ${Opencv_rot_my} ) #REQUIRED
        include_directories(${Opencv_rot_my}/include
            ${Opencv_rot_my}/include/opencv
            ${Opencv_rot_my}/include/opencv2
            )
    endif()
    if(0)  # installCv24136U2104
        set(Opencv_rot_my  "D:/win10/cv24136/opencv/build"    )
        set(OpenCV_DIR ${Opencv_rot_my}/x64/vc14/lib)
        find_package(opencv PATHS ${Opencv_rot_my}  ) #REQUIRED
        include_directories(${Opencv_rot_my}/include
            ${Opencv_rot_my}/include/opencv
            ${Opencv_rot_my}/include/opencv2
            )
    endif()
    if( 0 )  # installCv24136U2104
        set(Opencv_rot_my  "D:/win10/cv342/opencv/build"    )
        set(OpenCV_DIR ${Opencv_rot_my}/x64/vc14/lib)
        find_package(opencv PATHS ${Opencv_rot_my}  ) #REQUIRED
        include_directories(${Opencv_rot_my}/include
            ${Opencv_rot_my}/include/opencv
            ${Opencv_rot_my}/include/opencv2
            )
    endif ()
endif ()
link_directories(${Opencv_rot_my}/lib)

if( 0 )
    if (UNIX)
        include_directories("/home/alex/bin2104/halcon-19.11.0.0-linux/include/halconcpp"
            "/home/alex/bin2104/halcon-19.11.0.0-linux/include")
        link_directories("/home/alex/bin2104/halcon-19.11.0.0-linux/lib/x64-linux")
    elseif (MSVC)
        include_directories("D:/Program Files/MVTec/HALCON-17.12-Progress/include/halconcpp"
            "D:/Program Files/MVTec/HALCON-17.12-Progress/include")
        link_directories("D:/Program Files/MVTec/HALCON-17.12-Progress/lib/x64-win64")
    endif ()
endif()

if( 0 )
    if (UNIX)
        set(LIBS_RELATED ${OpenCV_LIBS}
            libopencv_core.so libopencv_highgui.so libopencv_imgcodecs.so
            libopencv_imgproc.so libopencv_videoio.so libopencv_ml.so
            libopencv_features2d.so libopencv_flann.so libopencv_objdetect.so
            -lopencv_nonfree
            -lopencv_contrib
            #    -lpng  -lthread -ljpeg  -lpng16
            #     nlohmann_json::nlohmann_json        #     tinyxml2::tinyxml2
            #     glog::glog
            -lhalconcpp -lhalcon
            #            -lXext -lX11 -ldl -lpthread
            )
    elseif (MSVC)
        set(LIBS_RELATED ${OpenCV_LIBS}
            #    -lpng  -lthread -ljpeg  -lpng16
            #     nlohmann_json::nlohmann_json
            #     tinyxml2::tinyxml2
            #     glog::glog
            -lhalconcpp -lhalcon
            #        -lXext -lX11 -ldl -lpthread
            )
    endif ()
endif ()

#set(HEADERS  data.h  rpm.h  )

add_definitions(   -DVL_BUILD_DLL  )
add_definitions(   -DVL_DISABLE_SSE2    )
add_definitions(   -DVL_DISABLE_AVX    )
#add_definitions(   -DVL_DISABLE_SSE2    )
#add_definitions(   -DVL_DISABLE_SSE2    )


#aux_source_directory(  ./    sources_all )
#aux_source_directory(  ./GIFmaker    sources_all )
#aux_source_directory(  ./halconCompare    sources_all )
#include_directories( ./ ./GIFmaker  ./halconCompare  )

set(       sources_vlfeat
    src/aib.c
#    src/mser.c
#    src/sift.c
    )
#File (sources_all     )

aux_source_directory(  ./vl    sources_all_vl    )
#aux_source_directory(  ./toolbox/aib    sources_all )
#aux_source_directory(  ./toolbox/fisher    sources_all )
#aux_source_directory(  ./toolbox/geometry    sources_all )
#aux_source_directory(  ./toolbox/gmm    sources_all )
#aux_source_directory(  ./toolbox/imop    sources_all )
#aux_source_directory(  ./toolbox/kmeans    sources_all )
#aux_source_directory(  ./toolbox/misc    sources_all )
#aux_source_directory(  ./toolbox/mser    sources_all )
#aux_source_directory(  ./toolbox/plotop    sources_all )
#aux_source_directory(  ./toolbox/quickshift    sources_all )
#aux_source_directory(  ./toolbox/sift    sources_all )
#aux_source_directory(  ./toolbox/slic    sources_all )
#aux_source_directory(  ./toolbox/special    sources_all )
#aux_source_directory(  ./toolbox/vlad    sources_all )
#aux_source_directory(  ./toolbox/xtest    sources_all )

FILE(GLOB    sources_all_toolbox      EXTENDED    ./toolbox/aib/*.c
    ./toolbox/fisher/*.c
    ./toolbox/geometry/*.c
    ./toolbox/gmm/*.c
    ./toolbox/imop/*.c
    ./toolbox/kmeans/*.c
    ./toolbox/misc/*.c
    ./toolbox/mser/*.c
    ./toolbox/plotop/*.c
    ./toolbox/quickshift/*.c
    ./toolbox/sift/*.
    ./toolbox/slic/*.c
    ./toolbox/special/*.c
    ./toolbox/vlad/*.c
    ./toolbox/xtest/*.c

    ./vl/*.*
    )
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/fisher/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/geometry/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/gmm/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/imop/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/kmeans/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/misc/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/mser/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/plotop/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/quickshift/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/sift/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/slic/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/special/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/vlad/*.c)
#FILE(GLOB    sources_all    EXTENDED    ./toolbox/xtest/*.c)


include_directories( ./   ./vl     ./src
    ./toolbox
    ./toolbox/aib
    ./toolbox/fisher
    ./toolbox/geometry
    ./toolbox/gmm
    ./toolbox/imop
    ./toolbox/kmeans
    ./toolbox/misc
    ./toolbox/mser
    ./toolbox/plotop
    ./toolbox/quickshift
    ./toolbox/sift
    ./toolbox/slic
    ./toolbox/special
    ./toolbox/vlad
    ./toolbox/xtest

    "D:/Program Files/MATLAB/R2016b/extern/include"
    )


if(ANDROID)
    add_library(qtDrawImageLineReg SHARED
        main.cpp        widget.cpp        widget.h        widget.ui
        ${TS_FILES}
        )
else()
    if( 0 )
        add_executable(qtDrawImageLineReg
            #  main.cpp#        widget.cpp#        widget.h#        widget.ui
            ${TS_FILES}  ${HEADERS}  ${sources_all_vl}   ${sources_all_toolbox}
            #        formmainapp.h    formmainapp.cpp  formmainapp.ui
            )
    endif()
    add_library( ${PROJECT_NAME}   SHARED
        #    main.cpp        widget.cpp        widget.h        widget.ui      ${TS_FILES}
#        ${sources_all}
        ${sources_all_vl}
        #          ${sources_all_toolbox}
        ${sources_vlfeat}
        )
    target_link_libraries(   ${PROJECT_NAME}
        #    PRIVATE Qt${QT_VERSION_MAJOR}::Widgets
        #    ${LIBS_RELATED}
        "D:/Program Files/MATLAB/R2016b/extern/lib/win64/microsoft/libmex.lib"
        )
endif()



#qt5_create_translation(QM_FILES ${CMAKE_SOURCE_DIR} ${TS_FILES})




set(EXECUTABLE_OUTPUT_PATH   ${CMAKE_BINARY_DIR}/../out__exe_out_VC14   )
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../out__lib_out_VC14)
#set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../out__exe_out_VC14  )
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../out__RUNTIME_out_VC14   )
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../out__LIBRARY_out_VC14  )



add_executable(aib    ./src/aib.c    ${sources_all_vl}    )
target_link_libraries(  aib  -L../lib_out_VC14  -lvlfeat   )


add_executable(mser    ./src/mser.c   ${sources_all_vl}     )
target_link_libraries(  mser  -L../lib_out_VC14  -lvlfeat   )

add_executable(sift    ./src/sift.c   ${sources_all_vl}     )
target_link_libraries(  sift  -L../lib_out_VC14  -lvlfeat   )

add_executable(test_gmm    ./src/test_gmm.c   ${sources_all_vl}     )
target_link_libraries(  test_gmm  -L../lib_out_VC14  -lvlfeat   )


#-------------------install  destation ---------------------------
#set( DESTINATION  "../install/")
set(CMAKE_INSTALL_PREFIX "../install_bin_release_ubun2104/")
#          And to the end of the top-level CMakeLists.txt we add:
install(TARGETS ${PROJECT_NAME} DESTINATION bin)
#install(FILES "${PROJECT_BINARY_DIR}/TutorialConfig.h"  DESTINATION include  )


if (1  )
    #
    # Format the project using the `clang-format` target (i.e: cmake --build build --target clang-format)
    #

    #add_clang_format_target()

    #
    # Install library for easy downstream inclusion
    #

    include(GNUInstallDirs)
    install(
        TARGETS
        ${PROJECT_NAME}
        EXPORT
        ${PROJECT_NAME}Targets
        LIBRARY DESTINATION
        ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION
        ${CMAKE_INSTALL_BINDIR}
        ARCHIVE DESTINATION
        ${CMAKE_INSTALL_LIBDIR}
        INCLUDES DESTINATION
        include
        PUBLIC_HEADER DESTINATION
        include
        )

    install(
        EXPORT
        ${PROJECT_NAME}Targets
        FILE
        ${PROJECT_NAME}Targets.cmake
        NAMESPACE
        ${PROJECT_NAME}::
        DESTINATION
        ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
        )

    #
    # Add version header
    #

    configure_file(
        ${CMAKE_CURRENT_LIST_DIR}/cmake/version.hpp.in
        include/${PROJECT_NAME_LOWERCASE}/version.hpp
        @ONLY
        )

    install(
        FILES
        ${CMAKE_CURRENT_BINARY_DIR}/include/${PROJECT_NAME_LOWERCASE}/version.hpp
        DESTINATION
        include/${PROJECT_NAME_LOWERCASE}
        )

    #
    # Install the `include` directory
    #

    #install(
    #    DIRECTORY
    ##    include/${PROJECT_NAME_LOWERCASE}
    #    BasicDef/${PROJECT_NAME_LOWERCASE}
    #     exportApi/${PROJECT_NAME_LOWERCASE}
    #     DESTINATION
    #    include
    #    )

    install(
        FILES
        #    include/${PROJECT_NAME_LOWERCASE}
#        BasicDef/${PROJECT_NAME_LOWERCASE}/skd_vision_basic.h
#        BasicDef/${PROJECT_NAME_LOWERCASE}/SKDVISION_global.h
#        exportApi/${PROJECT_NAME_LOWERCASE}/api_vision.h
        #     exportApi/${PROJECT_NAME_LOWERCASE}
        vl/aib.h    vl/array.h    vl/covdet.h    vl/vlad.h     vl/svm.h
        DESTINATION
        include
        )


    #verbose_message("Install targets succesfully build. Install with `cmake --build <build_directory> --target install --config <build_config>`.")

    #
    # Quick `ConfigVersion.cmake` creation
    #

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
        ${PROJECT_NAME}ConfigVersion.cmake
        VERSION
        ${PROJECT_VERSION}
        COMPATIBILITY
        SameMajorVersion
        )

    configure_package_config_file(
        ${CMAKE_CURRENT_LIST_DIR}/cmake/${PROJECT_NAME}Config.cmake.in
        ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
        INSTALL_DESTINATION
        ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
        )

    install(
        FILES
        ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake
        DESTINATION
        ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
        )

    #
    # Generate export header if specified
    #

    if (${PROJECT_NAME}_GENERATE_EXPORT_HEADER)
        include(GenerateExportHeader)
        generate_export_header(${PROJECT_NAME})
        install(
            FILES
            ${PROJECT_BINARY_DIR}/${PROJECT_NAME_LOWERCASE}_export.h
            DESTINATION
            include
            )
        message(STATUS "Generated the export header `${PROJECT_NAME_LOWERCASE}_export.h` and installed it.")
    endif ()

    message(STATUS "Finished building requirements for installing the package.\n")

    #
    # Unit testing setup
    #
    if (0)
        if (${PROJECT_NAME}_ENABLE_UNIT_TESTING)
            enable_testing()
            message(STATUS "Build unit tests for the project. Tests should always be found in the test folder\n")
            add_subdirectory(test)
        endif ()
    endif ()


endif ()



