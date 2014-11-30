.class public Lam/sunrise/android/calendar/ui/widgets/agenda/l;
.super Lam/sunrise/android/calendar/ui/widgets/agenda/k;
.source "AgendaViewBirthdaysItem.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/text/TextPaint;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/k;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Lcom/b/a/ay;

.field private q:[Landroid/graphics/drawable/Drawable;

.field private r:[[Landroid/text/StaticLayout;

.field private s:[Lcom/b/a/ay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->c()V

    .line 71
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(ILandroid/graphics/drawable/Drawable;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    .line 250
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 252
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    :cond_0
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;ILandroid/graphics/drawable/Drawable;II)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(ILandroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 227
    :cond_0
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    return v0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->e:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->invalidate()V

    .line 237
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 148
    const v0, 0x7f020089

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->setBackgroundResource(I)V

    .line 150
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a:Landroid/graphics/Paint;

    .line 153
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 156
    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->b:I

    .line 157
    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->c:I

    .line 158
    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->d:I

    .line 160
    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->e:I

    .line 161
    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->f:I

    .line 162
    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->g:I

    .line 164
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x7f0a0014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f0c0025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->h:Landroid/text/TextPaint;

    .line 170
    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->i:I

    .line 172
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    .line 173
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->k:I

    .line 175
    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->l:I

    .line 177
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->m:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->m:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/n;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/n;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->p:Lcom/b/a/ay;

    .line 182
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->l:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/agenda/m;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->s:[Lcom/b/a/ay;

    .line 185
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Landroid/text/StaticLayout;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/text/StaticLayout;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    .line 186
    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Landroid/graphics/drawable/Drawable;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->e()V

    .line 193
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->n:Ljava/util/ArrayList;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    :cond_0
    move v1, v2

    .line 197
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/k;

    .line 200
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->s:[Lcom/b/a/ay;

    new-instance v4, Lam/sunrise/android/calendar/ui/widgets/agenda/m;

    iget-object v5, v0, Lam/sunrise/android/calendar/ui/mainview/k;->h:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, p0, v5, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/m;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/l;Ljava/lang/String;I)V

    aput-object v4, v3, v1

    .line 202
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v3

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/k;->h:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v3

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    invoke-virtual {v3, v4, v5}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/b/a/as;->a(Landroid/graphics/drawable/Drawable;)Lcom/b/a/as;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/b/a/as;->b(Landroid/graphics/drawable/Drawable;)Lcom/b/a/as;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->s:[Lcom/b/a/ay;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 210
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v3, v3, v1

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/k;->i:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->h:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static {v4, v5, v8, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v4

    aput-object v4, v3, v2

    .line 213
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v3, v3, v1

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->j:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->h:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static {v0, v4, v8, v5, v6}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    aput-object v0, v3, v8

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->e:I

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->p:Lcom/b/a/ay;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    goto/16 :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v0

    .line 243
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->s:[Lcom/b/a/ay;

    aput-object v2, v1, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    return-void

    .line 99
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->f:I

    .line 100
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->c:I

    .line 102
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->e:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 110
    :cond_2
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->g:I

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 112
    :goto_0
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    .line 117
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->q:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    :cond_3
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v5, v5, v0

    if-eqz v5, :cond_4

    .line 121
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->i:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 127
    :cond_4
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 129
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->k:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->getDefaultSize(II)I

    move-result v1

    .line 136
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->c:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->j:I

    add-int/2addr v0, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->i:I

    add-int/2addr v0, v2

    .line 138
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->r:[[Landroid/text/StaticLayout;

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 142
    :cond_0
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->d:I

    add-int/2addr v0, v2

    .line 144
    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(II)V

    .line 145
    return-void
.end method

.method public setBirthdays(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->n:Ljava/util/ArrayList;

    .line 85
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->d()V

    .line 86
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->requestLayout()V

    .line 87
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->invalidate()V

    .line 88
    return-void
.end method
