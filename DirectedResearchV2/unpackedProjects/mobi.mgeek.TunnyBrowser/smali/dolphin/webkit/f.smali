.class Ldolphin/webkit/f;
.super Landroid/view/View;
.source "AutoCompletePopup.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/f;->setFocusable(Z)V

    .line 40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ldolphin/webkit/f;->setVisibility(I)V

    .line 41
    return-void
.end method
