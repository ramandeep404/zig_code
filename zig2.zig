const std = @import("std");

pub fn main() !void {
    const age: i32 = 7;

    if (age >= 18) {
        std.debug.print("Adult\n", .{});
    } else {
        std.debug.print("Minor\n", .{});
    }
}
