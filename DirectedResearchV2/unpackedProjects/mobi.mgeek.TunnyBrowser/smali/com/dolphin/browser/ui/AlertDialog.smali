.class public Lcom/dolphin/browser/ui/AlertDialog;
.super Landroid/app/AlertDialog;
.source "AlertDialog.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# instance fields
.field public a:Lcom/dolphin/browser/ui/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 894
    sget v0, Lcom/dolphin/browser/core/R$style;->Theme_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 895
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 899
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 900
    new-instance v0, Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/dolphin/browser/ui/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    .line 901
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 905
    sget v0, Lcom/dolphin/browser/core/R$style;->Theme_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 906
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/ui/AlertDialog;->setCancelable(Z)V

    .line 907
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/ui/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 908
    new-instance v0, Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/dolphin/browser/ui/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    .line 909
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    const/4 v0, 0x1

    .line 1150
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 924
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->b(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/AlertController;->b()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/AlertController;->a()V

    .line 1117
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/ui/AlertController;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/ui/AlertController;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1128
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/dolphin/browser/ui/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1016
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 999
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/dolphin/browser/ui/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1000
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1060
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1061
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1025
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1026
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1074
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1075
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1035
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1036
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1088
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1089
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1045
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1046
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->b(Landroid/view/View;)V

    .line 952
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->a(I)V

    .line 1100
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->a(Z)V

    .line 1111
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 957
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 958
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 941
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 943
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/AlertController;->c(Landroid/view/View;)V

    .line 967
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/view/View;IIII)V

    .line 984
    return-void
.end method
