import React from "react"
import PropTypes from "prop-types"
import { ClerkProvider, UserButton } from "@clerk/clerk-react"

class ClerkWrapper extends React.Component {
  render () {
    return <div style={{backgroundColor: "yellow", borderRadius: "50%"}}>
      <ClerkProvider frontendApi="clerk.84a35.916ny.lcl.dev">
        <UserButton />
      </ClerkProvider>
    </div>
  }
}

export default ClerkWrapper
