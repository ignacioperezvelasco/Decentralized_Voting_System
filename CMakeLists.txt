# CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(TuProyecto)

# Configura el estándar de C++
set(CMAKE_CXX_STANDARD 11)

# Agrega tus archivos fuente de C++
add_executable(MainCpp /home/ignacio/Proyectos/DescentralizedVotingSystem/Decentralized_Voting_System/Code/cpp/main.cpp)

# Configura la ruta de búsqueda para las bibliotecas de Ethereum (web3cpp, por ejemplo)
# Ajusta esta ruta según la ubicación de las bibliotecas en tu sistema
# target_include_directories(ProgramaCpp PRIVATE "/ruta/a/las/bibliotecas/web3cpp")

# Configura la ruta de búsqueda para las cabeceras de Ethereum (web3cpp, por ejemplo)
# Ajusta esta ruta según la ubicación de las bibliotecas en tu sistema
# target_link_directories(ProgramaCpp PRIVATE "/ruta/a/las/bibliotecas/web3cpp")

# Enlaza las bibliotecas de Ethereum (web3cpp, por ejemplo)
# Ajusta los nombres de las bibliotecas según las utilizadas en tu proyecto
# target_link_libraries(ProgramaCpp PRIVATE web3cpp)
