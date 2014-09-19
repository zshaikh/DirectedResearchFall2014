.class public Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;
.super Ljava/lang/RuntimeException;
.source "IMAdTrackerException.java"


# static fields
.field private static final serialVersionUID:J = -0x4cab460bfe380750L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
