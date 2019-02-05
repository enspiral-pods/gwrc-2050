import React from 'react'
import { Box, Flex, Heading } from 'rebass'

import FlexWithExtras from './FlexWithExtras'

export default ({ emissionsDecrease, isMobileUI }) => {
  if (!emissionsDecrease) {
    return null
  }

  const isDecrease = Math.sign(emissionsDecrease) === 1
  const postfix = isDecrease ? 'Decrease' : 'Increase'
  const roundedChange = (emissionsDecrease * 100).toFixed(2)
  const absoluteChange = Math.abs(roundedChange)
  const percentageChange = absoluteChange / 100

  const tooltipWidth = isMobileUI ? 120 : 150
  const barXPointAsWidthPercentage = isDecrease
    ? `${percentageChange * 40 + 40}%`
    : `${(1 - percentageChange) * 40}%`

  const fill =
    emissionsDecrease < -0.25
      ? '#FF5252'
      : emissionsDecrease < 0
        ? '#ECAA2A'
        : emissionsDecrease < 0.25 ? '#00B4C0' : '#00C06F'

  return (
    <Flex
      flexDirection={'column'}
      justifyContent={'center'}
      width={'100%'}
      p={20}
    >
      <svg height={'100%'} width={'100%'}>
        <g>
          <rect x='0' y='45' width='80%' height='5' fill={'black'} />
          <rect
            x={isDecrease ? '40%' : `${(1 - percentageChange) * 40}%`}
            y='45'
            width={`${percentageChange * 40}%`}
            height='5'
            fill={fill}
          />
        </g>
        <g>
          <rect
            x={barXPointAsWidthPercentage}
            y={isMobileUI ? 10 : 0}
            rx={3}
            ry={3}
            width={tooltipWidth}
            height={isMobileUI ? 20 : 30}
            fill={fill}
            transform={`translate(-${tooltipWidth / 2})`}
          />
          <svg
            overflow={'visible'}
            x={barXPointAsWidthPercentage}
            y={30}
            height={5}
          >
            <polygon
              fill={fill}
              points={`0,0 10,0 5,5`}
              transform={`translate(-5)`}
            />
          </svg>
          <text
            x={barXPointAsWidthPercentage}
            y={isMobileUI ? 20 : 15}
            stroke={'white'}
            fill={'white'}
            fontSize={isMobileUI ? '10px' : '14px'}
            fontFamily={'Inter-UI-Regular'}
            alignmentBaseline={'middle'}
            textAnchor={'middle'}
          >{`${Math.round(absoluteChange)}% CO2 ${postfix}`}</text>
        </g>

        <g>
          <rect
            x={'80%'}
            y={isMobileUI ? 70 : 60}
            rx={3}
            ry={3}
            width={tooltipWidth}
            height={isMobileUI ? 20 : 30}
            fill={'#575757'}
            transform={`translate(-${tooltipWidth / 2})`}
          />
          <svg overflow={'visible'} x={'80%'} y={60} height={5}>
            <polygon
              fill={'#575757'}
              points={`0,0 -10,0 -5,-5`}
              transform={`translate(-5)`}
            />
          </svg>
          <text
            x={`80%`}
            y={isMobileUI ? 80 : 75}
            stroke={'white'}
            fill={'white'}
            fontSize={isMobileUI ? '10px' : '14px'}
            fontFamily={'Inter-UI-Regular'}
            alignmentBaseline={'middle'}
            textAnchor={'middle'}
          >
            2050 Target
          </text>
        </g>
      </svg>
    </Flex>
  )
}
