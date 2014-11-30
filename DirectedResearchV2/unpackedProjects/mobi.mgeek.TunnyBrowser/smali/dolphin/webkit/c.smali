.class Ldolphin/webkit/c;
.super Landroid/app/Dialog;
.source "ActionMode.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/a;


# direct methods
.method public constructor <init>(Ldolphin/webkit/a;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Ldolphin/webkit/c;->a:Ldolphin/webkit/a;

    .line 109
    const v0, 0x1030059

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/c;->setCanceledOnTouchOutside(Z)V

    .line 111
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Ldolphin/webkit/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 117
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 118
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 119
    iget-object v1, p0, Ldolphin/webkit/c;->a:Ldolphin/webkit/a;

    invoke-static {v1}, Ldolphin/webkit/a;->a(Ldolphin/webkit/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldolphin/webkit/c;->setContentView(Landroid/view/View;)V

    .line 121
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 124
    iget-object v1, p0, Ldolphin/webkit/c;->a:Ldolphin/webkit/a;

    invoke-static {v1}, Ldolphin/webkit/a;->b(Ldolphin/webkit/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 129
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 136
    iget-object v0, p0, Ldolphin/webkit/c;->a:Ldolphin/webkit/a;

    invoke-static {v0}, Ldolphin/webkit/a;->c(Ldolphin/webkit/a;)V

    .line 137
    return-void
.end method
