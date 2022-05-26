#include <SDL2/SDL.h>

class Engine{
    public:
        void EngineInit();
     private:
        SDL_Renderer *renderer = NULL;      // Pointer for the renderer
        SDL_Window *window = NULL;      // Pointer for the window
};
