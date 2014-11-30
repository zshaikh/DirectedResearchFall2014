.class Lcom/dolphin/browser/vg/d;
.super Ljava/lang/Object;
.source "VoiceGestureActivity.java"

# interfaces
.implements Lcom/dolphin/browser/vg/ui/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/VoiceGestureActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/dolphin/browser/vg/d;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/vg/d;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->c(Lcom/dolphin/browser/vg/VoiceGestureActivity;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/vg/d;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-static {v0, p1}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a(Lcom/dolphin/browser/vg/VoiceGestureActivity;I)V

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/vg/d;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->d(Lcom/dolphin/browser/vg/VoiceGestureActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/vg/d;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a(Lcom/dolphin/browser/vg/VoiceGestureActivity;Z)Z

    goto :goto_0

    .line 249
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/vg/d;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-virtual {v0, v2, p1}, Lcom/dolphin/browser/vg/a/a;->a(Landroid/content/Context;I)V

    .line 250
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/d;

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/d;->a(Z)V

    goto :goto_0
.end method
