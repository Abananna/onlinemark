---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by qiaziwei.
--- DateTime: 2023/5/20 11:52
---

if (redis.call('GET', KEYS[1]) == ARGV[1]) then
    -- 一致，则删除锁
    return redis.call('DEL', KEYS[1])
end
-- 不一致，则直接返回
return 0