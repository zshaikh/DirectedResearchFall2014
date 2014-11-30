.class public Lcom/sgn/mobile/GCMBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    const-string v0, "com.sgn.mobile.GCMIntentService"

    return-object v0
.end method
