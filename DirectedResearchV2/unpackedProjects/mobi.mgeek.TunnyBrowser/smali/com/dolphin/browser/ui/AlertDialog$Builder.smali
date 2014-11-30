.class public Lcom/dolphin/browser/ui/AlertDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "AlertDialog.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# instance fields
.field private a:Lcom/dolphin/browser/ui/h;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 144
    sget v0, Lcom/dolphin/browser/core/R$style;->Theme_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v0, Lcom/dolphin/browser/ui/h;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    .line 229
    iput p2, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->b:I

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->c:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->c:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 160
    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 163
    :cond_1
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Lcom/dolphin/browser/ui/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/q;-><init>(Lcom/dolphin/browser/ui/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 175
    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 177
    :cond_2
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 178
    new-instance v0, Lcom/dolphin/browser/ui/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/r;-><init>(Lcom/dolphin/browser/ui/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 189
    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 191
    :cond_3
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 192
    new-instance v0, Lcom/dolphin/browser/ui/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/s;-><init>(Lcom/dolphin/browser/ui/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 203
    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 205
    :cond_4
    new-instance v0, Lcom/dolphin/browser/ui/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/t;-><init>(Lcom/dolphin/browser/ui/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 216
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->q:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->q:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 219
    :cond_5
    return-void

    .line 153
    :cond_6
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 156
    :cond_7
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->f:Landroid/graphics/drawable/Drawable;

    .line 263
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->o:Landroid/graphics/drawable/Drawable;

    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p4, v0, Lcom/dolphin/browser/ui/h;->p:Landroid/content/res/ColorStateList;

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/h;->P:Z

    .line 840
    return-object p0
.end method

.method public b(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/h;->S:Z

    .line 848
    return-object p0
.end method

.method public c(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/h;->T:Z

    .line 853
    return-object p0
.end method

.method public bridge synthetic create()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/dolphin/browser/ui/AlertDialog;
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 866
    new-instance v0, Lcom/dolphin/browser/ui/AlertDialog;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    iget v2, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->b:I

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/ui/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 867
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v2, v0, Lcom/dolphin/browser/ui/AlertDialog;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/h;->a(Lcom/dolphin/browser/ui/AlertController;)V

    .line 868
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-boolean v1, v1, Lcom/dolphin/browser/ui/h;->u:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/AlertDialog;->setCancelable(Z)V

    .line 869
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->v:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 870
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->w:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->w:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 873
    :cond_0
    return-object v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->y:Landroid/widget/ListAdapter;

    .line 538
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 539
    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setCancelable(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCancelable(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/h;->u:Z

    .line 468
    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    .line 559
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->N:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 561
    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->g:Landroid/view/View;

    .line 281
    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setIcon(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p1, v0, Lcom/dolphin/browser/ui/h;->c:I

    .line 317
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->d:Landroid/graphics/drawable/Drawable;

    .line 329
    return-object p0
.end method

.method public synthetic setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 507
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 521
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->h:Ljava/lang/CharSequence;

    .line 293
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->h:Ljava/lang/CharSequence;

    .line 305
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    .line 587
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 588
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->G:[Z

    .line 589
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->I:Z

    .line 590
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    .line 645
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p4, v0, Lcom/dolphin/browser/ui/h;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 646
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->O:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->N:Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->I:Z

    .line 649
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    .line 615
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 616
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->G:[Z

    .line 617
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->I:Z

    .line 618
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->m:Ljava/lang/CharSequence;

    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 398
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->m:Ljava/lang/CharSequence;

    .line 412
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 413
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->q:Ljava/lang/CharSequence;

    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 441
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->q:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 456
    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->v:Landroid/content/DialogInterface$OnCancelListener;

    .line 481
    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->Q:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 776
    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->w:Landroid/content/DialogInterface$OnKeyListener;

    .line 493
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->i:Ljava/lang/CharSequence;

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 356
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->i:Ljava/lang/CharSequence;

    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p2, v0, Lcom/dolphin/browser/ui/h;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 371
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    .line 672
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 673
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p2, v0, Lcom/dolphin/browser/ui/h;->K:I

    .line 674
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->J:Z

    .line 675
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    .line 699
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p4, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 700
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p2, v0, Lcom/dolphin/browser/ui/h;->K:I

    .line 701
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->N:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->J:Z

    .line 703
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->y:Landroid/widget/ListAdapter;

    .line 748
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 749
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p2, v0, Lcom/dolphin/browser/ui/h;->K:I

    .line 750
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->J:Z

    .line 751
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    .line 724
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p3, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 725
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p2, v0, Lcom/dolphin/browser/ui/h;->K:I

    .line 726
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->J:Z

    .line 727
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iget-object v1, v1, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/h;->e:Ljava/lang/CharSequence;

    .line 241
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->e:Ljava/lang/CharSequence;

    .line 253
    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setView(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->A:Landroid/view/View;

    .line 791
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->F:Z

    .line 792
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/dolphin/browser/ui/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput-object p1, v0, Lcom/dolphin/browser/ui/h;->A:Landroid/view/View;

    .line 821
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/h;->F:Z

    .line 822
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p2, v0, Lcom/dolphin/browser/ui/h;->B:I

    .line 823
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p3, v0, Lcom/dolphin/browser/ui/h;->C:I

    .line 824
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p4, v0, Lcom/dolphin/browser/ui/h;->D:I

    .line 825
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/h;

    iput p5, v0, Lcom/dolphin/browser/ui/h;->E:I

    .line 826
    return-object p0
.end method

.method public bridge synthetic show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show()Lcom/dolphin/browser/ui/AlertDialog;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/AlertDialog;

    move-result-object v0

    .line 884
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 887
    return-object v0
.end method
