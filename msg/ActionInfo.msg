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

# action type, that is an enum and with msg we can only define it like this
# remember to add here if we add new type in Action.h and ActionPrimitive.h ..
uint8 PRIMITIVE = 0
uint8 GENERIC = 1 
uint8 COMPOSED = 2 
uint8 TIMED = 3
uint8 NONE = 4
uint8 action_type

#name of the ros action (used as namespaces for rosAction topics)
string ros_action_name

## subsequent info used only for primitives, so for actionBoxesLayout 
## (derived from ActionLayout)

uint8 PRIMITIVE_PINCHSTRONG = 0
uint8 PRIMITIVE_PINCHWEAK = 1
uint8 PRIMITIVE_MULTIPLEPINCHSTRONG = 2
uint8 PRIMITIVE_TRIG = 3
uint8 PRIMITIVE_TIPFLEX = 4
uint8 PRIMITIVE_FINGFLEX = 5
uint8 PRIMITIVE_MORETIPS = 6
uint8 PRIMITIVE_NONE = 7
uint8 actionPrimitive_type

# names of the selectable fingers/joints (eg 2 finger for pinch) if any
string[] selectable_names

# number of necessary selectable_names to select before sending message
# (eg 1 for trig, 2 for pinch, 1 for moreTips)
uint8 max_selectable


## used only for timed.. better to make a new msg?
float64[] before_margins
float64[] after_margins
string[] inner_actions
