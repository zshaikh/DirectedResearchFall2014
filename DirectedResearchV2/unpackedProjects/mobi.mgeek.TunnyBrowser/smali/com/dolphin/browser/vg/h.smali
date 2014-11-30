.class Lcom/dolphin/browser/vg/h;
.super Ljava/lang/Object;
.source "VoiceSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/j;

.field final synthetic b:Ljava/util/Locale;

.field final synthetic c:Lcom/dolphin/browser/vg/VoiceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/VoiceSettingsActivity;Lcom/dolphin/browser/voice/command/j;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dolphin/browser/vg/h;->c:Lcom/dolphin/browser/vg/VoiceSettingsActivity;

    iput-object p2, p0, Lcom/dolphin/browser/vg/h;->a:Lcom/dolphin/browser/voice/command/j;

    iput-object p3, p0, Lcom/dolphin/browser/vg/h;->b:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/vg/h;->a:Lcom/dolphin/browser/voice/command/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/j;->c()Ljava/util/Locale;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/dolphin/browser/vg/h;->b:Ljava/util/Locale;

    if-eq v0, v1, :cond_0

    .line 226
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/vg/h;->c:Lcom/dolphin/browser/vg/VoiceSettingsActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/voice/command/j;->a(Landroid/content/Context;Lcom/dolphin/browser/voice/command/l;Z)V

    .line 228
    :cond_0
    return-void
.end method
