.class public abstract Lcom/dolphin/browser/search/k;
.super Landroid/widget/BaseAdapter;
.source "SuggestionAdapterBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# static fields
.field private static final t:[Ljava/lang/String;

.field private static final u:[I

.field private static final w:Ljava/lang/String;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/content/Context;

.field final c:Landroid/widget/Filter;

.field d:Lcom/dolphin/browser/search/z;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/q;",
            ">;"
        }
    .end annotation
.end field

.field i:Z

.field final j:Lcom/dolphin/browser/search/p;

.field k:Z

.field l:Lcom/dolphin/browser/core/BrowserSettings;

.field m:Landroid/graphics/drawable/Drawable;

.field n:Lcom/dolphin/browser/extensions/ThemeManager;

.field o:Z

.field p:Z

.field q:Landroid/view/View$OnClickListener;

.field private r:Ljava/lang/CharSequence;

.field private s:Lcom/dolphin/browser/search/t;

.field private v:Landroid/widget/TextView;

.field private x:Lcom/dolphin/browser/search/r;

.field private y:Z

.field private final z:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 558
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "history"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "search_engine_suggest"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "namespace_suggest"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "query"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "history"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "most_visited"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "topsuggest"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "home"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/k;->t:[Ljava/lang/String;

    .line 563
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/search/k;->u:[I

    .line 968
    const-class v0, Lcom/dolphin/browser/search/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/search/k;->w:Ljava/lang/String;

    return-void

    .line 563
    :array_0
    .array-data 4
        0x4
        0x4
        0x6
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x6
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/search/p;)V
    .locals 1

    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 980
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->a:Ljava/lang/Object;

    .line 1000
    new-instance v0, Lcom/dolphin/browser/search/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/l;-><init>(Lcom/dolphin/browser/search/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->z:Landroid/view/View$OnTouchListener;

    .line 1425
    new-instance v0, Lcom/dolphin/browser/search/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/m;-><init>(Lcom/dolphin/browser/search/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->q:Landroid/view/View$OnClickListener;

    .line 1030
    iput-object p1, p0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    .line 1031
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->l:Lcom/dolphin/browser/core/BrowserSettings;

    .line 1032
    iput-object p2, p0, Lcom/dolphin/browser/search/k;->j:Lcom/dolphin/browser/search/p;

    .line 1033
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 1034
    new-instance v0, Lcom/dolphin/browser/search/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/v;-><init>(Lcom/dolphin/browser/search/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->c:Landroid/widget/Filter;

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->f:Ljava/util/List;

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->g:Ljava/util/List;

    .line 1037
    invoke-virtual {p0}, Lcom/dolphin/browser/search/k;->a()Lcom/dolphin/browser/search/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/q;)V

    .line 1038
    invoke-virtual {p0}, Lcom/dolphin/browser/search/k;->b()Lcom/dolphin/browser/search/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/q;)V

    .line 1039
    new-instance v0, Lcom/dolphin/browser/search/s;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/s;-><init>(Lcom/dolphin/browser/search/k;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/q;)V

    .line 1040
    invoke-virtual {p0}, Lcom/dolphin/browser/search/k;->i()V

    .line 1041
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/search/k;Lcom/dolphin/browser/search/t;)Lcom/dolphin/browser/search/t;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dolphin/browser/search/k;->s:Lcom/dolphin/browser/search/t;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/search/k;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/k;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dolphin/browser/search/k;->r:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/dolphin/browser/search/w;Ljava/lang/CharSequence;)V
    .locals 9

    .prologue
    const v8, 0x7f0200ab

    .line 1063
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1064
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1065
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080380

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1066
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08037b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1067
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f08037a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1068
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08037d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1069
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08037e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1071
    iget-object v4, p2, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-static {v4, p3}, Lcom/dolphin/browser/search/suggestions/ab;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1072
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1073
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    :cond_0
    iget-object v4, p2, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    invoke-static {v4, p3}, Lcom/dolphin/browser/search/suggestions/ab;->b(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1076
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1077
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1078
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1084
    :goto_0
    iget v4, p2, Lcom/dolphin/browser/search/w;->d:I

    invoke-direct {p0, v4}, Lcom/dolphin/browser/search/k;->c(I)Lcom/dolphin/browser/search/y;

    move-result-object v4

    .line 1086
    if-nez v4, :cond_2

    .line 1087
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1111
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    iget-object v2, p0, Lcom/dolphin/browser/search/k;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a01a9

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1113
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01ab

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1114
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    invoke-virtual {v5, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1117
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1119
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    invoke-virtual {v6, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1121
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1123
    return-void

    .line 1080
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1081
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 1089
    :cond_2
    sget-object v7, Lcom/dolphin/browser/search/n;->a:[I

    invoke-virtual {v4}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    .line 1107
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 1093
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 1097
    :pswitch_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v4

    iget-object v7, p2, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1099
    if-eqz v7, :cond_3

    .line 1100
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1101
    iget-object v7, p0, Lcom/dolphin/browser/search/k;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v7, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1103
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_1

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/dolphin/browser/search/w;)V
    .locals 1

    .prologue
    .line 1355
    if-nez p1, :cond_0

    .line 1361
    :goto_0
    return-void

    .line 1358
    :cond_0
    iget-object v0, p1, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    .line 1359
    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    iput-object v0, p1, Lcom/dolphin/browser/search/w;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/search/w;ZZ)V
    .locals 4

    .prologue
    const/high16 v2, 0x40a00000

    .line 1322
    if-eqz p1, :cond_2

    .line 1323
    iget v0, p1, Lcom/dolphin/browser/search/w;->d:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/k;->c(I)Lcom/dolphin/browser/search/y;

    move-result-object v0

    .line 1324
    const/4 v1, 0x0

    iput v1, p1, Lcom/dolphin/browser/search/w;->e:F

    .line 1325
    sget-object v1, Lcom/dolphin/browser/search/y;->b:Lcom/dolphin/browser/search/y;

    if-ne v1, v0, :cond_3

    .line 1326
    if-eqz p3, :cond_0

    .line 1327
    iget v0, p1, Lcom/dolphin/browser/search/w;->e:F

    const/high16 v1, 0x41a00000

    add-float/2addr v0, v1

    iput v0, p1, Lcom/dolphin/browser/search/w;->e:F

    .line 1329
    :cond_0
    if-eqz p2, :cond_1

    .line 1330
    iget v0, p1, Lcom/dolphin/browser/search/w;->e:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/dolphin/browser/search/w;->e:F

    .line 1349
    :cond_1
    :goto_0
    iget v0, p1, Lcom/dolphin/browser/search/w;->e:F

    const/high16 v1, 0x3f800000

    iget v2, p1, Lcom/dolphin/browser/search/w;->c:I

    int-to-float v2, v2

    const/high16 v3, 0x42480000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/dolphin/browser/search/w;->e:F

    .line 1351
    :cond_2
    :goto_1
    return-void

    .line 1332
    :cond_3
    sget-object v1, Lcom/dolphin/browser/search/y;->a:Lcom/dolphin/browser/search/y;

    if-ne v1, v0, :cond_5

    .line 1333
    if-eqz p3, :cond_4

    .line 1334
    iget v0, p1, Lcom/dolphin/browser/search/w;->e:F

    const/high16 v1, 0x41700000

    add-float/2addr v0, v1

    iput v0, p1, Lcom/dolphin/browser/search/w;->e:F

    .line 1336
    :cond_4
    if-eqz p2, :cond_1

    .line 1337
    iget v0, p1, Lcom/dolphin/browser/search/w;->e:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/dolphin/browser/search/w;->e:F

    goto :goto_0

    .line 1339
    :cond_5
    sget-object v1, Lcom/dolphin/browser/search/y;->j:Lcom/dolphin/browser/search/y;

    if-ne v1, v0, :cond_7

    .line 1340
    if-eqz p3, :cond_6

    .line 1341
    iget v0, p1, Lcom/dolphin/browser/search/w;->e:F

    const/high16 v1, 0x41200000

    add-float/2addr v0, v1

    iput v0, p1, Lcom/dolphin/browser/search/w;->e:F

    .line 1343
    :cond_6
    if-eqz p2, :cond_1

    .line 1344
    iget v0, p1, Lcom/dolphin/browser/search/w;->e:F

    add-float/2addr v0, v2

    iput v0, p1, Lcom/dolphin/browser/search/w;->e:F

    goto :goto_0

    .line 1346
    :cond_7
    sget-object v1, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    if-ne v1, v0, :cond_1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1521
    invoke-static {p1}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 1525
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1018
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return v0

    .line 1021
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/util/cn;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 1022
    if-eqz v1, :cond_0

    .line 1023
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 1269
    invoke-static {p1}, Lcom/dolphin/browser/search/suggestions/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    const/4 v0, 0x0

    .line 1274
    :goto_0
    return v0

    .line 1273
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1274
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/search/k;)Lcom/dolphin/browser/search/r;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->x:Lcom/dolphin/browser/search/r;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return v0

    .line 1282
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/search/k;)Lcom/dolphin/browser/search/t;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->s:Lcom/dolphin/browser/search/t;

    return-object v0
.end method

.method private c(I)Lcom/dolphin/browser/search/y;
    .locals 5

    .prologue
    .line 1365
    invoke-static {}, Lcom/dolphin/browser/search/y;->values()[Lcom/dolphin/browser/search/y;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1366
    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 1370
    :goto_1
    return-object v0

    .line 1365
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1370
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    const-string v0, ""

    .line 1560
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic j()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/dolphin/browser/search/k;->t:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/dolphin/browser/search/k;->u:[I

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 3

    .prologue
    .line 777
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->v:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->v:Landroid/widget/TextView;

    .line 779
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 781
    iget-object v1, p0, Lcom/dolphin/browser/search/k;->v:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 782
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02025b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method protected abstract a()Lcom/dolphin/browser/search/q;
.end method

.method public a(I)Lcom/dolphin/browser/search/w;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 1233
    :cond_0
    const/4 v0, 0x0

    .line 1235
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    iget-object v0, v0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    goto :goto_0
.end method

.method a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1293
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1294
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 1295
    if-eqz v0, :cond_0

    .line 1296
    iget v4, v0, Lcom/dolphin/browser/search/w;->d:I

    sget-object v5, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    invoke-virtual {v5}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1297
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1300
    :cond_1
    iget-object v4, v0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/dolphin/browser/search/k;->b(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1301
    iget-object v5, v0, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lcom/dolphin/browser/search/k;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1302
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 1303
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_3
    invoke-direct {p0, v0, v4, v5}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/w;ZZ)V

    .line 1306
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/w;)V

    goto :goto_1

    .line 1309
    :cond_4
    invoke-static {v2}, Lcom/dolphin/browser/search/suggestions/aa;->a(Ljava/util/List;)Ljava/util/List;

    .line 1310
    const/4 v0, 0x6

    .line 1311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1312
    const/16 v0, 0x19

    .line 1314
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    .line 1315
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1317
    :cond_6
    return-object v2
.end method

.method public a(Lcom/dolphin/browser/search/q;)V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->h:Ljava/util/List;

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/r;)V
    .locals 0

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/dolphin/browser/search/k;->x:Lcom/dolphin/browser/search/r;

    .line 1054
    return-void
.end method

.method a(Ljava/lang/CharSequence;Lcom/dolphin/browser/search/z;)V
    .locals 16

    .prologue
    .line 1454
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/dolphin/browser/search/k;->y:Z

    if-eqz v1, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1457
    :cond_0
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    .line 1458
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1459
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/core/t;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v2, v1

    .line 1462
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/core/t;->b(Landroid/content/Context;)Z

    move-result v8

    .line 1463
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_3

    if-eqz v8, :cond_3

    const/4 v1, 0x1

    move v3, v1

    .line 1466
    :goto_2
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v9

    .line 1467
    invoke-static {}, Lcom/dolphin/browser/core/t;->c()V

    .line 1468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/dolphin/browser/search/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1469
    if-eqz v1, :cond_4

    .line 1470
    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    .line 1471
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1472
    const-string v2, "address_bar"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/search/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v9}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    const/4 v3, 0x1

    const-string v5, "addressBar_pasted_link"

    invoke-static {v2, v1, v3, v5}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;ILjava/lang/String;)Z

    .line 1475
    const/4 v5, 0x1

    .line 1515
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/dolphin/browser/search/k;->o:Z

    .line 1516
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/dolphin/browser/search/k;->p:Z

    goto :goto_0

    .line 1459
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    .line 1463
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    .line 1478
    :cond_4
    sget-object v1, Lcom/dolphin/browser/search/k;->w:Ljava/lang/String;

    const-string v6, "==== Suggest Items for: \'%s\' ===="

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v1, v6, v10}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1479
    const/4 v1, 0x0

    move v6, v5

    move v5, v4

    move v4, v1

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_a

    .line 1480
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/search/w;

    .line 1481
    instance-of v10, v1, Lcom/dolphin/browser/search/aa;

    if-eqz v10, :cond_5

    .line 1479
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 1485
    :cond_5
    sget-object v10, Lcom/dolphin/browser/search/k;->w:Ljava/lang/String;

    const-string v11, "%s(%s) : %d(%s)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v1, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget v14, v1, Lcom/dolphin/browser/search/w;->e:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Lcom/dolphin/browser/search/k;->t:[Ljava/lang/String;

    iget v15, v1, Lcom/dolphin/browser/search/w;->d:I

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1487
    if-eqz v2, :cond_6

    if-nez v6, :cond_6

    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->b()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    .line 1488
    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->f()Ljava/lang/String;

    move-result-object v6

    .line 1489
    invoke-virtual {v9}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v10

    iget v11, v1, Lcom/dolphin/browser/search/w;->e:F

    float-to-int v11, v11

    sget-object v12, Lcom/dolphin/browser/search/k;->t:[Ljava/lang/String;

    iget v1, v1, Lcom/dolphin/browser/search/w;->d:I

    aget-object v1, v12, v1

    invoke-static {v10, v6, v11, v1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;ILjava/lang/String;)Z

    .line 1491
    const-string v1, "search_box"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/dolphin/browser/search/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const/4 v6, 0x1

    .line 1493
    goto :goto_5

    :cond_6
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->c()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1494
    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->g()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v10, 0x5dc

    invoke-static {v1, v10, v11}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;J)V

    .line 1496
    const/4 v5, 0x1

    goto :goto_5

    .line 1497
    :cond_7
    if-eqz v8, :cond_8

    if-nez v5, :cond_8

    iget v10, v1, Lcom/dolphin/browser/search/w;->d:I

    invoke-static {v10}, Lcom/dolphin/browser/search/y;->b(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1499
    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->g()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v10, 0x5dc

    invoke-static {v1, v10, v11}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;J)V

    .line 1501
    const/4 v5, 0x1

    goto :goto_5

    .line 1502
    :cond_8
    if-eqz v8, :cond_9

    if-nez v5, :cond_9

    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1504
    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->h()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v10, 0x5dc

    invoke-static {v1, v10, v11}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;J)V

    .line 1506
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 1509
    :cond_9
    iget-object v10, v1, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/w;->a()Z

    move-result v1

    invoke-static {v10, v1}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 1512
    :cond_a
    sget-object v1, Lcom/dolphin/browser/search/k;->w:Ljava/lang/String;

    const-string v2, "----------------"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    move v5, v6

    goto/16 :goto_3
.end method

.method protected abstract b()Lcom/dolphin/browser/search/q;
.end method

.method public b(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1375
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/k;->c(I)Lcom/dolphin/browser/search/y;

    move-result-object v1

    .line 1377
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-nez v1, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-object v0

    .line 1381
    :cond_1
    sget-object v2, Lcom/dolphin/browser/search/n;->a:[I

    invoke-virtual {v1}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1390
    :pswitch_1
    const-string v0, "suggestwords"

    goto :goto_0

    .line 1383
    :pswitch_2
    const-string v0, "bookmark"

    goto :goto_0

    .line 1386
    :pswitch_3
    const-string v0, "history"

    goto :goto_0

    .line 1381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 1226
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 1201
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/k;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1202
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/k;->a(I)Lcom/dolphin/browser/search/w;

    move-result-object v3

    .line 1203
    instance-of v4, v3, Lcom/dolphin/browser/search/aa;

    if-eqz v4, :cond_3

    .line 1201
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1206
    :cond_3
    iget-object v3, v3, Lcom/dolphin/browser/search/w;->g:Ljava/lang/String;

    .line 1207
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 1210
    goto :goto_0

    .line 1212
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->e:Ljava/util/List;

    if-nez v0, :cond_5

    move-object v0, v2

    .line 1213
    goto :goto_0

    .line 1215
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 1216
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 1217
    instance-of v3, v0, Lcom/dolphin/browser/search/aa;

    if-eqz v3, :cond_7

    .line 1215
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1220
    :cond_7
    iget-object v0, v0, Lcom/dolphin/browser/search/w;->g:Ljava/lang/String;

    .line 1221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_8
    move-object v0, v2

    .line 1226
    goto :goto_0
.end method

.method public e()Lcom/dolphin/browser/search/w;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    if-nez v0, :cond_1

    move-object v0, v2

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    iget-object v0, v0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    iget-object v0, v0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 303
    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    iget-object v0, v0, Lcom/dolphin/browser/search/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 306
    instance-of v1, v0, Lcom/dolphin/browser/search/aa;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 307
    check-cast v1, Lcom/dolphin/browser/search/aa;

    .line 308
    invoke-virtual {v1}, Lcom/dolphin/browser/search/aa;->k()Ljava/util/List;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 310
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 314
    :cond_4
    iget v1, v0, Lcom/dolphin/browser/search/w;->d:I

    sget-object v3, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    invoke-virtual {v3}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v3

    if-eq v1, v3, :cond_0

    move-object v0, v2

    .line 317
    goto :goto_0
.end method

.method f()Lcom/dolphin/browser/search/z;
    .locals 9

    .prologue
    .line 1127
    new-instance v2, Lcom/dolphin/browser/search/z;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/search/z;-><init>(Lcom/dolphin/browser/search/k;)V

    .line 1129
    iget-object v1, p0, Lcom/dolphin/browser/search/k;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1130
    :try_start_0
    iget-object v3, p0, Lcom/dolphin/browser/search/k;->g:Ljava/util/List;

    .line 1131
    iget-object v4, p0, Lcom/dolphin/browser/search/k;->f:Ljava/util/List;

    .line 1132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    const/4 v0, 0x0

    .line 1135
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1136
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    move-object v1, v0

    .line 1138
    :goto_0
    if-eqz v1, :cond_2

    iget v0, v1, Lcom/dolphin/browser/search/w;->d:I

    sget-object v5, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    invoke-virtual {v5}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v5

    if-ne v0, v5, :cond_2

    if-eqz v4, :cond_2

    .line 1141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 1143
    iget-object v7, v0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1144
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1147
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1150
    :cond_2
    invoke-virtual {v2, v4}, Lcom/dolphin/browser/search/z;->a(Ljava/util/List;)V

    .line 1151
    invoke-virtual {v2, v3}, Lcom/dolphin/browser/search/z;->a(Ljava/util/List;)V

    .line 1152
    invoke-virtual {v2}, Lcom/dolphin/browser/search/z;->b()V

    .line 1158
    return-object v2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/search/k;->y:Z

    .line 1164
    invoke-virtual {p0}, Lcom/dolphin/browser/search/k;->h()V

    .line 1165
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/z;->a()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->c:Landroid/widget/Filter;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/k;->a(I)Lcom/dolphin/browser/search/w;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1399
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 1400
    check-cast p3, Landroid/widget/ListView;

    .line 1401
    invoke-virtual {p3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/k;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1403
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->z:Landroid/view/View$OnTouchListener;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1408
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/k;->a(I)Lcom/dolphin/browser/search/w;

    move-result-object v2

    .line 1409
    invoke-direct {p0}, Lcom/dolphin/browser/search/k;->c()Ljava/lang/String;

    move-result-object v3

    .line 1410
    instance-of v0, v2, Lcom/dolphin/browser/search/aa;

    if-eqz v0, :cond_2

    .line 1411
    instance-of v0, p2, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;

    if-nez v0, :cond_4

    .line 1412
    new-instance v1, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;

    iget-object v0, p0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 1414
    check-cast v0, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;

    iget-object v4, p0, Lcom/dolphin/browser/search/k;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->a(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 1415
    check-cast v0, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;

    check-cast v2, Lcom/dolphin/browser/search/aa;

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->a(Lcom/dolphin/browser/search/aa;Ljava/lang/CharSequence;)V

    .line 1422
    :goto_1
    return-object v1

    .line 1417
    :cond_2
    instance-of v0, p2, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;

    if-nez v0, :cond_3

    .line 1418
    new-instance p2, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;

    iget-object v0, p0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;-><init>(Landroid/content/Context;)V

    .line 1420
    :cond_3
    invoke-direct {p0, p2, v2, v3}, Lcom/dolphin/browser/search/k;->a(Landroid/view/View;Lcom/dolphin/browser/search/w;Ljava/lang/CharSequence;)V

    move-object v1, p2

    goto :goto_1

    :cond_4
    move-object v1, p2

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    if-eqz v0, :cond_2

    .line 1176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->s:Lcom/dolphin/browser/search/t;

    if-eqz v0, :cond_3

    .line 1179
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->s:Lcom/dolphin/browser/search/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/t;->b(Z)Z

    .line 1181
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/search/k;->notifyDataSetChanged()V

    .line 1182
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/dolphin/browser/search/k;->n:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/k;->m:Landroid/graphics/drawable/Drawable;

    .line 1552
    invoke-virtual {p0}, Lcom/dolphin/browser/search/k;->notifyDataSetChanged()V

    .line 1553
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1443
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    .line 1444
    iput-boolean v3, p0, Lcom/dolphin/browser/search/k;->y:Z

    .line 1445
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08037d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/dolphin/browser/search/k;->j:Lcom/dolphin/browser/search/p;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/w;->e()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/dolphin/browser/search/w;->d:I

    invoke-interface {v1, v2, v0}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;I)V

    .line 1450
    :goto_0
    return-void

    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/search/k;->j:Lcom/dolphin/browser/search/p;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/w;->e()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/dolphin/browser/search/w;->d:I

    invoke-interface {v1, v2, v0, v3}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;IZ)V

    goto :goto_0
.end method
