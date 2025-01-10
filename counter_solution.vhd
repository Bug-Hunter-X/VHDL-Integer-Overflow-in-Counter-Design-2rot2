```vhdl
ENTITY counter_safe IS
    PORT (
        clk : IN  STD_LOGIC;
        rst : IN  STD_LOGIC;
        count : OUT INTEGER RANGE 0 TO 15
    );
END ENTITY;

ARCHITECTURE behavioral OF counter_safe IS
    SIGNAL internal_count : INTEGER RANGE 0 TO 15 := 0;
BEGIN
    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            internal_count <= 0;
        ELSIF rising_edge(clk) THEN
            internal_count <= (internal_count + 1) MOD 16;  -- Use modulo operator to prevent overflow
        END IF;
    END PROCESS;
    count <= internal_count; 
END ARCHITECTURE;
```