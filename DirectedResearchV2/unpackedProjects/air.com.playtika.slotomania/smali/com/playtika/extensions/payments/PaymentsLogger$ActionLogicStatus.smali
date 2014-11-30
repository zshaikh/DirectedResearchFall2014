.class public Lcom/playtika/extensions/payments/PaymentsLogger$ActionLogicStatus;
.super Ljava/lang/Object;
.source "PaymentsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/payments/PaymentsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionLogicStatus"
.end annotation


# static fields
.field public static final OK:Ljava/lang/String; = "OK"

.field public static final RECOVERABLE:Ljava/lang/String; = "RECOVERABLE"

.field public static final UNRECOVERABLE:Ljava/lang/String; = "UNRECOVERABLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
