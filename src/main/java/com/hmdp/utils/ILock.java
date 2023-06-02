package com.hmdp.utils;

public interface ILock {
    /**
     * 尝试获取锁
     * @param timeout 锁的存在时间 ，过期自动释放
     * @return
     */
    boolean tryLock(long timeout);

    /**
     * 释放锁
     */
    void unlock();
}
