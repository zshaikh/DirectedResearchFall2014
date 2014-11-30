.class Lcom/dolphin/browser/vg/ui/f;
.super Ljava/lang/Object;
.source "VoicePannelView.java"

# interfaces
.implements Lcom/dolphin/browser/g/f;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/VoicePannelView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/f;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 553
    invoke-static {}, Lcom/dolphin/browser/voice/command/c/a;->a()Lcom/dolphin/browser/voice/command/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/c/a;->a(Landroid/location/Location;)V

    .line 554
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 548
    invoke-static {}, Lcom/dolphin/browser/voice/command/c/a;->a()Lcom/dolphin/browser/voice/command/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/voice/command/c/a;->a(Landroid/location/Location;)V

    .line 549
    return-void
.end method
