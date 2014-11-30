.class Lcom/dolphin/browser/vg/ui/d;
.super Ljava/lang/Object;
.source "VoicePannelView.java"

# interfaces
.implements Lcom/dolphin/browser/util/ci;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/VoicePannelView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/d;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "Sonar"

    const-string v1, "launchby"

    const-string v2, "reshake"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/d;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Z)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/d;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->a(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    .line 146
    return-void
.end method
