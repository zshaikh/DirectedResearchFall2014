.class Lmobi/mgeek/TunnyBrowser/hb;
.super Ljava/lang/Object;
.source "SpeedDialChooser.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/gy;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/gy;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hb;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 247
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hb;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->c(Lmobi/mgeek/TunnyBrowser/gy;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
