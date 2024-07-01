always @(a or b or c or d or e or f or g or h or p or m) begin
    out1 = a ? (b + c) : (d + e);
    out2 = f ? (g + h) : (p + m);
end

always @(*) begin
    out1 = a ? (b + c) : (d + e);
    out2 = f ? (g + h) : (p + m);
end