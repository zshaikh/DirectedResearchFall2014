.class Lcom/dolphin/browser/vg/ui/g;
.super Ljava/lang/Object;
.source "VoicePannelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/VoicePannelView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/g;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 561
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/vg/ui/h;

    iget-object v2, p0, Lcom/dolphin/browser/vg/ui/g;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-direct {v1, v2, v3}, Lcom/dolphin/browser/vg/ui/h;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;Lcom/dolphin/browser/vg/ui/d;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/m;Ljava/lang/String;Z)V

    .line 564
    return-void
.end method
