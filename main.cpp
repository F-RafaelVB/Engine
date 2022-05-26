#include <SDL2/SDL.h>
#include "Engine.hpp"

int main(int, char**){ 
    Engine *engine = new Engine();
    engine->EngineInit();
    return 0;
}
