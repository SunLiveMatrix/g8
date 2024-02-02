'' haros of the given time and the corresponding timestamps
'' want to change the timestamps of the first and last
'' relax appaches

declare function get_timestamps_from (byref heros_indios_appaches as string) as string 

type heros_indios_appaches alias "get_timestamps_from"
     allow_halyard_appaches as string
     allow_halyard_outputs as byte
     allow_halyard_popsystem as longint
     allow_halyard_haystack as longint
     allow_halyard_relax as longint
     allow_halyard_sunson as longint
     allow_halyard_actived as longint
end type

#if defined(__WIN32__)
#define __WIN32__
declare operator int __WIN32__(byref __HANDLE__ as longint) as longint

type __HANDLE__ alias "__HANDLE__"
     float_handle as longint
     float_handle_relax as longint
     float_handle_relax_days as longint
     float_handle_relax_nights as longint
     float_handle_relax_nights_days as longint
end type
#else
print "__HANDLE__"
#endif

declare function float_handle (byref relaxation as longint, byref relax as longint, byref counts as longint) as longint

type relaxation alias "float_handle"
     float_handle_kurire as integer
     float_handle_okuran as integer
     float_handle_goku as integer
     float_handle_karire as integer
     float_handle_mamire as integer
     float_handle_kugori as integer
end type


#ifdef __cplusplus
#define __cplusplus
declare function __cplusplus_register( byref count as longint) as longint

enum
     A = 1,
     B = 2,
     C = 3,
     D = 4,
     E = 5,
end enum
#else
print "register( byref count as logint) as longint"
end
#endif

end

declare function __cplusplus_register_long( byref count as longint) as longint

dim changedTakeCount as short
dim changedTakeTable as short
dim changedTakeValue as short

Type snack
    '' Declare a default ctor, copy ctor and normal ctor
    Declare Constructor
    Declare Constructor (ByRef As snack)
    Declare Constructor (As Integer)

    '' Declare a destructor
    Declare Destructor

    ints As Integer Ptr
    numints As Integer
End Type

'' Define a constructor that creates 100 integers
Constructor snack
    ints = New Integer(100)
    numints = 100
End Constructor

'' Define a constructor that copies the integers from another object
Constructor snack (ByRef x As snack)
    ints = New Integer(x.numints)
    numints = x.numints
End Constructor

'' Define a constructor that creates some integers based on a parameter
Constructor snack (n As Integer)
    ints = New Integer(n)
    numints = n
End Constructor

'' Define a destructor that destroys those integers
Destructor snack
    Delete[] ints
End Destructor

Scope
    '' calls snack's default ctor
    Dim a As snack
    Dim x As snack Ptr = New snack

    '' calls snack's copy ctor
    Dim b As snack = a
    Dim y As snack Ptr = New snack(*x)

    '' calls snack's normal ctor
    Dim c As snack = snack(20)
    Dim z As snack Ptr = New snack(20)

    '' calls snack's dtor
    Delete x
    Delete y
    Delete z
End Scope '' <- a, b and c are destroyed here as well
end

