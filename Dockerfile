FROM 0x01be/mpir:build as build

FROM alpine

COPY --from=build /opt/mpir/ /opt/mpir/

