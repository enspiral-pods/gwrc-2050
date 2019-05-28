import React, { Fragment } from 'react'
import { Link } from 'rebass'

import TextRegular from '../components/TextRegular'

export default props => (
  <Fragment>
    <TextRegular
      color={'black'}
      fontSize={18}
      mb={'4px'}
      css={{ whiteSpace: 'pre-line' }}
    >
      {props.source}
    </TextRegular>
    {props.link ? (
      <TextRegular
        color={'black'}
        fontSize={16}
        mb={14}
        css={{ whiteSpace: 'pre-line' }}
      >
        <Link href={props.link} target='_blank'>
          {props.link}
        </Link>
      </TextRegular>
    ) : props.attribution ? (
      <TextRegular
        color={'black'}
        fontSize={16}
        mb={14}
        css={{ whiteSpace: 'pre-line' }}
      >
        {props.attribution}
      </TextRegular>
    ) : (
      <div style={{ marginBottom: '14px' }} />
    )}
  </Fragment>
)
