.class Ldolphin/webkit/di;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# instance fields
.field a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 459
    iput-object p2, p0, Ldolphin/webkit/di;->a:Landroid/view/View;

    .line 460
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 469
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 470
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 464
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 465
    return-void
.end method
