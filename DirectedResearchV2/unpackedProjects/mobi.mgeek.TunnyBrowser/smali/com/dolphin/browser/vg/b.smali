.class Lcom/dolphin/browser/vg/b;
.super Ljava/lang/Object;
.source "VoiceGestureActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/VoiceGestureActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/VoiceGestureActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dolphin/browser/vg/b;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/vg/b;->a:Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/VoiceGestureActivity;->a(Lcom/dolphin/browser/vg/VoiceGestureActivity;)Lcom/dolphin/browser/vg/ui/PannelViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->c()V

    .line 167
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
