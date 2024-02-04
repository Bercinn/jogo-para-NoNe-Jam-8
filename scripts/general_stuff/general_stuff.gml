function sin_wave(spd, height, modify = 0) {
    return dsin(((current_time/10)*spd)+modify)*height
}
