.class public final Lcom/timgroup/statsd/StatsDClientException;
.super Ljava/lang/RuntimeException;
.source "StatsDClientException.java"


# static fields
.field private static final serialVersionUID:J = 0x2c3a19680ab1efcfL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
