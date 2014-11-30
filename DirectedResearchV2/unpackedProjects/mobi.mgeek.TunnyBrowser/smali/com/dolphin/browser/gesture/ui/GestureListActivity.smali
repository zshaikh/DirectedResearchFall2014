.class public Lcom/dolphin/browser/gesture/ui/GestureListActivity;
.super Landroid/view/CustomMenuListActivity;
.source "GestureListActivity.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/dolphin/browser/gesture/y;


# static fields
.field public static final d:I

.field public static final e:I


# instance fields
.field protected f:I

.field private g:Lcom/dolphin/browser/extensions/ThemeManager;

.field private h:Lcom/dolphin/browser/gesture/a;

.field private i:Lcom/dolphin/browser/gesture/i;

.field private j:Lcom/dolphin/browser/gesture/ui/w;

.field private k:Lcom/dolphin/browser/gesture/ui/x;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/EditText;

.field private n:Z

.field private o:I

.field private p:Lcom/dolphin/browser/gesture/GestureView;

.field private q:Lcom/dolphin/browser/gesture/ui/v;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->d:I

    .line 90
    const/16 v0, 0x37

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 80
    invoke-direct {p0}, Landroid/view/CustomMenuListActivity;-><init>()V

    .line 618
    iput v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->o:I

    .line 619
    iput-object v2, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->p:Lcom/dolphin/browser/gesture/GestureView;

    .line 653
    new-instance v0, Lcom/dolphin/browser/gesture/ui/v;

    invoke-direct {v0, p0, v2}, Lcom/dolphin/browser/gesture/ui/v;-><init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Lcom/dolphin/browser/gesture/ui/s;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->q:Lcom/dolphin/browser/gesture/ui/v;

    .line 724
    iput v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->r:I

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f0a0062

    .line 461
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02000a

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v2, v4}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    return-void
.end method

.method private a(Lcom/dolphin/browser/gesture/a/a;)V
    .locals 4

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/dolphin/browser/gesture/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "gesture"

    const-string v2, "edit"

    const-string v3, "loadpage"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    return-void

    .line 282
    :cond_0
    const-string v1, "gesture"

    const-string v2, "edit"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 475
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 477
    return-void
.end method

.method private b(Lcom/dolphin/browser/gesture/a/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/dolphin/browser/gesture/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const-string v1, "gesture"

    const-string v2, "delete"

    const-string v3, "loadpage"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->i:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/i;->c(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->j:Lcom/dolphin/browser/gesture/ui/w;

    .line 303
    invoke-virtual {v0, v4}, Lcom/dolphin/browser/gesture/ui/w;->setNotifyOnChange(Z)V

    .line 304
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/ui/w;->remove(Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/w;->notifyDataSetChanged()V

    .line 307
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e02f1

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void

    .line 296
    :cond_0
    const-string v1, "gesture"

    const-string v2, "delete"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/x;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/x;->b(Z)Z

    .line 319
    :cond_0
    new-instance v0, Lcom/dolphin/browser/gesture/ui/x;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/gesture/ui/x;-><init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Z)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/ui/x;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    .line 320
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/ui/w;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->j:Lcom/dolphin/browser/gesture/ui/w;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 184
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/i;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->i:Lcom/dolphin/browser/gesture/i;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->h:Lcom/dolphin/browser/gesture/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a;->c()Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const-string v2, "new_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 217
    if-nez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e()Landroid/view/View;
    .locals 6

    .prologue
    .line 394
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030005

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 395
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 396
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 397
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080049

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 398
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08004a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 399
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0185

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 401
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 402
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b0089

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 403
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 405
    invoke-direct {p0, v3}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Landroid/view/View;)V

    .line 406
    const-string v2, "http://"

    .line 407
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 410
    if-eqz v1, :cond_1

    .line 411
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 417
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-boolean v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->n:Z

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 421
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 422
    new-instance v1, Lcom/dolphin/browser/gesture/ui/t;

    invoke-direct {v1, p0, v4}, Lcom/dolphin/browser/gesture/ui/t;-><init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 432
    new-instance v1, Lcom/dolphin/browser/gesture/ui/u;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/gesture/ui/u;-><init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->m:Landroid/widget/EditText;

    .line 456
    iput-object v3, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->l:Landroid/view/View;

    .line 457
    return-object v3

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->h:Lcom/dolphin/browser/gesture/a;

    return-object v0
.end method

.method private f()Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f020350

    .line 480
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 481
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 482
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 483
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 484
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a01a0

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 485
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020146

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 487
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02027b

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080266

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 490
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 491
    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    return-object v2
.end method

.method static synthetic f(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/extensions/ThemeManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 710
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 711
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 712
    if-gt v0, v3, :cond_0

    .line 722
    :goto_0
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    .line 716
    sub-int v4, v3, v2

    if-ge v0, v4, :cond_1

    .line 717
    sub-int v0, v3, v2

    .line 719
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 720
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureView;

    .line 721
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->q:Lcom/dolphin/browser/gesture/ui/v;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/ui/v;->a(Lcom/dolphin/browser/gesture/GestureView;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->g()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->j:Lcom/dolphin/browser/gesture/ui/w;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/w;->getCount()I

    move-result v0

    .line 193
    if-ne p3, v0, :cond_1

    .line 194
    const-string v0, "gesture"

    const-string v1, "click"

    const-string v2, "moreactions"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    invoke-virtual {p0, v0, v3}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ne p3, v1, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->d()V

    goto :goto_0

    .line 199
    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->i:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->f()V

    .line 201
    invoke-direct {p0, v3}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b(Z)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/a/a;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/gesture/GestureView;)V
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/GestureView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->o:I

    .line 624
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->p:Lcom/dolphin/browser/gesture/GestureView;

    .line 625
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->n:Z

    .line 391
    return-void
.end method

.method public b(Lcom/dolphin/browser/gesture/GestureView;)V
    .locals 5

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 633
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 634
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 635
    if-gt v4, v3, :cond_0

    .line 650
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/GestureView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 639
    sub-int/2addr v0, v2

    .line 640
    add-int/lit8 v0, v0, 0x1

    .line 641
    if-ltz v0, :cond_1

    if-lt v0, v4, :cond_2

    .line 642
    :cond_1
    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 644
    :cond_2
    :goto_1
    sub-int v4, v3, v2

    if-ge v0, v4, :cond_3

    .line 645
    sub-int v0, v3, v2

    .line 647
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 648
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureView;

    .line 649
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->q:Lcom/dolphin/browser/gesture/ui/v;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/ui/v;->a(Lcom/dolphin/browser/gesture/GestureView;)V

    goto :goto_0

    .line 642
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(Lcom/dolphin/browser/gesture/GestureView;)V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/view/CustomMenuListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b(Z)V

    .line 231
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->setResult(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 763
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->p:Lcom/dolphin/browser/gesture/GestureView;

    if-eqz v0, :cond_0

    .line 764
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->p:Lcom/dolphin/browser/gesture/GestureView;

    if-ne v0, v1, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->g()V

    .line 769
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 262
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 273
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/CustomMenuListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 266
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/a/a;)V

    move v0, v1

    .line 267
    goto :goto_0

    .line 269
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b(Lcom/dolphin/browser/gesture/a/a;)V

    move v0, v1

    .line 270
    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/view/CustomMenuListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 111
    invoke-static {}, Lcom/dolphin/browser/gesture/a;->a()Lcom/dolphin/browser/gesture/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->h:Lcom/dolphin/browser/gesture/a;

    .line 112
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 115
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 118
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->setContentView(I)V

    .line 120
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->i:Lcom/dolphin/browser/gesture/i;

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 126
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->e()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 129
    iput v4, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f:I

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 136
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 138
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 139
    new-instance v1, Lcom/dolphin/browser/gesture/ui/s;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/gesture/ui/s;-><init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 165
    new-instance v0, Lcom/dolphin/browser/gesture/ui/w;

    invoke-direct {v0, p0, p0}, Lcom/dolphin/browser/gesture/ui/w;-><init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->j:Lcom/dolphin/browser/gesture/ui/w;

    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->j:Lcom/dolphin/browser/gesture/ui/w;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Landroid/widget/ListAdapter;)V

    .line 167
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 168
    invoke-direct {p0, v4}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b(Z)V

    .line 169
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->c()V

    .line 170
    return-void

    .line 131
    :cond_1
    iput v5, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 250
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 251
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "help"

    if-eq v1, v2, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 253
    const/4 v0, 0x2

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02f2

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 254
    const/4 v0, 0x4

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02f0

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 256
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/view/CustomMenuListActivity;->onDestroy()V

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/x;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/x;->b(Z)Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->k:Lcom/dolphin/browser/gesture/ui/x;

    .line 244
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/view/CustomMenuListActivity;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->m:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->m:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b(Landroid/view/View;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 729
    iget v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->r:I

    if-ne v0, p2, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iput p2, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->r:I

    .line 734
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 736
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 737
    if-le v0, v1, :cond_0

    .line 740
    iget v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->o:I

    if-ltz v0, :cond_0

    .line 743
    iget v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->o:I

    if-lt v0, p2, :cond_2

    iget v0, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->o:I

    add-int v2, p2, p3

    if-lt v0, v2, :cond_0

    .line 746
    :cond_2
    if-ge p2, v1, :cond_3

    .line 747
    sub-int v0, v1, p2

    .line 751
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 752
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureView;

    .line 754
    if-eqz v0, :cond_0

    .line 755
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->q:Lcom/dolphin/browser/gesture/ui/v;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/ui/v;->removeMessages(I)V

    .line 756
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->q:Lcom/dolphin/browser/gesture/ui/v;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/ui/v;->a(Lcom/dolphin/browser/gesture/GestureView;)V

    goto :goto_0

    .line 749
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 705
    return-void
.end method
