.class public Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;
.super Landroid/view/CustomMenuActivity;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mgeek/android/ui/p;
.implements Lcom/mgeek/android/ui/q;


# static fields
.field private static final P:[I


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/CheckedTextView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Lcom/dolphin/browser/bookmark/at;

.field private I:Lcom/dolphin/browser/sync/o;

.field private J:Lcom/dolphin/browser/sync/d;

.field private K:Landroid/widget/AdapterView$OnItemClickListener;

.field private L:Lcom/dolphin/browser/bookmark/a;

.field private M:Lcom/dolphin/browser/bookmark/cw;

.field private N:Lcom/dolphin/browser/bookmark/bb;

.field private O:Lcom/dolphin/browser/bookmark/bw;

.field private Q:Lcom/dolphin/browser/bookmark/ap;

.field private R:Lcom/dolphin/browser/bookmark/al;

.field private b:Lcom/dolphin/browser/sync/s;

.field private c:Z

.field private d:I

.field private e:J

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:J

.field private m:Lcom/dolphin/browser/bookmark/be;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ListView;

.field private p:Lcom/dolphin/browser/bookmark/j;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/view/View;

.field private s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

.field private t:Lcom/dolphin/browser/bookmark/bl;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1433
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00ad

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00aa

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00a4

    aput v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->P:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 530
    new-instance v0, Lcom/dolphin/browser/bookmark/ag;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/ag;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->I:Lcom/dolphin/browser/sync/o;

    .line 570
    new-instance v0, Lcom/dolphin/browser/bookmark/ah;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/ah;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->J:Lcom/dolphin/browser/sync/d;

    .line 737
    new-instance v0, Lcom/dolphin/browser/bookmark/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/ak;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->K:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1267
    new-instance v0, Lcom/dolphin/browser/bookmark/w;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/w;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->L:Lcom/dolphin/browser/bookmark/a;

    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->w()Ljava/util/List;

    move-result-object v0

    .line 996
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/o;

    if-eqz v1, :cond_2

    .line 1001
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B()V

    goto :goto_0

    .line 1003
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 1005
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->H:Lcom/dolphin/browser/bookmark/at;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/at;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1007
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->C()V

    goto :goto_0
.end method

.method private B()V
    .locals 4

    .prologue
    .line 1013
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/j;->x()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0124

    new-instance v2, Lcom/dolphin/browser/bookmark/s;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/s;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1034
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 1035
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    .line 1038
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0306

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/j;->x()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0124

    new-instance v2, Lcom/dolphin/browser/bookmark/t;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/t;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1059
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 1060
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    .line 1063
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->w()V

    .line 1077
    :goto_0
    const-string v0, "bookmark"

    const-string v1, "clickdownmenu"

    const-string v2, "sync"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_0
    return-void

    .line 1067
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c()V

    goto :goto_0
.end method

.method private E()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1084
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030095

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1085
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080161

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1086
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1087
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1089
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0089

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1091
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a0180

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1094
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1095
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0390

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    new-instance v3, Lcom/dolphin/browser/bookmark/u;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/bookmark/u;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1118
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 1119
    new-instance v2, Lcom/dolphin/browser/bookmark/v;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/bookmark/v;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1131
    :cond_0
    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 1132
    new-instance v2, Lcom/dolphin/browser/bookmark/bj;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Lcom/dolphin/browser/bookmark/bj;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1134
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1136
    const-string v0, "BookmarkEntranceActivity"

    const-string v1, "show new bookmark folder dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void
.end method

.method private F()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private G()V
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->D:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1295
    return-void
.end method

.method private H()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1339
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    if-nez v0, :cond_0

    .line 1340
    new-instance v0, Lcom/dolphin/browser/bookmark/cw;

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->L()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/bookmark/cw;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    .line 1342
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1344
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1345
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1346
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->q:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1348
    :cond_0
    return-void
.end method

.method private I()Z
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cw;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private J()V
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->K()V

    .line 1360
    :cond_0
    return-void
.end method

.method private K()V
    .locals 3

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->H()V

    .line 1364
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/cw;->a(IZ)V

    .line 1366
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/cw;->a(IZ)V

    .line 1368
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->l()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/cw;->a(IZ)V

    .line 1370
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cw;->b()V

    .line 1371
    return-void
.end method

.method private L()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/cp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    new-instance v2, Lcom/dolphin/browser/bookmark/cp;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dolphin/browser/bookmark/x;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/bookmark/x;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/bookmark/cp;-><init>(Ljava/lang/String;Lcom/dolphin/browser/c/a;)V

    .line 1388
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1390
    new-instance v2, Lcom/dolphin/browser/bookmark/cp;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e00b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dolphin/browser/bookmark/y;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/bookmark/y;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/bookmark/cp;-><init>(Ljava/lang/String;Lcom/dolphin/browser/c/a;)V

    .line 1402
    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1404
    new-instance v2, Lcom/dolphin/browser/bookmark/cp;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e00a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/dolphin/browser/bookmark/z;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/bookmark/z;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-direct {v2, v0, v3}, Lcom/dolphin/browser/bookmark/cp;-><init>(Ljava/lang/String;Lcom/dolphin/browser/c/a;)V

    .line 1416
    const/4 v0, 0x2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1418
    return-object v1
.end method

.method private M()V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->O:Lcom/dolphin/browser/bookmark/bw;

    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Lcom/dolphin/browser/bookmark/bw;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/bw;-><init>(Landroid/content/Context;)V

    .line 1445
    new-instance v1, Lcom/dolphin/browser/bookmark/aa;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/aa;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/bw;->a(Lcom/dolphin/browser/bookmark/bx;)V

    .line 1509
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->O:Lcom/dolphin/browser/bookmark/bw;

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->O:Lcom/dolphin/browser/bookmark/bw;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bw;->c()V

    .line 1513
    return-void
.end method

.method private N()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0a0021

    .line 1519
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1521
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00a0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1523
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030071

    invoke-static {p0, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1524
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 1526
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801e6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1528
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1531
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801e7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1533
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0180

    invoke-virtual {v4, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1534
    invoke-static {}, Lcom/dolphin/browser/bookmark/an;->c()Ljava/lang/String;

    move-result-object v1

    .line 1535
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 1537
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1539
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1540
    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b008a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1542
    sget-object v6, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v6, 0x7f0b0089

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1544
    invoke-virtual {v0, v1, v5, v1, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1546
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801e8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1548
    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1551
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1553
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    invoke-virtual {v2, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1554
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v3, Lcom/dolphin/browser/bookmark/ab;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/bookmark/ab;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1574
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1575
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 1576
    return-void
.end method

.method private O()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1579
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1581
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00a9

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1583
    invoke-static {}, Lcom/dolphin/browser/bookmark/an;->d()[Ljava/io/File;

    move-result-object v0

    .line 1584
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 1585
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03000f

    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1587
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080047

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1590
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1608
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00d9

    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1610
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1611
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 1612
    return-void

    .line 1592
    :cond_1
    new-instance v2, Lcom/dolphin/browser/bookmark/cn;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/bookmark/cn;-><init>(Landroid/content/Context;[Ljava/io/File;)V

    .line 1594
    new-instance v0, Lcom/dolphin/browser/bookmark/ad;

    invoke-direct {v0, p0, v2}, Lcom/dolphin/browser/bookmark/ad;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/cn;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/al;)Lcom/dolphin/browser/bookmark/al;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->R:Lcom/dolphin/browser/bookmark/al;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/ap;)Lcom/dolphin/browser/bookmark/ap;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->Q:Lcom/dolphin/browser/bookmark/ap;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/bl;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->t:Lcom/dolphin/browser/bookmark/bl;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(JZ)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 805
    const-string v2, "BookmarkEntranceActivity"

    const-string v3, "openfolder %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 806
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/bookmark/p;->b(Landroid/content/Context;J)Lcom/dolphin/browser/bookmark/j;

    move-result-object v2

    .line 809
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    if-eqz v3, :cond_0

    .line 811
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/j;->s()V

    .line 812
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/a;)V

    .line 814
    :cond_0
    iput-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    .line 815
    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->r()V

    .line 816
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->v:Landroid/widget/TextView;

    .line 818
    iget-object v4, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->L:Lcom/dolphin/browser/bookmark/a;

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/a;)V

    .line 819
    iget-boolean v4, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/j;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c(Z)V

    .line 821
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    .line 822
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 823
    invoke-direct {p0, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/j;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 825
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n()V

    .line 827
    if-eqz p3, :cond_1

    .line 828
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->x()V

    .line 830
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 819
    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 323
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e009f

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 328
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->finish()V

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(JZ)V

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->t:Lcom/dolphin/browser/bookmark/bl;

    iget-wide v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/j;->d()I

    move-result v3

    new-instance v4, Lcom/dolphin/browser/bookmark/ae;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/bookmark/ae;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/bookmark/bl;->a(JILcom/dolphin/browser/bookmark/bn;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Landroid/content/Intent;)V

    .line 348
    return-void

    .line 330
    :cond_0
    iput-boolean v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;JZ)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/a/a;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 7

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/o;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->f()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/bz;

    if-eqz v1, :cond_3

    .line 763
    const-string v1, "DBS Desktop Bookmarks"

    const-string v2, "click"

    const-string v3, "firefox"

    sget-object v4, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 779
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/bu;

    if-eqz v1, :cond_2

    .line 769
    const-string v1, "DBS Desktop Bookmarks"

    const-string v2, "click"

    const-string v3, "chrome"

    sget-object v4, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 860
    invoke-static {p1}, Lcom/dolphin/browser/core/be;->b(Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 863
    if-nez v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 868
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 878
    :goto_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab()V

    .line 879
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->finish()V

    goto :goto_0

    .line 871
    :cond_1
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click Bookmark To Load Url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/dolphin/browser/util/cx;->b:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZLjava/lang/Object;)Lcom/dolphin/browser/util/cw;

    .line 875
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Z)Z
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c:Z

    return p1
.end method

.method private a(Lcom/dolphin/browser/bookmark/j;)Z
    .locals 1

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->t()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/dolphin/browser/bookmark/bv;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/dolphin/browser/bookmark/ca;

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    return p1
.end method

.method private b(Lcom/dolphin/browser/bookmark/j;)I
    .locals 1

    .prologue
    .line 835
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/o;

    if-eqz v0, :cond_2

    .line 836
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/bv;

    if-eqz v0, :cond_0

    .line 837
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01f9

    .line 855
    :goto_0
    return v0

    .line 838
    :cond_0
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/ca;

    if-eqz v0, :cond_1

    .line 839
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01fd

    goto :goto_0

    .line 841
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01f8

    goto :goto_0

    .line 843
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/cc;

    if-eqz v0, :cond_3

    .line 846
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01fe

    goto :goto_0

    .line 847
    :cond_3
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/co;

    if-eqz v0, :cond_4

    .line 850
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0201

    goto :goto_0

    .line 852
    :cond_4
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00fe

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/j;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 351
    if-eqz p1, :cond_0

    const-string v0, "com.dolphin.browser.action.bookmark.openmenu"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->J()V

    .line 355
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Z)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c(Z)V

    return-void
.end method

.method private b(Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 5

    .prologue
    .line 789
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v0

    .line 791
    const-wide/16 v2, -0x2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 793
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/sync/ab;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 796
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->t:Lcom/dolphin/browser/bookmark/bl;

    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/dolphin/browser/bookmark/bl;->a(JLjava/lang/String;)V

    .line 797
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(JZ)V

    .line 799
    const-string v0, "bookmark"

    const-string v1, "click"

    const-string v2, "bookmarkfolder"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 584
    if-eqz p1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/BookmarkPathBar;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 656
    iget v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    if-ne v0, p1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 660
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c:Z

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->e:J

    .line 663
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n()V

    .line 665
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/bookmark/ai;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/ai;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 1141
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    .line 1142
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/bookmark/j;->a(Z)V

    .line 1143
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->notifyDataSetInvalidated()V

    .line 1144
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n()V

    .line 1145
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m()V

    .line 1146
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(I)Z

    move-result v0

    return v0
.end method

.method private d(I)I
    .locals 0

    .prologue
    .line 1233
    return p1
.end method

.method static synthetic d(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    return v0
.end method

.method private e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 1240
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r:Landroid/view/View;

    invoke-static {v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1247
    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1248
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r:Landroid/view/View;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    .line 1256
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201ba

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1260
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v0, :cond_2

    .line 1261
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/bookmark/b/i;

    .line 1262
    iget-boolean v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    .line 1265
    :cond_2
    return-void

    .line 1243
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1250
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    .line 1251
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/b/i;

    if-nez v0, :cond_1

    .line 1252
    iput-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n:Landroid/view/View;

    goto :goto_1
.end method

.method static synthetic f(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->w()V

    return-void
.end method

.method static synthetic f()[I
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->P:[I

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/at;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->H:Lcom/dolphin/browser/bookmark/at;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const v4, 0x7f020060

    .line 171
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/DraggableListView;

    .line 172
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o:Landroid/widget/ListView;

    .line 173
    invoke-virtual {v0, p0}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/q;)V

    .line 174
    invoke-virtual {v0, p0}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/p;)V

    .line 175
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(I)V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setDrawSelectorOnTop(Z)V

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setVerticalScrollBarEnabled(Z)V

    .line 178
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->K:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    invoke-virtual {v0, p0}, Lcom/mgeek/android/ui/DraggableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 182
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->u:Landroid/view/View;

    .line 183
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->v:Landroid/widget/TextView;

    .line 186
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->q:Landroid/widget/RelativeLayout;

    .line 187
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r:Landroid/view/View;

    .line 188
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    .line 189
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->w:Landroid/widget/ImageView;

    .line 190
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->x:Landroid/widget/ImageView;

    .line 191
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->y:Landroid/widget/TextView;

    .line 192
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    .line 193
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->z:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v0, Lcom/dolphin/browser/bookmark/bl;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/bl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->t:Lcom/dolphin/browser/bookmark/bl;

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    new-instance v1, Lcom/dolphin/browser/bookmark/r;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/r;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->h:Landroid/view/View;

    .line 213
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    .line 215
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v4, v1}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/e/a/z;

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Lcom/dolphin/browser/bookmark/b/e;

    check-cast v0, Lcom/e/a/z;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;)V

    iput-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j:Landroid/graphics/drawable/Drawable;

    .line 225
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->A:Landroid/widget/ImageView;

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->C:Landroid/view/View;

    .line 229
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->D:Landroid/widget/CheckedTextView;

    .line 230
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->E:Landroid/widget/ImageView;

    .line 231
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->F:Landroid/widget/ImageView;

    .line 232
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->G:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->D:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/b/e;

    new-instance v1, Lcom/e/a/z;

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {v1, v2, v4}, Lcom/e/a/z;-><init>(Landroid/content/res/Resources;I)V

    invoke-direct {v0, v1}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic h(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    return-wide v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r()V

    .line 244
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->f:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/dolphin/browser/bookmark/be;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/be;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    new-instance v1, Lcom/dolphin/browser/bookmark/ac;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/ac;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/be;->a(Lcom/dolphin/browser/bookmark/bk;)V

    .line 255
    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(Z)V

    .line 259
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/at;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->H:Lcom/dolphin/browser/bookmark/at;

    .line 260
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->u:Landroid/view/View;

    return-object v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_0

    const-string v2, "com.dolphin.browser.action.EDIT_BOOKMARK"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :cond_0
    return v0
.end method

.method private j()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 308
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/bq;->c()J

    move-result-wide v2

    .line 309
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 310
    if-eqz v4, :cond_0

    .line 311
    const-string v5, "com.dolphin.browser.action.bookmark.folderId"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 314
    :cond_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic j(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/bookmark/af;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/af;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method static synthetic k(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->G()V

    return-void
.end method

.method static synthetic l(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o()V

    return-void
.end method

.method private l()Z
    .locals 4

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/bo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 7

    .prologue
    const v6, 0x7f0a001f

    const v5, 0x7f0a001d

    const/16 v2, 0x8

    const/4 v1, 0x0

    const v4, 0x7f0a001e

    .line 373
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->C:Landroid/view/View;

    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/o;

    if-eqz v0, :cond_1

    .line 376
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :goto_1
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p()V

    .line 385
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->C:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 388
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a001c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 391
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->D:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02005b

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v2, v4}, Lcom/dolphin/browser/util/bb;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->E:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020029

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v2, v4, v6, v5}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->F:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02002a

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v2, v4, v6, v5}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->G:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201ee

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v2, v4, v6, v5}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    return-void

    :cond_0
    move v0, v2

    .line 373
    goto/16 :goto_0

    .line 379
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic m(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p()V

    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 414
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 416
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r:Landroid/view/View;

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r:Landroid/view/View;

    invoke-static {v3}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->y:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a003a

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->x:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200d0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->w:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060001

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->z:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020067

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201e4

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o()V

    .line 453
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->u()V

    .line 454
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->q()V

    .line 455
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->z:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->B:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/j;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method static synthetic n(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M()V

    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->x()I

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->y:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00b0

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->y:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    invoke-static {v2, v3}, Lcom/dolphin/browser/bookmark/q;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0602

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0601

    goto :goto_1
.end method

.method static synthetic o(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->O()V

    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->x()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 472
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 473
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 474
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->N()V

    return-void
.end method

.method static synthetic q(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/al;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->R:Lcom/dolphin/browser/bookmark/al;

    return-object v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->setVisibility(I)V

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-wide v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    invoke-static {v1, v2}, Lcom/dolphin/browser/bookmark/q;->c(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->a(Ljava/lang/String;)V

    .line 490
    :goto_1
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->setVisibility(I)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->t:Lcom/dolphin/browser/bookmark/bl;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic r(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/ap;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->Q:Lcom/dolphin/browser/bookmark/ap;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 503
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b:Lcom/dolphin/browser/sync/s;

    .line 504
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b:Lcom/dolphin/browser/sync/s;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->I:Lcom/dolphin/browser/sync/o;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/s;->a(Lcom/dolphin/browser/sync/o;)V

    .line 506
    new-instance v0, Lcom/dolphin/browser/sync/af;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/af;-><init>()V

    .line 507
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->J:Lcom/dolphin/browser/sync/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/af;->a(Lcom/dolphin/browser/sync/d;)V

    .line 508
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/s;->a(Lcom/dolphin/browser/sync/b;)V

    .line 510
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    .line 512
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c:Z

    .line 514
    :cond_0
    return-void
.end method

.method private s()Lcom/dolphin/browser/sync/s;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b:Lcom/dolphin/browser/sync/s;

    if-nez v0, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b:Lcom/dolphin/browser/sync/s;

    return-object v0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0a0120

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 593
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 595
    iget-object v4, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->h:Landroid/view/View;

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    if-ne v0, v2, :cond_3

    .line 601
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v3, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 603
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 604
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e05fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->g:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 629
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Z)V

    .line 630
    return-void

    .line 595
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v1, v2

    goto :goto_1

    .line 611
    :cond_3
    iget v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 612
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v3, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05fb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 615
    iput-object v7, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->g:Ljava/lang/String;

    goto :goto_1

    .line 616
    :cond_4
    iget v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 618
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a011e

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 620
    iget v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d:I

    if-ne v0, v5, :cond_6

    .line 621
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05f8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 626
    :goto_2
    iput-object v7, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->g:Ljava/lang/String;

    goto :goto_1

    .line 623
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05ba

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private v()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 634
    iget-boolean v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/o;

    if-eqz v1, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->t()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->e:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 644
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 717
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 718
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    .line 883
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 884
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 934
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c(Z)V

    .line 940
    :goto_0
    return-void

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->finish()V

    goto :goto_0
.end method

.method private z()V
    .locals 4

    .prologue
    .line 988
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/o;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->w()Ljava/util/List;

    move-result-object v0

    .line 990
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->H:Lcom/dolphin/browser/bookmark/at;

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/dolphin/browser/bookmark/at;->a(JLjava/util/List;)V

    .line 992
    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1161
    invoke-direct {p0, p2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d(I)I

    move-result v1

    .line 1162
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return v0

    .line 1166
    :cond_1
    if-gez v1, :cond_2

    .line 1167
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->e(I)V

    goto :goto_0

    .line 1171
    :cond_2
    invoke-direct {p0, p2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->e(I)V

    .line 1173
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/bookmark/j;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const v4, 0x7f0a0035

    .line 269
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->q:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 275
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201b8

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o:Landroid/widget/ListView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->v:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->h:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a011f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->a()V

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->setBackgroundColor(I)V

    .line 289
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n()V

    .line 290
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m()V

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->notifyDataSetChanged()V

    .line 296
    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1183
    const-string v2, "BookmarkEntranceActivity"

    const-string v3, "drop from %d to %d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1185
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->e(I)V

    .line 1186
    if-ne p1, p2, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d(I)I

    move-result v7

    .line 1191
    invoke-direct {p0, p2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d(I)I

    move-result v8

    .line 1192
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->getCount()I

    move-result v2

    if-ge v8, v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->getCount()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 1199
    if-nez v8, :cond_2

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v2, v2, Lcom/dolphin/browser/bookmark/bo;

    if-nez v2, :cond_0

    .line 1206
    :cond_2
    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    .line 1207
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/bookmark/j;->getItemId(I)J

    move-result-wide v1

    .line 1208
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/j;->f()J

    move-result-wide v3

    move v5, v0

    .line 1216
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1217
    if-eqz v5, :cond_5

    .line 1218
    iget-object v5, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/j;->d()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;JJI)I

    .line 1227
    :goto_2
    const-string v0, "bookmark"

    const-string v1, "editpage"

    const-string v2, "move"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_3
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2, v7}, Lcom/dolphin/browser/bookmark/j;->getItemId(I)J

    move-result-wide v5

    .line 1212
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/bookmark/j;->getItemId(I)J

    move-result-wide v3

    .line 1213
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/bookmark/j;->getItemViewType(I)I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_3
    move-wide v1, v5

    move v5, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 1221
    :cond_5
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3, v7}, Lcom/dolphin/browser/bookmark/j;->a(I)J

    move-result-wide v5

    .line 1222
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3, v8}, Lcom/dolphin/browser/bookmark/j;->a(I)J

    move-result-wide v7

    .line 1223
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v3}, Lcom/dolphin/browser/bookmark/j;->e()J

    move-result-wide v3

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;JJJJ)V

    goto :goto_2
.end method

.method public c()V
    .locals 3

    .prologue
    .line 677
    const-string v0, "BookmarkEntranceActivity"

    const-string v1, "start sync"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/dolphin/browser/bookmark/aj;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/aj;-><init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/s;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 711
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->n()V

    .line 712
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/bo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->I()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1301
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/cw;->c()V

    .line 1315
    :goto_0
    return v0

    .line 1304
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-nez v1, :cond_2

    .line 1306
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/cw;->c()V

    .line 1311
    :goto_1
    const-string v1, "bookmark"

    const-string v2, "hardkey"

    const-string v3, "menu"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->J()V

    goto :goto_1

    .line 1315
    :cond_2
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-static {v0, p1}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cw;->c()V

    .line 1322
    const/4 v0, 0x1

    .line 1324
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->N:Lcom/dolphin/browser/bookmark/bb;

    if-nez v0, :cond_0

    .line 1425
    new-instance v0, Lcom/dolphin/browser/bookmark/bb;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->N:Lcom/dolphin/browser/bookmark/bb;

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->N:Lcom/dolphin/browser/bookmark/bb;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->n()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/bb;->a(Ljava/util/List;Z)V

    .line 1430
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 725
    packed-switch p1, :pswitch_data_0

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 727
    :pswitch_0
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->c()V

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1154
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->y()V

    .line 1155
    const-string v0, "bookmark"

    const-string v1, "hardkey"

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 944
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 945
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a4

    if-ne v0, v1, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->finish()V

    .line 948
    const-string v0, "bookmark"

    const-string v1, "clickbtn"

    const-string v2, "back"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_2

    .line 952
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->y()V

    .line 953
    const-string v0, "bookmark"

    const-string v1, "editpage"

    const-string v2, "done"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a9

    if-ne v0, v1, :cond_3

    .line 957
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->K()V

    .line 958
    const-string v0, "bookmark"

    const-string v1, "clickbtn"

    const-string v2, "downmenu"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a7

    if-ne v0, v1, :cond_4

    .line 962
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->D()V

    goto :goto_0

    .line 963
    :cond_4
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08009c

    if-ne v0, v1, :cond_7

    .line 965
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->D:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 966
    :goto_1
    if-eqz v0, :cond_6

    .line 967
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->u()V

    .line 971
    :goto_2
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->D:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 965
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 969
    :cond_6
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->v()V

    goto :goto_2

    .line 972
    :cond_7
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08009e

    if-ne v0, v1, :cond_8

    .line 974
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->A()V

    goto :goto_0

    .line 975
    :cond_8
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a0

    if-ne v0, v1, :cond_9

    .line 977
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->E()V

    .line 978
    const-string v0, "bookmark"

    const-string v1, "editpage"

    const-string v2, "newfolder"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_9
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a2

    if-ne v0, v1, :cond_0

    .line 982
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->z()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1330
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1331
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->M:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cw;->c()V

    .line 1334
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->setContentView(I)V

    .line 157
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->h()V

    .line 159
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->g()V

    .line 161
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b()V

    .line 165
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k()V

    .line 166
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0xa

    const-wide/16 v4, -0xb

    .line 889
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k:Z

    if-eqz v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 893
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 895
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/o;

    if-eqz v1, :cond_3

    .line 896
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v1, :cond_2

    .line 897
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/bookmark/b/i;

    .line 898
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/b/i;->d()J

    move-result-wide v0

    .line 899
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x9

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 904
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->e()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->e()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 908
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 916
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    sget-object v3, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v3, 0x7f100008

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Lcom/dolphin/browser/bookmark/be;->a(II)V

    .line 918
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    invoke-virtual {v0, p1, p3}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 921
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f100009

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/be;->a(II)V

    .line 923
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    invoke-virtual {v0, p1, p3}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 925
    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f10000a

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/be;->a(II)V

    .line 928
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m:Lcom/dolphin/browser/bookmark/be;

    invoke-virtual {v0, p1, p3}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Landroid/content/Intent;)V

    .line 265
    return-void
.end method
