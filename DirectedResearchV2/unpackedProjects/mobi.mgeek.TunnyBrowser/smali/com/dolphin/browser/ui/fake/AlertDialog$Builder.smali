.class public Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "AlertDialog.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# instance fields
.field private a:Lcom/dolphin/browser/ui/fake/c;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0041

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v0, Lcom/dolphin/browser/ui/fake/c;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/fake/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    .line 233
    iput p2, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b:I

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->c:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->c:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 164
    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 167
    :cond_1
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Lcom/dolphin/browser/ui/fake/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/fake/l;-><init>(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 179
    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 181
    :cond_2
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Lcom/dolphin/browser/ui/fake/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/fake/m;-><init>(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 193
    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 195
    :cond_3
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 196
    new-instance v0, Lcom/dolphin/browser/ui/fake/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/fake/n;-><init>(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 207
    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 209
    :cond_4
    new-instance v0, Lcom/dolphin/browser/ui/fake/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/fake/o;-><init>(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 220
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->q:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->q:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 223
    :cond_5
    return-void

    .line 157
    :cond_6
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 158
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 160
    :cond_7
    iget-object v0, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p2, Lcom/dolphin/browser/addons/AlertDialogBuilder;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;)Lcom/dolphin/browser/ui/fake/c;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/ui/fake/AlertDialog;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 968
    :goto_0
    return-void

    .line 906
    :cond_0
    new-instance v0, Lcom/dolphin/browser/ui/fake/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/fake/p;-><init>(Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;Lcom/dolphin/browser/ui/fake/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/content/DialogInterface$OnClickListener;II)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->k:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->l:Landroid/content/res/ColorStateList;

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->f:Landroid/graphics/drawable/Drawable;

    .line 267
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->k:Landroid/graphics/drawable/Drawable;

    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p4, v0, Lcom/dolphin/browser/ui/fake/c;->l:Landroid/content/res/ColorStateList;

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/fake/c;->Q:Z

    .line 855
    return-object p0
.end method

.method public a([I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    .line 776
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;II)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->p:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->q:Landroid/content/res/ColorStateList;

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->g:Landroid/graphics/drawable/Drawable;

    .line 277
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->p:Landroid/graphics/drawable/Drawable;

    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p4, v0, Lcom/dolphin/browser/ui/fake/c;->q:Landroid/content/res/ColorStateList;

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/fake/c;->T:Z

    .line 863
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->t:Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p4, v0, Lcom/dolphin/browser/ui/fake/c;->u:Landroid/content/res/ColorStateList;

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/fake/c;->U:Z

    .line 868
    return-object p0
.end method

.method public bridge synthetic create()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/fake/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/dolphin/browser/ui/fake/AlertDialog;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 882
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    iget v2, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b:I

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 883
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/AlertDialog;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/fake/c;->a(Lcom/dolphin/browser/ui/fake/AlertController;)V

    .line 884
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 885
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-boolean v1, v1, Lcom/dolphin/browser/ui/fake/c;->v:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setCancelable(Z)V

    .line 886
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->w:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 887
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->x:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->x:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 892
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Lcom/dolphin/browser/ui/fake/AlertDialog;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-object v0

    .line 893
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->z:Landroid/widget/ListAdapter;

    .line 553
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 554
    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setCancelable(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCancelable(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-boolean p1, v0, Lcom/dolphin/browser/ui/fake/c;->v:Z

    .line 483
    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    .line 574
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->O:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 576
    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->h:Landroid/view/View;

    .line 295
    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setIcon(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p1, v0, Lcom/dolphin/browser/ui/fake/c;->c:I

    .line 331
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->d:Landroid/graphics/drawable/Drawable;

    .line 343
    return-object p0
.end method

.method public synthetic setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    .line 521
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 522
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 536
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->i:Ljava/lang/CharSequence;

    .line 307
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->i:Ljava/lang/CharSequence;

    .line 319
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    .line 602
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 603
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->H:[Z

    .line 604
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->J:Z

    .line 605
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    .line 660
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p4, v0, Lcom/dolphin/browser/ui/fake/c;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 661
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->P:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->O:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->J:Z

    .line 664
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    .line 630
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 631
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->H:[Z

    .line 632
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->J:Z

    .line 633
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->n:Ljava/lang/CharSequence;

    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 412
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->n:Ljava/lang/CharSequence;

    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 427
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->r:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 456
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->r:Ljava/lang/CharSequence;

    .line 470
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 471
    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->w:Landroid/content/DialogInterface$OnCancelListener;

    .line 496
    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->R:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 791
    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->x:Landroid/content/DialogInterface$OnKeyListener;

    .line 508
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->j:Ljava/lang/CharSequence;

    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 370
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->j:Ljava/lang/CharSequence;

    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, v0, Lcom/dolphin/browser/ui/fake/c;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 385
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    .line 687
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 688
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p2, v0, Lcom/dolphin/browser/ui/fake/c;->L:I

    .line 689
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->K:Z

    .line 690
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    .line 714
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p4, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 715
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p2, v0, Lcom/dolphin/browser/ui/fake/c;->L:I

    .line 716
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->O:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->K:Z

    .line 718
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->z:Landroid/widget/ListAdapter;

    .line 763
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 764
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p2, v0, Lcom/dolphin/browser/ui/fake/c;->L:I

    .line 765
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->K:Z

    .line 766
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    .line 739
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p3, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 740
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p2, v0, Lcom/dolphin/browser/ui/fake/c;->L:I

    .line 741
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->K:Z

    .line 742
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iget-object v1, v1, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/ui/fake/c;->e:Ljava/lang/CharSequence;

    .line 245
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->e:Ljava/lang/CharSequence;

    .line 257
    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setView(Landroid/view/View;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->B:Landroid/view/View;

    .line 806
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->G:Z

    .line 807
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput-object p1, v0, Lcom/dolphin/browser/ui/fake/c;->B:Landroid/view/View;

    .line 836
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/fake/c;->G:Z

    .line 837
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p2, v0, Lcom/dolphin/browser/ui/fake/c;->C:I

    .line 838
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p3, v0, Lcom/dolphin/browser/ui/fake/c;->D:I

    .line 839
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p4, v0, Lcom/dolphin/browser/ui/fake/c;->E:I

    .line 840
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a:Lcom/dolphin/browser/ui/fake/c;

    iput p5, v0, Lcom/dolphin/browser/ui/fake/c;->F:I

    .line 841
    return-object p0
.end method

.method public bridge synthetic show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show()Lcom/dolphin/browser/ui/fake/AlertDialog;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/fake/AlertDialog;

    move-result-object v0

    .line 978
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 981
    return-object v0
.end method
