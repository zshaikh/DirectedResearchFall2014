.class public interface abstract Lcom/fusepowered/m1/android/RequestListener;
.super Ljava/lang/Object;
.source "RequestListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/RequestListener$RequestListenerImpl;
    }
.end annotation


# virtual methods
.method public abstract MMAdOverlayClosed(Lcom/fusepowered/m1/android/MMAd;)V
.end method

.method public abstract MMAdOverlayLaunched(Lcom/fusepowered/m1/android/MMAd;)V
.end method

.method public abstract MMAdRequestIsCaching(Lcom/fusepowered/m1/android/MMAd;)V
.end method

.method public abstract onSingleTap(Lcom/fusepowered/m1/android/MMAd;)V
.end method

.method public abstract requestCompleted(Lcom/fusepowered/m1/android/MMAd;)V
.end method

.method public abstract requestFailed(Lcom/fusepowered/m1/android/MMAd;Lcom/fusepowered/m1/android/MMException;)V
.end method
