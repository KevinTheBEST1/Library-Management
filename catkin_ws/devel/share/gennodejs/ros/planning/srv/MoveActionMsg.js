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

class MoveActionMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveActionMsgRequest
    // Serialize message field [actions]
    bufferOffset = _serializer.string(obj.actions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveActionMsgRequest
    let len;
    let data = new MoveActionMsgRequest(null);
    // Deserialize message field [actions]
    data.actions = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.actions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/MoveActionMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '736c654215c18c9e1fa35bdcf5f22ffa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string actions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveActionMsgRequest(null);
    if (msg.actions !== undefined) {
      resolved.actions = msg.actions;
    }
    else {
      resolved.actions = ''
    }

    return resolved;
    }
};

class MoveActionMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveActionMsgResponse
    // Serialize message field [success]
    bufferOffset = _serializer.float64(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveActionMsgResponse
    let len;
    let data = new MoveActionMsgResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/MoveActionMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4af43e792493e358c51b0904556e73b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveActionMsgResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveActionMsgRequest,
  Response: MoveActionMsgResponse,
  md5sum() { return 'fb4acfe02b85918b96aa76c50ea0a96e'; },
  datatype() { return 'planning/MoveActionMsg'; }
};
