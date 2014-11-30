.class public Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "DeviceManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/dolphin/browser/DolphinService/ui/aa;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/g/a/a;

.field private h:Lcom/dolphin/browser/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/f",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/dolphin/browser/push/g;

.field private final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/dolphin/browser/push/data/DeviceInfo;

.field private final l:Lcom/dolphin/browser/push/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 157
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/u;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->i:Lcom/dolphin/browser/push/g;

    .line 173
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/v;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->j:Ljava/util/Comparator;

    .line 365
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/x;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/x;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->l:Lcom/dolphin/browser/push/l;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/util/f;)Lcom/dolphin/browser/util/f;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->h:Lcom/dolphin/browser/util/f;

    return-object p1
.end method

.method static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->j:Ljava/util/Comparator;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    .line 412
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 413
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 3

    .prologue
    .line 346
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 349
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/w;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/w;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 361
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->h()V

    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    if-eqz p1, :cond_0

    .line 480
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0613

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0612

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/DolphinService/ui/aa;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d:Lcom/dolphin/browser/DolphinService/ui/aa;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const v6, 0x7f0a00f3

    const/4 v5, 0x0

    .line 80
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02026a

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0361

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->e:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->f:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02024c

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/util/bb;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020277

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c:Landroid/widget/ListView;

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a009b

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020245

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 122
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/aa;

    invoke-direct {v0, p0, p0}, Lcom/dolphin/browser/DolphinService/ui/aa;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d:Lcom/dolphin/browser/DolphinService/ui/aa;

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d:Lcom/dolphin/browser/DolphinService/ui/aa;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c()V

    .line 126
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->i:Lcom/dolphin/browser/push/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/f;->a(Lcom/dolphin/browser/push/g;)V

    .line 127
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    return-void
.end method

.method private b(Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 3

    .prologue
    .line 383
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0173

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a(I)V

    .line 384
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->k:Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 385
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    iget-object v1, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->l:Lcom/dolphin/browser/push/l;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/push/t;->a(Ljava/lang/String;Lcom/dolphin/browser/push/l;)V

    .line 386
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/t;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 155
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    return-void
.end method

.method private c(Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d()V

    .line 391
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/y;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/y;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)Lcom/dolphin/browser/push/data/DeviceInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->k:Lcom/dolphin/browser/push/data/DeviceInfo;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 425
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->c(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    return-void
.end method

.method private d(Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->d()V

    .line 405
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0172

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 406
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->h:Lcom/dolphin/browser/util/f;

    if-eqz v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/z;-><init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->h:Lcom/dolphin/browser/util/f;

    .line 465
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->h:Lcom/dolphin/browser/util/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 470
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0611

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 471
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->g()V

    .line 473
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->f:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    .line 489
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 490
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Landroid/view/animation/Interpolator;)V

    .line 491
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(I)V

    .line 492
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/g/a/s;->b(I)V

    .line 493
    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    .line 494
    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->g:Lcom/g/a/a;

    .line 495
    return-void

    .line 488
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000
    .end array-data
.end method

.method private h()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->g:Lcom/g/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->g:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->b()V

    .line 501
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/g/c/a;->d(Landroid/view/View;F)V

    .line 503
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 507
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 508
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 509
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 431
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->onBackPressed()V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801a2

    if-ne v0, v1, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "DeviceManageActivity.onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->b()V

    .line 76
    return-void
.end method
