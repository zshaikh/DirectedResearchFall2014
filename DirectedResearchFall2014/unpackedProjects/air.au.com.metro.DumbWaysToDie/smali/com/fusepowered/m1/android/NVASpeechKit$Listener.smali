.class public interface abstract Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioLevelUpdate(D)V
.end method

.method public abstract onAudioSampleUpdate(D)V
.end method

.method public abstract onCustomWordsAdded()V
.end method

.method public abstract onCustomWordsDeleted()V
.end method

.method public abstract onError()V
.end method

.method public abstract onResults()V
.end method

.method public abstract onStateChange(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
.end method
