export default {
  breakpoints: ['800px'],
  colors: {
    background: '#262D33',
    darkBackground: '#1A1F23',
    red: '#FF5252',
    darkFluroGreen: '#00CC9B',
    lightFluroGreen: '#00FFC2'
  },
  fonts: {
    bold: 'Inter-UI-Bold',
    black: 'Inter-UI-Black',
    medium: 'Inter-UI-Medium',
    regular: 'Inter-UI-Regular'
  },
  buttons: {
    landingGreen: {
      backgroundColor: '#00CC9B',
      cursor: 'pointer',
      ':focus': {
        outline: 0
      },
      ':hover': {
        opacity: 0.7
      }
    },
    landingGray: {
      backgroundColor: '#EBEBEB',
      cursor: 'pointer',
      ':focus': {
        outline: 0
      },
      ':hover': {
        opacity: 0.7
      }
    },
    landingTransparent: {
      backgroundColor: 'transparent',
      cursor: 'pointer',
      border: '3px solid white',
      ':focus': {
        outline: 0
      },
      ':hover': {
        opacity: 0.7
      }
    },
    nav: {
      backgroundColor: 'rgba(0,0,0,0)',
      paddingLeft: 0,
      paddingRight: 0,
      paddingTop: 10,
      paddingBottom: 10,
      cursor: 'pointer',
      ':focus': {
        outline: 0
      },
      ':hover': {
        opacity: 0.7
      }
    },
    leverGroup: {
      paddingLeft: 0,
      paddingRight: 0,
      paddingTop: 0,
      paddingBottom: 0,
      cursor: 'pointer',
      ':focus': {
        outline: 0
      },
      ':hover': {
        opacity: 0.7
      }
    }
  },
  Heading: {
    fontFamily: 'Inter-UI-Bold'
  }
}
