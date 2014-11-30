.class final Lcom/dolphin/browser/voice/command/b/e;
.super Landroid/content/BroadcastReceiver;
.source "VoiceLanguageUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/voice/command/b/e;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 27
    const-string v1, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/e;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-static {v0}, Lcom/dolphin/browser/voice/command/b/d;->a(Ljava/util/Locale;)Ljava/util/Locale;

    .line 32
    :cond_0
    return-void
.end method
