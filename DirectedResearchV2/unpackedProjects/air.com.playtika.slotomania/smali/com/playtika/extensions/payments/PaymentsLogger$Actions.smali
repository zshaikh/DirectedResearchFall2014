.class public Lcom/playtika/extensions/payments/PaymentsLogger$Actions;
.super Ljava/lang/Object;
.source "PaymentsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/payments/PaymentsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Actions"
.end annotation


# static fields
.field public static final BUY_CHIP:Ljava/lang/String; = "BUY_CHIP"

.field public static final GET_CHIPS_INFO:Ljava/lang/String; = "GET_CHIPS_INFO"

.field public static final GET_TRANS_STATUS:Ljava/lang/String; = "GET_TRANS_STATUS"

.field public static final GET_TRANS_STATUS_MAX_WAIT:Ljava/lang/String; = "GET_TRANS_STATUS_MAX_WAIT"

.field public static final LOCAL_TRANSACTION_CACHE:Ljava/lang/String; = "LOCAL_TRANSACTION_CACHE"

.field public static final STORE_INIT_PURCHASE:Ljava/lang/String; = "STORE_INIT_PURCHASE"

.field public static final STORE_TRANSACTION_CONFIRMED:Ljava/lang/String; = "STORE_TRANSACTION_CONFIRMED"

.field public static final VERIFY_RECEIPT:Ljava/lang/String; = "VERIFY_RECEIPT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
