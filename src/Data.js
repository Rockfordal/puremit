exports.getVnodeName = function(vnode) {
  return vnode.state.name;
};

exports.setState = function(state) {
  return function(vnode) {
    console.log("vnode: ", vnode)
    vnode.state = state
  }
}

exports.toggla = function() {
  console.log("toggelido!");
}