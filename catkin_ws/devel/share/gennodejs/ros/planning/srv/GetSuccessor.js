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

class GetSuccessorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.direction = null;
      this.action = null;
    }
    else {
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
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSuccessorRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSuccessorRequest
    let len;
    let data = new GetSuccessorRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.direction.length;
    length += object.action.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/GetSuccessorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84302870d3081656f4e4e507ddd9c093';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    string direction
    string action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSuccessorRequest(null);
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

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    return resolved;
    }
};

class GetSuccessorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.direction = null;
      this.g_cost = null;
    }
    else {
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
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
      if (initObj.hasOwnProperty('g_cost')) {
        this.g_cost = initObj.g_cost
      }
      else {
        this.g_cost = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSuccessorResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    // Serialize message field [g_cost]
    bufferOffset = _serializer.float64(obj.g_cost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSuccessorResponse
    let len;
    let data = new GetSuccessorResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [g_cost]
    data.g_cost = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.direction.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/GetSuccessorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd19980334199bcada5414fa0660404c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    string direction
    float64 g_cost
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSuccessorResponse(null);
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

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    if (msg.g_cost !== undefined) {
      resolved.g_cost = msg.g_cost;
    }
    else {
      resolved.g_cost = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSuccessorRequest,
  Response: GetSuccessorResponse,
  md5sum() { return '3f69bbdba57b08f704b0827c3651a8d8'; },
  datatype() { return 'planning/GetSuccessor'; }
};
