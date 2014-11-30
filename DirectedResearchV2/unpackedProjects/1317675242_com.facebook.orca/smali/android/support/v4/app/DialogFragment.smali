.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field Q:Z

.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:I

.field f:Landroid/app/Dialog;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 72
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    .line 73
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    .line 74
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    .line 75
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    .line 83
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 312
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->o()Landroid/view/View;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_3

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 323
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 324
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    :cond_0
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    :cond_1
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    if-eqz v0, :cond_2

    .line 357
    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    if-nez v0, :cond_3

    .line 360
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    if-nez v0, :cond_4

    .line 363
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    :cond_4
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 366
    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    :cond_5
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 234
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->C:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    .line 236
    if-eqz p1, :cond_0

    .line 237
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    .line 238
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    .line 239
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->c:Z

    .line 240
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    .line 241
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    .line 244
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 234
    goto :goto_0
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    .line 157
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->Q:Z

    .line 158
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    if-ltz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->l()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->a(II)V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->e:I

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->l()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 165
    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->d:Z

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 253
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->e(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->g:Z

    .line 255
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->a:I

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    move-object v0, p0

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 263
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->b:I

    return v0
.end method

.method public j_()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->j_()V

    .line 373
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 376
    :cond_0
    return-void
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->k_()V

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->Q:Z

    .line 340
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 342
    :cond_0
    return-void
.end method

.method public l_()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 383
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->l_()V

    .line 384
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->g:Z

    .line 385
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 389
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->Q:Z

    .line 390
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->f:Landroid/app/Dialog;

    .line 393
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->Q:Z

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->c(Z)V

    .line 306
    :cond_0
    return-void
.end method
