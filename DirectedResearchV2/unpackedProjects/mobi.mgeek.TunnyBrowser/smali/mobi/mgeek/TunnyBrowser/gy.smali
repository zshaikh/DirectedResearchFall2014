.class public Lmobi/mgeek/TunnyBrowser/gy;
.super Landroid/app/Dialog;
.source "SpeedDialChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static a:Lmobi/mgeek/TunnyBrowser/gy;

.field private static b:Landroid/content/DialogInterface$OnDismissListener;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:J

.field private o:I

.field private p:Landroid/widget/ListView;

.field private q:Lmobi/mgeek/TunnyBrowser/he;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Lcom/dolphin/browser/ui/launcher/g;

.field private w:Landroid/text/TextWatcher;

.field private x:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lmobi/mgeek/TunnyBrowser/gy;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0056

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->e:I

    .line 293
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hc;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/hc;-><init>(Lmobi/mgeek/TunnyBrowser/gy;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->w:Landroid/text/TextWatcher;

    .line 318
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hd;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/hd;-><init>(Lmobi/mgeek/TunnyBrowser/gy;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->x:Landroid/text/TextWatcher;

    .line 132
    iput p2, p0, Lmobi/mgeek/TunnyBrowser/gy;->m:I

    .line 133
    iput-wide p5, p0, Lmobi/mgeek/TunnyBrowser/gy;->n:J

    .line 134
    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/gy;->k:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lmobi/mgeek/TunnyBrowser/gy;->l:Ljava/lang/String;

    .line 136
    iput p7, p0, Lmobi/mgeek/TunnyBrowser/gy;->o:I

    .line 137
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 397
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    sget-object v2, Lmobi/mgeek/TunnyBrowser/gy;->c:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/gy;)Lmobi/mgeek/TunnyBrowser/he;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->b(I)V

    .line 653
    packed-switch p1, :pswitch_data_0

    .line 663
    :goto_0
    return-void

    .line 655
    :pswitch_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 659
    :pswitch_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Landroid/content/Context;Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, v0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->a(Landroid/content/Context;Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 91
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gy;

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lmobi/mgeek/TunnyBrowser/gy;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JI)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/gy;->a:Lmobi/mgeek/TunnyBrowser/gy;

    .line 92
    sget-object v0, Lmobi/mgeek/TunnyBrowser/gy;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-direct {v0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Lcom/dolphin/browser/ui/launcher/g;)V

    .line 93
    sget-object v0, Lmobi/mgeek/TunnyBrowser/gy;->a:Lmobi/mgeek/TunnyBrowser/gy;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/gy;->b:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    :try_start_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/gy;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gy;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 718
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 721
    return-void
.end method

.method private a(Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gy;->v:Lcom/dolphin/browser/ui/launcher/g;

    .line 199
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->d:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 347
    :pswitch_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->d(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/he;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->c(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/he;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 631
    const-string v0, ""

    .line 632
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->f:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->e:I

    if-nez v1, :cond_2

    .line 635
    const-string v0, "history"

    .line 641
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    const-string v0, "customization"

    .line 645
    :cond_1
    const-string v1, "dolphin home"

    const-string v2, "addtohome"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void

    .line 636
    :cond_2
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 637
    const-string v0, "bookmarks"

    goto :goto_0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/gy;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/gy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v3, "is_folder = 0"

    .line 409
    :goto_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Lmobi/mgeek/TunnyBrowser/gy;->c:[Ljava/lang/String;

    const-string v5, "_order DESC"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_folder = 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/gy;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->d:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 375
    :pswitch_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->d()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/he;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->c()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/he;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)V
    .locals 6

    .prologue
    const v5, 0x7f0a0115

    const v4, 0x7f0a0112

    const/4 v3, 0x0

    .line 667
    packed-switch p1, :pswitch_data_0

    .line 695
    :goto_0
    return-void

    .line 669
    :pswitch_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 671
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020153

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 684
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020152

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->d:I

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->f(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/he;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->e(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/he;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/gy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 699
    .line 700
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08035b

    if-ne p1, v1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080358

    if-ne p1, v1, :cond_0

    .line 703
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 387
    invoke-direct {p0, v0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 415
    const-string v0, "history.title LIKE ?"

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/gy;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, v0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 420
    const-string v0, "bookmarks.title LIKE ?"

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lmobi/mgeek/TunnyBrowser/gy;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->b()V

    return-void
.end method

.method private e(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 425
    const-string v0, "history.url LIKE ?"

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const v7, 0x7f0a0180

    const v6, 0x7f0a0118

    const v5, 0x7f0a0097

    const v4, 0x7f020331

    const/4 v3, 0x0

    .line 762
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 763
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080355

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080354

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 770
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080353

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0111

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 772
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080357

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0113

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 774
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->r:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 776
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->r:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 778
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08035a

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0114

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 780
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->s:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020153

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 782
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->s:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0112

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 785
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a4

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 789
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202f9

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 791
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a4

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 794
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 798
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 800
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 801
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 803
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 804
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 806
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 808
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 809
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 810
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202b3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 811
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080305

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 813
    return-void
.end method

.method static synthetic e(Lmobi/mgeek/TunnyBrowser/gy;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->a()V

    return-void
.end method

.method private f(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 430
    const-string v0, "bookmarks.url LIKE ?"

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/gy;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lmobi/mgeek/TunnyBrowser/gy;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 440
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 442
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    :cond_1
    return-object v0
.end method

.method private h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 455
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 459
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 460
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 463
    :cond_2
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->a(Landroid/view/View;)V

    .line 290
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 291
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 490
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 492
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "speeddial addpage"

    :goto_0
    const-string v1, "hardkey"

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void

    .line 492
    :cond_0
    const-string v0, "speeddial editpage"

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f0e0645

    const v5, 0x7f08035b

    const/16 v7, 0xf

    const/4 v2, 0x1

    .line 499
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->m:I

    if-ne v0, v2, :cond_5

    const-string v0, "speeddial addpage"

    .line 502
    :goto_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 504
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08004a

    if-ne v4, v1, :cond_a

    .line 546
    const/4 v1, 0x0

    .line 547
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 548
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 549
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e0224

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 552
    :cond_0
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 554
    :try_start_0
    invoke-static {v5}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 558
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 559
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e0222

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 562
    :cond_1
    if-nez v1, :cond_4

    .line 563
    const-string v1, "clickbtn"

    const-string v3, "done"

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->m:I

    if-ne v0, v2, :cond_9

    .line 578
    invoke-static {v7}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 579
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->v:Lcom/dolphin/browser/ui/launcher/g;

    if-eqz v0, :cond_7

    .line 581
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->v:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/ui/launcher/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 582
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0643

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 588
    :goto_2
    invoke-direct {p0, v4, v5}, Lmobi/mgeek/TunnyBrowser/gy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_2
    :goto_3
    invoke-static {v7}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 611
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->dismiss()V

    .line 627
    :cond_4
    :goto_5
    return-void

    .line 499
    :cond_5
    const-string v0, "speeddial editpage"

    goto/16 :goto_0

    .line 555
    :catch_0
    move-exception v6

    .line 556
    invoke-static {v6}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 585
    :cond_6
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03ad

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_2

    .line 590
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/provider/w;->a()Lcom/dolphin/browser/provider/w;

    move-result-object v0

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->o:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/dolphin/browser/provider/w;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 591
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v8}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 592
    invoke-static {}, Lcom/dolphin/browser/provider/w;->a()Lcom/dolphin/browser/provider/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/w;->b()I

    move-result v0

    .line 593
    if-eqz v0, :cond_2

    .line 594
    const-string v1, "speed dial"

    const-string v2, "addurl"

    invoke-static {v1, v2, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackUrlEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "speed dial"

    const-string v2, "addpos"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 600
    :cond_8
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0225

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_3

    .line 606
    :cond_9
    invoke-static {}, Lcom/dolphin/browser/provider/w;->a()Lcom/dolphin/browser/provider/w;

    move-result-object v0

    iget-wide v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->n:J

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/gy;->o:I

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/provider/w;->a(JILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v8}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_4

    .line 613
    :cond_a
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-eq v4, v5, :cond_b

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080358

    if-ne v4, v1, :cond_e

    .line 614
    :cond_b
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-ne v4, v5, :cond_d

    const-string v1, "bookmark"

    .line 615
    :goto_6
    const-string v2, "click"

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, v4}, Lmobi/mgeek/TunnyBrowser/gy;->c(I)I

    move-result v0

    .line 618
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->d:I

    if-eq v1, v0, :cond_c

    .line 619
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->a(I)V

    .line 621
    :cond_c
    iput v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->d:I

    .line 622
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->b()V

    goto/16 :goto_5

    .line 614
    :cond_d
    const-string v1, "history"

    goto :goto_6

    .line 625
    :cond_e
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->dismiss()V

    goto/16 :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 204
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 206
    const/16 v3, 0x77

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 207
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300f4

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gy;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 209
    new-instance v0, Lmobi/mgeek/TunnyBrowser/he;

    invoke-direct {v0, p0, v3, v2}, Lmobi/mgeek/TunnyBrowser/he;-><init>(Lmobi/mgeek/TunnyBrowser/gy;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    .line 210
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gz;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lmobi/mgeek/TunnyBrowser/gz;-><init>(Lmobi/mgeek/TunnyBrowser/gy;Landroid/content/ContentResolver;)V

    .line 217
    sget-object v3, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    sget-object v4, Lmobi/mgeek/TunnyBrowser/gy;->c:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08035d

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    .line 219
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200ab

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020331

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gy;->q:Lmobi/mgeek/TunnyBrowser/he;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080305

    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->p:Landroid/widget/ListView;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ha;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ha;-><init>(Lmobi/mgeek/TunnyBrowser/gy;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 235
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    .line 236
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gy;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gy;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 239
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    .line 240
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gy;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gy;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/hb;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/hb;-><init>(Lmobi/mgeek/TunnyBrowser/gy;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 253
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gy;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gy;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08035c

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->r:Landroid/widget/TextView;

    .line 261
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080359

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->s:Landroid/widget/TextView;

    .line 263
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08035b

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->t:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080358

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->u:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->e()V

    .line 269
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->a()V

    .line 271
    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->b(I)V

    .line 272
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 469
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/dolphin/browser/bookmark/b/k;

    if-eqz v0, :cond_0

    .line 470
    check-cast p2, Lcom/dolphin/browser/bookmark/b/k;

    .line 471
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 472
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/b/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 474
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 475
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 476
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 478
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gy;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 480
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->d:I

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->e:I

    .line 481
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/b/k;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gy;->f:Ljava/lang/String;

    .line 483
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gy;->a()V

    .line 485
    :cond_0
    return-void
.end method
