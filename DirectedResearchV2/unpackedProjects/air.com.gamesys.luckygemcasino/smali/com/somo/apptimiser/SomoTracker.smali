.class public interface abstract Lcom/somo/apptimiser/SomoTracker;
.super Ljava/lang/Object;
.source "SomoTracker.java"


# static fields
.field public static final EVENT_SALE:I = 0x4

.field public static final EVENT_SALE_VALUE:I = 0x5

.field public static final EVENT_SIGN_UP:I = 0x6


# virtual methods
.method public abstract stop()V
.end method

.method public abstract track(I)V
.end method

.method public abstract track(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
