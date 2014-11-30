.class public Lcom/dolphin/browser/titlebar/h;
.super Ljava/lang/Object;
.source "ProgressController.java"

# interfaces
.implements Lcom/dolphin/browser/titlebar/f;


# static fields
.field private static d:Lcom/dolphin/browser/titlebar/h;

.field private static e:J

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:F

.field private static k:F

.field private static l:F

.field private static m:F


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/dolphin/browser/titlebar/j;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/titlebar/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/dolphin/browser/titlebar/h;

    invoke-direct {v0}, Lcom/dolphin/browser/titlebar/h;-><init>()V

    sput-object v0, Lcom/dolphin/browser/titlebar/h;->d:Lcom/dolphin/browser/titlebar/h;

    .line 81
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/dolphin/browser/titlebar/h;->e:J

    .line 87
    const/16 v0, 0x3e8

    sput v0, Lcom/dolphin/browser/titlebar/h;->f:I

    .line 88
    const/16 v0, 0x7d0

    sput v0, Lcom/dolphin/browser/titlebar/h;->g:I

    .line 89
    const/16 v0, 0x320

    sput v0, Lcom/dolphin/browser/titlebar/h;->h:I

    .line 90
    const/16 v0, 0xc8

    sput v0, Lcom/dolphin/browser/titlebar/h;->i:I

    .line 92
    const/high16 v0, 0x41200000

    sget v1, Lcom/dolphin/browser/titlebar/h;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/dolphin/browser/titlebar/h;->j:F

    .line 93
    const/high16 v0, 0x425c0000

    sget v1, Lcom/dolphin/browser/titlebar/h;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/dolphin/browser/titlebar/h;->k:F

    .line 95
    const/high16 v0, 0x41700000

    sget v1, Lcom/dolphin/browser/titlebar/h;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/dolphin/browser/titlebar/h;->l:F

    .line 97
    const v0, 0x3a83126f

    sput v0, Lcom/dolphin/browser/titlebar/h;->m:F

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    .line 25
    new-instance v0, Lcom/dolphin/browser/titlebar/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/titlebar/i;-><init>(Lcom/dolphin/browser/titlebar/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/h;->b:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/h;->c:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method private a(Lcom/dolphin/browser/titlebar/j;FJ)F
    .locals 4

    .prologue
    .line 232
    iget v0, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    .line 233
    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    .line 234
    iget v0, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    long-to-float v1, p3

    mul-float/2addr v1, p2

    sget-wide v2, Lcom/dolphin/browser/titlebar/h;->e:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 235
    cmpl-float v1, v0, p2

    if-lez v1, :cond_2

    .line 244
    :cond_0
    :goto_0
    return p2

    .line 238
    :cond_1
    cmpl-float v1, v0, p2

    if-lez v1, :cond_2

    .line 239
    iget v0, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    long-to-float v1, p3

    mul-float/2addr v1, p2

    sget-wide v2, Lcom/dolphin/browser/titlebar/h;->e:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 240
    cmpg-float v1, v0, p2

    if-ltz v1, :cond_0

    :cond_2
    move p2, v0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/titlebar/j;IFJ)F
    .locals 4

    .prologue
    .line 212
    iget v0, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    .line 213
    iget v1, p1, Lcom/dolphin/browser/titlebar/j;->b:F

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 214
    iput p3, p1, Lcom/dolphin/browser/titlebar/j;->d:F

    .line 215
    iget v1, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    cmpl-float v1, v1, p3

    if-lez v1, :cond_0

    .line 216
    iget v0, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    sub-float/2addr v0, p3

    .line 217
    int-to-float v1, p2

    iget v2, p1, Lcom/dolphin/browser/titlebar/j;->b:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    add-float/2addr v2, p3

    div-float/2addr v1, v2

    .line 219
    iget v2, p1, Lcom/dolphin/browser/titlebar/j;->c:F

    long-to-float v3, p4

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 221
    :cond_0
    cmpg-float v1, v0, p3

    if-gez v1, :cond_2

    .line 227
    :cond_1
    :goto_0
    return p3

    :cond_2
    move p3, v0

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/titlebar/h;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dolphin/browser/titlebar/h;->d:Lcom/dolphin/browser/titlebar/h;

    return-object v0
.end method

.method private a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 115
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)F
    .locals 11

    .prologue
    const/high16 v6, 0x42c80000

    const v7, 0x42c7cccd

    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/titlebar/j;

    .line 250
    if-nez v1, :cond_0

    .line 323
    :goto_0
    return v0

    .line 255
    :cond_0
    iget v2, v1, Lcom/dolphin/browser/titlebar/j;->d:F

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v8, v1, Lcom/dolphin/browser/titlebar/j;->a:J

    sub-long v4, v3, v8

    .line 259
    iget v3, v1, Lcom/dolphin/browser/titlebar/j;->f:I

    packed-switch v3, :pswitch_data_0

    move v2, v0

    .line 310
    :goto_1
    cmpl-float v3, v0, v7

    if-lez v3, :cond_1

    iget v3, v1, Lcom/dolphin/browser/titlebar/j;->f:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    move v0, v7

    .line 315
    :cond_1
    cmpl-float v3, v0, v6

    if-ltz v3, :cond_6

    .line 317
    iput v6, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    move v0, v6

    goto :goto_0

    .line 262
    :pswitch_0
    iget v0, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    const/high16 v2, 0x41200000

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 263
    sget v0, Lcom/dolphin/browser/titlebar/h;->j:F

    .line 269
    :goto_2
    iget v2, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    long-to-float v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    move v10, v2

    move v2, v0

    move v0, v10

    .line 270
    goto :goto_1

    .line 265
    :cond_2
    sget v0, Lcom/dolphin/browser/titlebar/h;->j:F

    sget v2, Lcom/dolphin/browser/titlebar/h;->k:F

    long-to-float v3, v4

    mul-float/2addr v2, v3

    sget-wide v8, Lcom/dolphin/browser/titlebar/h;->e:J

    long-to-float v3, v8

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 266
    const/4 v2, 0x3

    iput v2, v1, Lcom/dolphin/browser/titlebar/j;->f:I

    .line 267
    sget v2, Lcom/dolphin/browser/titlebar/h;->k:F

    iput v2, v1, Lcom/dolphin/browser/titlebar/j;->d:F

    goto :goto_2

    .line 273
    :pswitch_1
    iget v0, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    const/high16 v3, 0x42820000

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 274
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/titlebar/j;FJ)F

    move-result v0

    .line 279
    :goto_3
    iget v2, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    long-to-float v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    move v10, v2

    move v2, v0

    move v0, v10

    .line 280
    goto :goto_1

    .line 276
    :cond_3
    const/16 v2, 0x4b

    sget v3, Lcom/dolphin/browser/titlebar/h;->m:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/titlebar/j;IFJ)F

    move-result v0

    goto :goto_3

    .line 283
    :pswitch_2
    iget v0, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    const/high16 v3, 0x42aa0000

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 284
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/titlebar/j;FJ)F

    move-result v0

    .line 289
    :goto_4
    iget v2, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    long-to-float v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    move v10, v2

    move v2, v0

    move v0, v10

    .line 290
    goto :goto_1

    .line 286
    :cond_4
    const/16 v2, 0x5f

    sget v3, Lcom/dolphin/browser/titlebar/h;->m:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/titlebar/j;IFJ)F

    move-result v0

    goto :goto_4

    .line 293
    :pswitch_3
    iget v0, v1, Lcom/dolphin/browser/titlebar/j;->c:F

    iget v2, v1, Lcom/dolphin/browser/titlebar/j;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 294
    iget v0, v1, Lcom/dolphin/browser/titlebar/j;->c:F

    iget v2, v1, Lcom/dolphin/browser/titlebar/j;->d:F

    long-to-float v3, v4

    mul-float/2addr v2, v3

    sget v3, Lcom/dolphin/browser/titlebar/h;->i:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 298
    :goto_5
    iget v2, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    long-to-float v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    move v10, v2

    move v2, v0

    move v0, v10

    .line 299
    goto/16 :goto_1

    .line 296
    :cond_5
    iget v0, v1, Lcom/dolphin/browser/titlebar/j;->c:F

    goto :goto_5

    :pswitch_4
    move v2, v0

    .line 304
    goto/16 :goto_1

    .line 319
    :cond_6
    iput v0, v1, Lcom/dolphin/browser/titlebar/j;->b:F

    .line 320
    iput v2, v1, Lcom/dolphin/browser/titlebar/j;->c:F

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/dolphin/browser/titlebar/j;->a:J

    goto/16 :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/h;->c(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;I)V
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/j;

    .line 106
    if-eqz v0, :cond_0

    .line 110
    iput p2, v0, Lcom/dolphin/browser/titlebar/j;->e:I

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/titlebar/e;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/j;

    .line 124
    if-eqz v0, :cond_0

    .line 127
    iget v0, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/titlebar/j;Lcom/dolphin/browser/core/ITab;)Z
    .locals 2

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/dolphin/browser/titlebar/j;->e:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/dolphin/browser/titlebar/j;->e:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    invoke-interface {p2}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/ITab;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x42820000

    const/4 v2, 0x0

    .line 138
    if-nez p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/j;

    .line 145
    invoke-direct {p0, p2}, Lcom/dolphin/browser/titlebar/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/titlebar/j;Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    :cond_2
    if-nez v0, :cond_3

    .line 150
    new-instance v0, Lcom/dolphin/browser/titlebar/j;

    invoke-direct {v0, p0, v4}, Lcom/dolphin/browser/titlebar/j;-><init>(Lcom/dolphin/browser/titlebar/h;Lcom/dolphin/browser/titlebar/i;)V

    .line 151
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_3
    iput v2, v0, Lcom/dolphin/browser/titlebar/j;->b:F

    .line 154
    iput p2, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    .line 155
    sget v1, Lcom/dolphin/browser/titlebar/h;->j:F

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/titlebar/j;->a:J

    .line 157
    const/4 v1, 0x0

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->e:I

    .line 206
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/h;->b()V

    goto :goto_0

    .line 158
    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    .line 159
    if-eqz v0, :cond_6

    iget v1, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    invoke-direct {p0, v1}, Lcom/dolphin/browser/titlebar/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 160
    iput p2, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    .line 161
    iget v1, v0, Lcom/dolphin/browser/titlebar/j;->b:F

    sub-float v1, v3, v1

    sget v2, Lcom/dolphin/browser/titlebar/h;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    .line 163
    iget v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    sget v2, Lcom/dolphin/browser/titlebar/h;->k:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 164
    sget v1, Lcom/dolphin/browser/titlebar/h;->k:F

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    goto :goto_1

    .line 167
    :cond_6
    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/titlebar/j;Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    if-nez v0, :cond_7

    .line 171
    new-instance v0, Lcom/dolphin/browser/titlebar/j;

    invoke-direct {v0, p0, v4}, Lcom/dolphin/browser/titlebar/j;-><init>(Lcom/dolphin/browser/titlebar/h;Lcom/dolphin/browser/titlebar/i;)V

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_7
    iput v2, v0, Lcom/dolphin/browser/titlebar/j;->b:F

    .line 175
    iput p2, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    .line 176
    iget v1, v0, Lcom/dolphin/browser/titlebar/j;->b:F

    sub-float v1, v3, v1

    sget v2, Lcom/dolphin/browser/titlebar/h;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/titlebar/j;->a:J

    goto :goto_1

    .line 180
    :cond_8
    if-nez p2, :cond_9

    .line 181
    if-eqz v0, :cond_4

    .line 182
    iput p2, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    .line 183
    iput v2, v0, Lcom/dolphin/browser/titlebar/j;->b:F

    goto :goto_1

    .line 186
    :cond_9
    if-eqz v0, :cond_4

    .line 187
    iget v1, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    if-le p2, v1, :cond_4

    .line 188
    iput p2, v0, Lcom/dolphin/browser/titlebar/j;->f:I

    .line 189
    const/4 v1, 0x4

    if-ne p2, v1, :cond_a

    .line 190
    const/high16 v1, 0x42aa0000

    iget v2, v0, Lcom/dolphin/browser/titlebar/j;->b:F

    sub-float/2addr v1, v2

    sget v2, Lcom/dolphin/browser/titlebar/h;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    .line 192
    iget v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    sget v2, Lcom/dolphin/browser/titlebar/h;->m:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 193
    sget v1, Lcom/dolphin/browser/titlebar/h;->m:F

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    goto :goto_1

    .line 195
    :cond_a
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 196
    const/high16 v1, 0x42c80000

    iget v2, v0, Lcom/dolphin/browser/titlebar/j;->b:F

    sub-float/2addr v1, v2

    sget v2, Lcom/dolphin/browser/titlebar/h;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    .line 198
    iget v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    sget v2, Lcom/dolphin/browser/titlebar/h;->l:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 199
    sget v1, Lcom/dolphin/browser/titlebar/h;->l:F

    iput v1, v0, Lcom/dolphin/browser/titlebar/j;->d:F

    goto/16 :goto_1
.end method

.method public b(Lcom/dolphin/browser/titlebar/e;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
