.class public Lam/sunrise/android/calendar/ui/widgets/agenda/t;
.super Lam/sunrise/android/calendar/ui/widgets/agenda/k;
.source "AgendaViewTimeSectionItem.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:[Ljava/lang/String;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Typeface;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:I

.field private n:Ljava/util/Calendar;

.field private o:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

.field private p:Ljava/lang/String;

.field private q:Landroid/text/StaticLayout;

.field private r:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Lcom/b/a/ay;

.field private u:Landroid/text/StaticLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v1, "chanceflurries"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "chancerain"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "chancesleet"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "chancesnow"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "chancetstorms"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "clear"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "sunny"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "cloudy"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "flurries"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "fog"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "hazy"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "mostlycloudy"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "mostlysunny"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "partlycloudy"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "partlysunny"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "rain"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "sleet"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "snow"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "tstorms"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "unknown"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->c()V

    .line 128
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/t;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 268
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 271
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->i:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->i:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->invalidate()V

    .line 274
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const v7, 0xffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->b:[Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->b:[Ljava/lang/String;

    const-string v2, "%06X"

    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f0a0021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    and-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 199
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->b:[Ljava/lang/String;

    const-string v2, "%06X"

    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f0a0022

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    and-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 201
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->b:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "%06X"

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0a0023

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    and-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 204
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->c:F

    .line 206
    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->d:I

    .line 207
    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->e:I

    .line 209
    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->f:I

    .line 210
    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->g:I

    .line 211
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->h:Landroid/graphics/Typeface;

    .line 213
    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->i:I

    .line 215
    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->j:I

    .line 216
    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->k:I

    .line 217
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->l:Landroid/graphics/Typeface;

    .line 219
    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->m:I

    .line 221
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->d:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    return-void
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 225
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->o:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/v;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->p:Ljava/lang/String;

    .line 226
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->c:F

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->g:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->f:I

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->h:Landroid/graphics/Typeface;

    invoke-static {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    .line 229
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->p:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->p:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->q:Landroid/text/StaticLayout;

    .line 233
    iput-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->u:Landroid/text/StaticLayout;

    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 236
    iput-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    .line 238
    :cond_0
    iput-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->t:Lcom/b/a/ay;

    .line 240
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->r:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/u;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/u;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/t;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->t:Lcom/b/a/ay;

    .line 243
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->r:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    iget-object v0, v0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->condition:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;

    iget-object v1, v0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;->id:Ljava/lang/String;

    .line 244
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    :goto_0
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->b:[Ljava/lang/String;

    aget-object v0, v3, v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->i:I

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->t:Lcom/b/a/ay;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 253
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f016f

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->m(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->r:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    iget-object v0, v0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->temperature:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Temperature;

    iget v0, v0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Temperature;->f:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->c:F

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->k:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->j:I

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->l:Landroid/graphics/Typeface;

    invoke-static {v0, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    .line 258
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {v1, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->u:Landroid/text/StaticLayout;

    .line 262
    :cond_1
    return-void

    :cond_2
    move v0, v8

    .line 244
    goto :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->r:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    iget-object v0, v0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->temperature:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Temperature;

    iget v0, v0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Temperature;->c:I

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/Calendar;Lam/sunrise/android/calendar/ui/widgets/agenda/v;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->n:Ljava/util/Calendar;

    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->o:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    if-eq v0, p2, :cond_0

    .line 143
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->o:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    .line 144
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->d()V

    .line 145
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->requestLayout()V

    .line 146
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->invalidate()V

    .line 148
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 159
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->q:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->e:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->q:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->q:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->e:I

    sub-int/2addr v0, v1

    .line 171
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->u:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->u:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 175
    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->u:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->u:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 178
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->m:I

    sub-int/2addr v0, v1

    .line 181
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 190
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Landroid/graphics/Canvas;I)V

    .line 191
    return-void
.end method

.method public setWeatherForecast(Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->r:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    .line 152
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->d()V

    .line 153
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->requestLayout()V

    .line 154
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->invalidate()V

    .line 155
    return-void
.end method
