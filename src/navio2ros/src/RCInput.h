#pragma once

#include <cstddef>

#define NUM_CHANNELS 6

class RCInput
{
public:
    void init();
    int read(int ch);
    int channel_count;
    RCInput();
    ~RCInput();

private:
    int open_channel(int ch);
    static const size_t CHANNEL_COUNT = NUM_CHANNELS;
    int channels[CHANNEL_COUNT];
};
