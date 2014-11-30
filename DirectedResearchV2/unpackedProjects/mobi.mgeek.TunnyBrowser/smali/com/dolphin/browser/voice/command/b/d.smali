.class public Lcom/dolphin/browser/voice/command/b/d;
.super Ljava/lang/Object;
.source "VoiceLanguageUtil.java"


# static fields
.field private static a:Ljava/util/Locale;

.field private static b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/dolphin/browser/voice/command/b/e;

    invoke-direct {v0}, Lcom/dolphin/browser/voice/command/b/e;-><init>()V

    sput-object v0, Lcom/dolphin/browser/voice/command/b/d;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/dolphin/browser/voice/command/b/d;->a:Ljava/util/Locale;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/voice/command/b/d;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/dolphin/browser/voice/command/b/d;->a:Ljava/util/Locale;

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/dolphin/browser/voice/command/b/d;->a:Ljava/util/Locale;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.GET_LANGUAGE_DETAILS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object v3, Lcom/dolphin/browser/voice/command/b/d;->b:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-static {p0}, Lcom/dolphin/browser/voice/command/b/d;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
