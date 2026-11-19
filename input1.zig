const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const io = init.io;

    var stdin_buffer: [1024]u8 = undefined;

    var stdin_reader = std.Io.File.stdin().readerStreaming(
        io,
        &stdin_buffer,
    );

    const stdin = &stdin_reader.interface;

    std.debug.print("Enter your name: ", .{});

    const name = try stdin.takeDelimiter('\n') orelse return;

    const clean_name = std.mem.trim(u8, name, "\r");

    std.debug.print("Hello, {s}!\n", .{clean_name});
}
