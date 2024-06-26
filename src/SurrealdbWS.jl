module SurrealdbWS

export Surreal,
connect,
signin,
signup,
use,
select,
create,
insert,
update,
merge,
query,
patch,
delete,
close,
ping,
authenticate,
invalidate,
set,
unset,
set_format,
info

import Base.Threads: @spawn
import Base64: base64encode
import HTTP.Sockets: send
import HTTP.WebSockets: WebSocket, close, receive, isclosed, CloseFrameBody
import HTTP.openraw

include("surreal.jl")
include("connection.jl")
include("send_receive.jl")
include("query.jl")

end