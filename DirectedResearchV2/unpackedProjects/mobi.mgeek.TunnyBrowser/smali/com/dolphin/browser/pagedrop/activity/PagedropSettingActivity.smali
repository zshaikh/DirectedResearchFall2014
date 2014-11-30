.class public Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "PagedropSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static l:Landroid/app/AlertDialog;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Z

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->l:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b:Landroid/view/View;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->d:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->f:Landroid/widget/ImageView;

    .line 63
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    .line 67
    iput-boolean v2, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->j:Z

    .line 68
    iput-boolean v2, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->k:Z

    .line 441
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->m:Landroid/widget/RelativeLayout;

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->n:Landroid/widget/TextView;

    .line 135
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->o:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/l;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/pagedrop/activity/l;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 278
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->k:Z

    .line 283
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const-string v0, "DBS Page Drop"

    const-string v1, "edit"

    const-string v2, "name"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;I)V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 174
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 244
    const-string v0, ""

    .line 245
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 246
    packed-switch p2, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/pagedrop/activity/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 269
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0a01a0

    .line 153
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->n:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00af

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->m:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->o:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020277

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020274

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 161
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a018e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0095

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 166
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->f:Landroid/widget/ImageView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020201

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Landroid/widget/ImageView;I)V

    .line 169
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v2, 0x34

    const/4 v3, 0x0

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 326
    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-static {v0, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    const/high16 v1, 0x41d00000

    invoke-static {v0, v1}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 335
    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/pagedrop/activity/o;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Lcom/dolphin/browser/pagedrop/activity/l;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/pagedrop/activity/o;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->k:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    iput-boolean v2, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->j:Z

    .line 233
    iput-boolean v2, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->k:Z

    .line 234
    new-instance v0, Lcom/dolphin/browser/pagedrop/activity/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/pagedrop/activity/p;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Lcom/dolphin/browser/pagedrop/activity/l;)V

    .line 235
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/activity/p;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 237
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 240
    const-string v0, ""

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 403
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 404
    sget-object v1, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->l:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->l:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    sget-object v1, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->l:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 407
    :cond_0
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v1, 0x7f070010

    new-instance v2, Lcom/dolphin/browser/pagedrop/activity/m;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/pagedrop/activity/m;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->l:Landroid/app/AlertDialog;

    .line 437
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 438
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/16 v4, 0x34

    const/4 v3, 0x1

    .line 297
    if-nez p1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :pswitch_1
    if-eqz p3, :cond_0

    .line 213
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 190
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08028a

    if-ne v0, v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e()V

    .line 198
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08028e

    if-ne v0, v1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->f()V

    .line 194
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 196
    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0446

    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->requestWindowFeature(I)Z

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->setContentView(I)V

    .line 77
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a()V

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08028a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a:Landroid/view/View;

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08028e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b:Landroid/view/View;

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08028c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    .line 84
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->f:Landroid/widget/ImageView;

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08028b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->h:Landroid/widget/TextView;

    .line 87
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080291

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->i:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 89
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    const-string v0, "pagedrop_pref"

    invoke-virtual {p0, v0, v3}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    const-string v1, "user_name"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c:Ljava/lang/String;

    .line 102
    const-string v1, "head_imgname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->d:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(I)V

    .line 119
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b()V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/dolphin/browser/pagedrop/activity/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/pagedrop/activity/n;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Lcom/dolphin/browser/pagedrop/activity/l;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/activity/n;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    const/16 v0, 0x42

    if-ne v0, p2, :cond_1

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 463
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 465
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Ljava/lang/String;I)V

    :cond_0
    move v0, v1

    .line 470
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onPause()V

    .line 149
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->d()V

    .line 150
    return-void
.end method
