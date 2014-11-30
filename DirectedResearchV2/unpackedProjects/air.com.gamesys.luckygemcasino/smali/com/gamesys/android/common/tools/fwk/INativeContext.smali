.class public interface abstract Lcom/gamesys/android/common/tools/fwk/INativeContext;
.super Ljava/lang/Object;
.source "INativeContext.java"


# virtual methods
.method public abstract addStatusEventListnener(Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;)V
.end method

.method public abstract dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isUnitTesting()Z
.end method

.method public abstract notifyActionDone()V
.end method

.method public abstract setAndroidContext(Landroid/content/Context;)V
.end method

.method public abstract setTestCounDownLatch(Ljava/util/concurrent/CountDownLatch;)V
.end method

.method public abstract setUnitTestingFlag(Z)V
.end method
