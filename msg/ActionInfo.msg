## Info message, used in the actionInfo service, to pass info
## about possible actions to the gui

# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq

#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp

# name of the action
string action_name

# name of the topic where we have to write for this action
string topic_name

# names of the selectable fingers/joints (eg 2 finger for pinch) if any
string[] selectable_names
