/*
 * servo_driver.c
 *
 *  Created on: May 6, 2024
 *      Author: Baktiyar Brekeshev
 */



#define minAngle 0
#define maxAngle 90
#define minPW 1200
#define maxPW 7500

#define SERVO_OVERFLOW  ((uint16)round((double)TAU_CYC / SERVO_PRESCALER))
#define TAU_MSEC        20
#define TAU_USEC        (TAU_MSEC * 1000)


#define COMPARE_TO_US(c)  ((uint32)map((c), 0, SERVO_OVERFLOW, 0, TAU_USEC))
#define ANGLE_TO_US(a)    ((uint16)(map((a), minAngle, maxAngle, minPW, maxPW)))


int constrain(int x, int a, int b) {
    if(x < a) {
        return a;
    }
    else if(b < x) {
        return b;
    }
    else
        return x;
}

int map(int x, int in_min, int in_max, int out_min, int out_max) {
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void Servo_Write(int degrees, TIM_TypeDef tim, TIM_TypeDef channel) {
    degrees = constrain(degrees, minAngle, maxAngle);
    tim -> channel = (ANGLE_TO_US(degrees));
}
void Servo_Write_Microseconds(uint16_t pulseWidth, TIM_TypeDef tim, TIM_TypeDef channel) {
    pulseWidth = constrain(pulseWidth, minPW, maxPW);
    tim -> channel = (US_TO_COMPARE(pulseWidth));

}
