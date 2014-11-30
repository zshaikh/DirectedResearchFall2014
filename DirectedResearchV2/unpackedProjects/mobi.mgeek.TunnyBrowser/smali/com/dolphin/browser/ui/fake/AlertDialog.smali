.class public Lcom/dolphin/browser/ui/fake/AlertDialog;
.super Landroid/app/AlertDialog;
.source "AlertDialog.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# instance fields
.field public a:Lcom/dolphin/browser/ui/fake/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 988
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0041

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 989
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 993
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 994
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/dolphin/browser/ui/fake/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    .line 995
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 999
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0041

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1000
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setCancelable(Z)V

    .line 1001
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1002
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/dolphin/browser/ui/fake/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    .line 1003
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1263
    :try_start_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1248
    const/4 v1, 0x0

    .line 1250
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1254
    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 1254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1019
    const/4 v0, 0x0

    return-object v0
.end method

.method public getButtonTextView(I)Landroid/widget/TextView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->b(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->c()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->a()V

    .line 1218
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertController;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1223
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
    .line 1228
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertController;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1229
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
    .line 1116
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/dolphin/browser/ui/fake/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1117
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/dolphin/browser/ui/fake/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1101
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1161
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1162
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1126
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1127
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1175
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1176
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1136
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1137
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1189
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1190
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1146
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1147
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Landroid/view/View;)V

    .line 1053
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->a(I)V

    .line 1201
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1207
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Z)V

    .line 1212
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 1059
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1042
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 1044
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertController;->c(Landroid/view/View;)V

    .line 1068
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/view/View;IIII)V

    .line 1085
    return-void
.end method
