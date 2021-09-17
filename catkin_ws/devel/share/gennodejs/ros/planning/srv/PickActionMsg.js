// Auto-generated. Do not edit!

// (in-package planning.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PickActionMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.book_name = null;
      this.x = null;
      this.y = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('book_name')) {
        this.book_name = initObj.book_name
      }
      else {
        this.book_name = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickActionMsgRequest
    // Serialize message field [book_name]
    bufferOffset = _serializer.string(obj.book_name, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.string(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickActionMsgRequest
    let len;
    let data = new PickActionMsgRequest(null);
    // Deserialize message field [book_name]
    data.book_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.book_name.length;
    length += object.orientation.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/PickActionMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7660ff960644fb42b1526dadbb4d22e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string book_name
    float64 x
    float64 y
    string orientation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickActionMsgRequest(null);
    if (msg.book_name !== undefined) {
      resolved.book_name = msg.book_name;
    }
    else {
      resolved.book_name = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = ''
    }

    return resolved;
    }
};

class PickActionMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickActionMsgResponse
    // Serialize message field [result]
    bufferOffset = _serializer.float64(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickActionMsgResponse
    let len;
    let data = new PickActionMsgResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/PickActionMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '254fb2d8c4e08eff5dc6a560ed51dd52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickActionMsgResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: PickActionMsgRequest,
  Response: PickActionMsgResponse,
  md5sum() { return '3ab27bcdd62db4306af656bdabcd225b'; },
  datatype() { return 'planning/PickActionMsg'; }
};
