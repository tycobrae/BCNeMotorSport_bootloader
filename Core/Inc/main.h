/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "stm32f4xx_ll_adc.h"
#include "stm32f4xx_ll_dma.h"
#include "stm32f4xx_ll_rcc.h"
#include "stm32f4xx_ll_bus.h"
#include "stm32f4xx_ll_system.h"
#include "stm32f4xx_ll_exti.h"
#include "stm32f4xx_ll_cortex.h"
#include "stm32f4xx_ll_utils.h"
#include "stm32f4xx_ll_pwr.h"
#include "stm32f4xx_ll_tim.h"
#include "stm32f4xx_ll_gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define BSE_ADC_Pin LL_GPIO_PIN_0
#define BSE_ADC_GPIO_Port GPIOC
#define TT_ADC_Pin LL_GPIO_PIN_1
#define TT_ADC_GPIO_Port GPIOC
#define SUS_ADC_Pin LL_GPIO_PIN_2
#define SUS_ADC_GPIO_Port GPIOC
#define RED_Led_Pin LL_GPIO_PIN_3
#define RED_Led_GPIO_Port GPIOC
#define sad_Pin LL_GPIO_PIN_2
#define sad_GPIO_Port GPIOA
#define Enable_Inverter_MCU_Pin LL_GPIO_PIN_2
#define Enable_Inverter_MCU_GPIO_Port GPIOB
#define SDC_OUT_MCU_Pin LL_GPIO_PIN_10
#define SDC_OUT_MCU_GPIO_Port GPIOC
#define SDC_OUT_MCU_EXTI_IRQn EXTI15_10_IRQn
#define SDC_IN_MCU_Pin LL_GPIO_PIN_11
#define SDC_IN_MCU_GPIO_Port GPIOC
#define SDC_IN_MCU_EXTI_IRQn EXTI15_10_IRQn
#define SUS_Fuse_Pin LL_GPIO_PIN_5
#define SUS_Fuse_GPIO_Port GPIOB
#define BSE_Fuse_Pin LL_GPIO_PIN_7
#define BSE_Fuse_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
