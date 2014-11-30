.class final Lcom/somo/apptimiser/SomoPreferences$Preferences;
.super Ljava/lang/Object;
.source "SomoPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Preferences"
.end annotation


# static fields
.field static final DEVICE_ID:Ljava/lang/String; = "device.id"

.field static final DISPATCH_BACKOFF:Ljava/lang/String; = "dispatch_backoff"

.field static final FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field static final REFERRER:Ljava/lang/String; = "referrer"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
