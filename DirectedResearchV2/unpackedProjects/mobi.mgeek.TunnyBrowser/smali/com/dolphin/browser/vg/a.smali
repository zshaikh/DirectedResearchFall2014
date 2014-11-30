.class public Lcom/dolphin/browser/vg/a;
.super Ljava/lang/Object;
.source "VoiceEventHandler.java"


# static fields
.field private static a:Lcom/dolphin/browser/vg/VoiceGestureActivity;


# direct methods
.method public static final a()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dolphin/browser/vg/a;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/dolphin/browser/vg/a;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a()V

    .line 23
    :cond_0
    return-void
.end method

.method public static final a(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/dolphin/browser/vg/a;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    .line 17
    return-void
.end method
