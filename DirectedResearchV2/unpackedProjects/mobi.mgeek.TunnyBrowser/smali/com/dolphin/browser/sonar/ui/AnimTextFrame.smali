.class public Lcom/dolphin/browser/sonar/ui/AnimTextFrame;
.super Landroid/view/View;
.source "AnimTextFrame.java"


# static fields
.field private static final a:[Landroid/view/animation/Interpolator;

.field private static final b:[J


# instance fields
.field private final c:[Lcom/dolphin/browser/sonar/ui/b;

.field private d:Ljava/util/Random;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sonar/ui/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroid/text/TextPaint;

.field private final k:Ljava/lang/Runnable;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a:[Landroid/view/animation/Interpolator;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->b:[J

    return-void

    :array_0
    .array-data 8
        0x46
        0x5a
        0x5a
        0x6e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const v9, 0x3f333333

    const v2, 0x3eb33333

    const/4 v8, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x2

    new-array v6, v0, [Lcom/dolphin/browser/sonar/ui/b;

    new-instance v0, Lcom/dolphin/browser/sonar/ui/b;

    const-wide/16 v4, 0x1388

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/sonar/ui/b;-><init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;FFJ)V

    aput-object v0, v6, v8

    const/4 v7, 0x1

    new-instance v0, Lcom/dolphin/browser/sonar/ui/b;

    const-wide/16 v4, 0x1770

    move-object v1, p0

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/sonar/ui/b;-><init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;FFJ)V

    aput-object v0, v6, v7

    iput-object v6, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c:[Lcom/dolphin/browser/sonar/ui/b;

    .line 53
    iput-boolean v8, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f:Z

    .line 54
    iput-boolean v8, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g:Z

    .line 229
    new-instance v0, Lcom/dolphin/browser/sonar/ui/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sonar/ui/a;-><init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)V

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->k:Ljava/lang/Runnable;

    .line 356
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->l:I

    .line 62
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const v9, 0x3f333333

    const v2, 0x3eb33333

    const/4 v8, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x2

    new-array v6, v0, [Lcom/dolphin/browser/sonar/ui/b;

    new-instance v0, Lcom/dolphin/browser/sonar/ui/b;

    const-wide/16 v4, 0x1388

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/sonar/ui/b;-><init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;FFJ)V

    aput-object v0, v6, v8

    const/4 v7, 0x1

    new-instance v0, Lcom/dolphin/browser/sonar/ui/b;

    const-wide/16 v4, 0x1770

    move-object v1, p0

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/sonar/ui/b;-><init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;FFJ)V

    aput-object v0, v6, v7

    iput-object v6, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c:[Lcom/dolphin/browser/sonar/ui/b;

    .line 53
    iput-boolean v8, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f:Z

    .line 54
    iput-boolean v8, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g:Z

    .line 229
    new-instance v0, Lcom/dolphin/browser/sonar/ui/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sonar/ui/a;-><init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)V

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->k:Ljava/lang/Runnable;

    .line 356
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->l:I

    .line 67
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->i:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->b(Landroid/content/Context;)Landroid/text/TextPaint;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->d:Ljava/util/Random;

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(Landroid/content/Context;Landroid/graphics/Paint;)V

    .line 74
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setSoftwareRendering(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Paint;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 100
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/voice/command/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v8, :cond_6

    .line 104
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/j;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice_anim_text_items_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "array"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 106
    if-lez v0, :cond_2

    .line 107
    invoke-static {p1, v0}, Lcom/dolphin/browser/voice/command/c;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 113
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v8, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 129
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/c;

    .line 131
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sonar/ui/c;->a(F)V

    goto :goto_2

    .line 109
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v0, 0x7f07003b

    invoke-static {p1, v0}, Lcom/dolphin/browser/voice/command/c;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/voice/command/c;

    .line 122
    new-instance v6, Lcom/dolphin/browser/sonar/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, p2}, Lcom/dolphin/browser/sonar/ui/c;-><init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 123
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    invoke-static {v6}, Lcom/dolphin/browser/sonar/ui/c;->a(Lcom/dolphin/browser/sonar/ui/c;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 126
    invoke-static {v6}, Lcom/dolphin/browser/sonar/ui/c;->a(Lcom/dolphin/browser/sonar/ui/c;)F

    move-result v0

    .line 116
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 133
    :cond_4
    iput-object v4, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    .line 134
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->h:I

    .line 135
    return-void

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->i:I

    return v0
.end method

.method private b(Landroid/content/Context;)Landroid/text/TextPaint;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->j:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 82
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0159

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 83
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 84
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0167

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 85
    iput-object v1, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->j:Landroid/text/TextPaint;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->j:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()[Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a:[Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Lcom/dolphin/browser/sonar/ui/b;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->h()Lcom/dolphin/browser/sonar/ui/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()[J
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->b:[J

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->i:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g:Z

    .line 179
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f:Z

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/c;

    .line 182
    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/c;->a()V

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->h:I

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g:Z

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g:Z

    .line 191
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->invalidate()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f:Z

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f:Z

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c:[Lcom/dolphin/browser/sonar/ui/b;

    array-length v0, v0

    .line 198
    iput v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->i:I

    .line 199
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/c;

    const/high16 v2, 0x3f800000

    const v3, 0x3e99999a

    const/high16 v4, 0x3f000000

    iget-object v5, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->d:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c:[Lcom/dolphin/browser/sonar/ui/b;

    aget-object v3, v3, v1

    sget-object v4, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a:[Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/dolphin/browser/sonar/ui/c;->a(FLcom/dolphin/browser/sonar/ui/b;Landroid/view/animation/Interpolator;)V

    .line 199
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_1
    return-void
.end method

.method private h()Lcom/dolphin/browser/sonar/ui/b;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c:[Lcom/dolphin/browser/sonar/ui/b;

    array-length v1, v0

    .line 221
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 222
    iget-object v2, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c:[Lcom/dolphin/browser/sonar/ui/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/dolphin/browser/sonar/ui/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->c:[Lcom/dolphin/browser/sonar/ui/b;

    aget-object v0, v1, v0

    .line 226
    :goto_1
    return-object v0

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic h(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->d:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 160
    iget-object v2, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    .line 161
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->j:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->a(Landroid/content/Context;Landroid/graphics/Paint;)V

    .line 164
    if-eqz v2, :cond_2

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/c;

    .line 169
    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/c;->b(Lcom/dolphin/browser/sonar/ui/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->l:I

    if-ne v0, p1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->f()V

    goto :goto_0

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 371
    iget-object v2, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    .line 372
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 376
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 377
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/c;->a()V

    .line 376
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->g()V

    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->e:Ljava/util/List;

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/c;

    .line 213
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->getHeight()I

    move-result v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/sonar/ui/c;->a(Landroid/graphics/Canvas;IIJ)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->postInvalidate()V

    .line 217
    :cond_1
    return-void
.end method
