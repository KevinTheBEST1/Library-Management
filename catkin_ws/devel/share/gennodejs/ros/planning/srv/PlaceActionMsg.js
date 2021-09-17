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

class PlaceActionMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.book_name = null;
      this.bin_name = null;
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
      if (initObj.hasOwnProperty('bin_name')) {
        this.bin_name = initObj.bin_name
      }
      else {
        this.bin_name = '';
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
    // Serializes a message object of type PlaceActionMsgRequest
    // Serialize message field [book_name]
    bufferOffset = _serializer.string(obj.book_name, buffer, bufferOffset);
    // Serialize message field [bin_name]
    bufferOffset = _serializer.string(obj.bin_name, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.string(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaceActionMsgRequest
    let len;
    let data = new PlaceActionMsgRequest(null);
    // Deserialize message field [book_name]
    data.book_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bin_name]
    data.bin_name = _deserializer.string(buffer, bufferOffset);
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
    length += object.bin_name.length;
    length += object.orientation.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/PlaceActionMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8370e30a1d89915978ee51d517c07a20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string book_name
    string bin_name
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
    const resolved = new PlaceActionMsgRequest(null);
    if (msg.book_name !== undefined) {
      resolved.book_name = msg.book_name;
    }
    else {
      resolved.book_name = ''
    }

    if (msg.bin_name !== undefined) {
      resolved.bin_name = msg.bin_name;
    }
    else {
      resolved.bin_name = ''
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

class PlaceActionMsgResponse {
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
    // Serializes a message object of type PlaceActionMsgResponse
    // Serialize message field [result]
    bufferOffset = _serializer.float64(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaceActionMsgResponse
    let len;
    let data = new PlaceActionMsgResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning/PlaceActionMsgResponse';
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
    const resolved = new PlaceActionMsgResponse(null);
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
  Request: PlaceActionMsgRequest,
  Response: PlaceActionMsgResponse,
  md5sum() { return '21274a3fa6a4a3f1484b941e2e263033'; },
  datatype() { return 'planning/PlaceActionMsg'; }
};
