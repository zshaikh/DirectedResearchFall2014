.class public Lcom/dolphin/browser/bookmark/AddBookmarkPage;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "AddBookmarkPage.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/dolphin/browser/gesture/Gesture;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Lcom/dolphin/browser/extensions/ThemeManager;

.field private F:J

.field private G:I

.field private H:J

.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Z

.field private i:Landroid/os/Bundle;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/mgeek/android/ui/ExtendedScrollView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/app/AlertDialog;

.field private x:Lcom/dolphin/browser/bookmark/b/d;

.field private y:Landroid/os/Handler;

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    .line 98
    new-instance v0, Lcom/dolphin/browser/bookmark/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/b;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->C:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/dolphin/browser/bookmark/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/c;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->D:Landroid/view/View$OnClickListener;

    .line 468
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 362
    return-void
.end method

.method private a(J)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 366
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 367
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    .line 368
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 369
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->A:Ljava/lang/String;

    .line 370
    iput-wide v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->F:J

    .line 399
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 404
    :goto_1
    const-string v0, "AddBookmarkPage"

    const-string v1, "change folder %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 406
    :cond_1
    return-void

    .line 374
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "folder"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 379
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->F:J

    .line 381
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->A:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :goto_2
    if-eqz v1, :cond_0

    .line 391
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    goto :goto_0

    .line 383
    :cond_3
    const-wide/16 v2, 0x0

    :try_start_3
    iput-wide v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->F:J

    .line 384
    const-wide/16 v2, 0x2

    iput-wide v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    .line 385
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->A:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 389
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 391
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 394
    :cond_4
    :goto_4
    throw v0

    .line 402
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 392
    :catch_1
    move-exception v1

    goto :goto_4

    .line 389
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method private a(JJLjava/lang/String;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 412
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 417
    iput-wide p3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    .line 418
    cmp-long v0, p3, v2

    if-nez v0, :cond_3

    .line 419
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->A:Ljava/lang/String;

    .line 420
    iput-wide v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->F:J

    .line 426
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e065d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 429
    :cond_2
    const-string v0, "AddBookmarkPage"

    const-string v1, "change folder %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e:Landroid/widget/Button;

    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 422
    :cond_3
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->F:J

    .line 423
    iput-wide p3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    .line 424
    iput-object p5, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->A:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/AddBookmarkPage;JJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    return-wide v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 353
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->setContentView(I)V

    .line 357
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Lcom/dolphin/browser/bookmark/b/d;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->x:Lcom/dolphin/browser/bookmark/b/d;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->y:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lcom/dolphin/browser/bookmark/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/g;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->y:Landroid/os/Handler;

    .line 520
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->w:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const v6, 0x7f0a0180

    const v5, 0x7f0a0173

    const v4, 0x7f020348

    const v3, 0x7f0a0042

    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 641
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 644
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 646
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 648
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 649
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 651
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 655
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 659
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020278

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 663
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02027b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->t:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020331

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 528
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c()V

    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 533
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 534
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 535
    if-nez v0, :cond_0

    if-eqz v3, :cond_6

    .line 536
    :cond_0
    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00bb

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 539
    :cond_1
    if-eqz v3, :cond_2

    .line 540
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00bc

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    move v1, v2

    .line 618
    :cond_3
    :goto_2
    return v1

    :cond_4
    move v0, v2

    .line 532
    goto :goto_0

    :cond_5
    move v3, v2

    .line 533
    goto :goto_1

    .line 546
    :cond_6
    :try_start_0
    invoke-static {v5}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 552
    iget-wide v5, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->H:J

    iget-wide v7, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    .line 553
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v5, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    invoke-static {v0, v5, v6}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v0

    .line 555
    iget v5, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->G:I

    if-eq v0, v5, :cond_7

    .line 556
    iput-boolean v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->h:Z

    .line 560
    :cond_7
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->h:Z

    if-eqz v0, :cond_8

    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "url"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "folder"

    iget-wide v5, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 565
    new-instance v0, Lcom/dolphin/browser/bookmark/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/h;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V

    new-array v4, v1, [Landroid/os/Bundle;

    iget-object v5, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 586
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 603
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->B:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_3

    .line 604
    const/4 v0, 0x0

    .line 606
    :try_start_1
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 609
    :goto_4
    if-eqz v0, :cond_3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 612
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v2

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/gesture/i;->c(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load url:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->B:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v2, v0, v3}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)Z

    goto/16 :goto_2

    .line 547
    :catch_0
    move-exception v0

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c3

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 549
    goto/16 :goto_2

    .line 592
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 593
    const-string v2, "title"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v2, "url"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v2, "folder"

    iget-wide v4, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->z:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 596
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->y:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 597
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/dolphin/browser/bookmark/i;

    invoke-direct {v4, p0, v2}, Lcom/dolphin/browser/bookmark/i;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;Landroid/os/Message;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 600
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 601
    invoke-virtual {p0, v9}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->setResult(I)V

    goto/16 :goto_3

    .line 607
    :catch_1
    move-exception v2

    goto/16 :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 317
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 318
    const-string v0, "bookmarkeditdialog"

    const-string v1, "assign gesture"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->s:Lcom/mgeek/android/ui/ExtendedScrollView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->s:Lcom/mgeek/android/ui/ExtendedScrollView;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/ExtendedScrollView;->requestLayout()V

    goto :goto_0

    .line 322
    :cond_1
    if-nez p1, :cond_2

    .line 323
    const-string v0, "bookmarkeditdialog"

    const-string v1, "assign gesture"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->B:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_3

    .line 330
    const-string v0, "bookmarkeditdialog"

    const-string v1, "assign gesture"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 335
    :cond_3
    const-string v0, "bookmarkeditdialog"

    const-string v1, "assign gesture"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const v10, 0x7f0e052e

    const v9, 0x7f0e01ee

    const v8, 0x7f0a0095

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 135
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 137
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 138
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->b()V

    .line 139
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->n:Landroid/widget/TextView;

    .line 140
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e053c

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(I)V

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->C:Landroid/view/View$OnClickListener;

    .line 143
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->f:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    .line 149
    const-wide/16 v0, 0x0

    .line 150
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 151
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "bookmark"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_2

    .line 153
    iput-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    .line 154
    iput-boolean v7, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->h:Z

    .line 155
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-direct {p0, v9}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(I)V

    .line 156
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->f:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "folder"

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 181
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "url"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->j:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v2

    move-wide v11, v0

    move-wide v1, v11

    .line 184
    :goto_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->c:Landroid/widget/EditText;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v8}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 189
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a:Landroid/view/View;

    .line 190
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->b:Landroid/view/View;

    .line 192
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d:Landroid/widget/EditText;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v8}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 199
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e:Landroid/widget/Button;

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0174

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f02003b

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e:Landroid/widget/Button;

    new-instance v3, Lcom/dolphin/browser/bookmark/d;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/bookmark/d;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->k:Landroid/widget/TextView;

    .line 218
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->l:Landroid/widget/TextView;

    .line 219
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->m:Landroid/widget/TextView;

    .line 221
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->g:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 225
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f0200b2

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 232
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->o:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->o:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->o:Landroid/view/View;

    new-instance v3, Lcom/dolphin/browser/bookmark/e;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/bookmark/e;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->p:Landroid/widget/TextView;

    .line 264
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->q:Landroid/widget/ImageView;

    .line 265
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->r:Landroid/widget/ImageView;

    .line 267
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ExtendedScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->s:Lcom/mgeek/android/ui/ExtendedScrollView;

    .line 268
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->t:Landroid/view/View;

    .line 269
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->u:Landroid/widget/ImageView;

    .line 270
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->v:Landroid/widget/ImageView;

    .line 272
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->d()V

    .line 273
    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(J)V

    .line 274
    iput-wide v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->H:J

    .line 275
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->G:I

    .line 277
    return-void

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    :try_start_0
    invoke-static {v3}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 164
    :goto_2
    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_0

    .line 168
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "title"

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "_id"

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->i:Landroid/os/Bundle;

    const-string v4, "folder"

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    iput-boolean v7, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->h:Z

    .line 174
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-direct {p0, v9}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(I)V

    .line 175
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->f:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    move-object v4, v2

    move-wide v11, v0

    move-wide v1, v11

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 437
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 438
    new-instance v0, Lcom/dolphin/browser/bookmark/b/d;

    invoke-static {p0}, Lcom/dolphin/browser/bookmark/bt;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/bookmark/b/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->x:Lcom/dolphin/browser/bookmark/b/d;

    .line 440
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0557

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->x:Lcom/dolphin/browser/bookmark/b/d;

    new-instance v2, Lcom/dolphin/browser/bookmark/f;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/f;-><init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->w:Landroid/app/AlertDialog;

    .line 460
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->w:Landroid/app/AlertDialog;

    .line 462
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 282
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStart()V

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_1

    .line 292
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->B:Lcom/dolphin/browser/gesture/Gesture;

    .line 293
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 295
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->r:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->E:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0090

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v5, v3}, Lcom/dolphin/browser/gesture/Gesture;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 300
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 302
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->r:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :cond_0
    :goto_1
    return-void

    .line 286
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 306
    :cond_1
    iput-object v1, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->B:Lcom/dolphin/browser/gesture/Gesture;

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
