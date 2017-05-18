"use strict";

// module Mithril

exports.mithrilRequest = function(x) {
  return m.request(x);
};

exports.a = function(p) {
  return function(n) {
      var pp = p[0];
      return m("a", pp, n)
    }
};

exports.i = function(p) {
  return function(n) {
      var pp = p[0];
      return m("i", pp, n)
    }
};

exports.ul = function(p) {
  return function(n) {
      var pp = p[0];
      return m("ul", pp, n)
    }
};

exports.li = function(p) {
  return function(n) {
      var pp = p[0];
      return m("li", pp, n)
    }
};

exports.li_ = function(x) {
    return m("li", x);
};

exports.div_ = function(x) {
    return m("div", x);
};

exports.br = m("br");
exports.hr = m("hr");

exports.p_ = function(x) {
    return m("p", x);
};

exports.h1 = function(x) {
    return m("h1", x)
};

exports.span_ = function(x) {
    return m("span", x)
};

exports.input = function(p) {
  // return function(n) {
      var pp = p[0];
      return m("input", pp)
};

exports.m = function(x) {
  return function(y) {
    return function(z) {
      return m(x, y, z)
    }
  }
};

exports.mp = function(x) {
  return function(proparr) {
    return function(z) {
      // var yy = Object.assign({}, ...y);
      // var yy = $.extend({}, object1, object2);
      // var yy = y[0];
      var props = {};

      for (var i = 0; i < proparr.length; i++) {
        $.extend(props, proparr[i])
      }
      return m(x, props, z)
    }
  }
};

exports.mp_ = function(x) {
    return function(y) {
      return m(x, y)
  }
};

exports.m_ = function(x) {
  return m(x)
};

exports.text = function(s) {
  return s;
}

exports.mc = function(x) {
  return m(x)
};

exports.mithrilMount = function(x) {
  return function(y) {
    return m.mount(document.getElementById(x), y);
  };
};

exports.unsafeMkProps = function(key) {
  return function(value){
    var result = {};
    result[key] = value;
    return result;
  };
}