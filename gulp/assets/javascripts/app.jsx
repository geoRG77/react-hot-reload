import React from 'react'

export class Counter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {count: props.initialCount};
  }
  tick() {
    this.setState({count: this.state.count + 1});
  }
  render() {
    return (
      <a className='btn btn-primary' onClick={this.tick.bind(this)}>
        Click here #{this.state.count}
      </a>
    );
  }
}
Counter.propTypes = { initialCount: React.PropTypes.number };
Counter.defaultProps = { initialCount: 0 };

React.render(<Counter />, document.getElementById('react-test'));
