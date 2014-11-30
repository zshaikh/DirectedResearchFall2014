.class public Lcom/acmeaom/android/b/c/g/h;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/f/y;


# static fields
.field public static a:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field private b:Lcom/acmeaom/android/a/f/o;

.field private d:Lcom/acmeaom/android/a/a/b/e;

.field private e:Lcom/acmeaom/android/a/a/b/e;

.field private final f:Lcom/acmeaom/android/a/a/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4082c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/g/h;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    .line 65
    sget-object v0, Lcom/acmeaom/android/b/c/g/h;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 62
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    .line 67
    new-instance v0, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->d:Lcom/acmeaom/android/a/a/b/e;

    .line 69
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/b/c/g/i;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/g/i;-><init>(Lcom/acmeaom/android/b/c/g/h;)V

    const-string v2, "kHurricanesStatusChanged"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private a(Lcom/acmeaom/android/b/e/a/b;)Lcom/acmeaom/android/a/a/b/e;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 256
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v3

    .line 257
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/b;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "No active storms"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 312
    :goto_0
    return-object v0

    .line 263
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 265
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/b;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/e/a/a;

    .line 266
    const-string v1, "id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    if-eqz v1, :cond_5

    .line 270
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acmeaom/android/b/c/g/d;

    .line 271
    if-nez v2, :cond_2

    .line 272
    new-instance v2, Lcom/acmeaom/android/b/c/g/d;

    invoke-direct {v2, v1}, Lcom/acmeaom/android/b/c/g/d;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    invoke-virtual {v0}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/acmeaom/android/b/e/a/c;->c_()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Point"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    new-instance v1, Lcom/acmeaom/android/b/c/g/e;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/b/c/g/e;-><init>(Lcom/acmeaom/android/b/e/a/a;)V

    .line 279
    const-string v6, "name"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 281
    invoke-virtual {v2, v0}, Lcom/acmeaom/android/b/c/g/d;->a(Lcom/acmeaom/android/b/e/a/a;)V

    .line 282
    invoke-virtual {v2}, Lcom/acmeaom/android/b/c/g/d;->b()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 286
    :cond_3
    invoke-virtual {v2}, Lcom/acmeaom/android/b/c/g/d;->b()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {v0}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/acmeaom/android/b/e/a/c;->c_()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Polygon"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    new-instance v1, Lcom/acmeaom/android/b/c/g/a;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/b/c/g/a;-><init>(Lcom/acmeaom/android/b/e/a/a;)V

    .line 291
    invoke-virtual {v2}, Lcom/acmeaom/android/b/c/g/d;->c()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/o;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :cond_5
    const-string v1, "basin"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 295
    const-string v0, "Got area of interest"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 303
    :cond_6
    const-string v0, "Unknown geometry!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 307
    :cond_7
    new-instance v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/e;-><init>(Ljava/util/Collection;)V

    .line 308
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v1

    if-lez v1, :cond_8

    .line 309
    invoke-virtual {v3, v0}, Lcom/acmeaom/android/a/a/b/o;->b(Lcom/acmeaom/android/a/a/b/e;)V

    :cond_8
    move-object v0, v3

    .line 312
    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    const-string v0, "https://s.mrsv.co/hur2.ashx"

    .line 317
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string v0, "http://frammish.org/cones.txt"

    .line 320
    :cond_0
    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 237
    const-string v0, "response: %@"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const-class v0, Ljava/util/ArrayList;

    const-class v1, Lcom/acmeaom/android/a/a/b/e;

    invoke-static {p2, v0, v1}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/acmeaom/android/b/e/a/b;

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/b/e/a/b;-><init>(Ljava/util/HashMap;)V

    .line 240
    if-nez v1, :cond_0

    .line 242
    const-string v0, "Can not parse server response"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Lcom/acmeaom/android/a/a/b/e;->d()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->e:Lcom/acmeaom/android/a/a/b/e;

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {v1}, Lcom/acmeaom/android/b/e/a/b;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/e/a/a;

    .line 248
    if-eqz v0, :cond_1

    .line 249
    const-string v2, "col: %@"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_1
    invoke-direct {p0, v1}, Lcom/acmeaom/android/b/c/g/h;->a(Lcom/acmeaom/android/b/e/a/b;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->e:Lcom/acmeaom/android/a/a/b/e;

    .line 252
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/g/h;->r()V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    .line 88
    const-string v0, "kHurricanesStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/g/h;->c(Lcom/acmeaom/android/a/f/o;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->e:Lcom/acmeaom/android/a/a/b/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 80
    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/g/h;->g()V

    .line 329
    return-void
.end method

.method public c(Lcom/acmeaom/android/a/f/o;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/g/h;->g()V

    .line 93
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 94
    iput-object v1, p0, Lcom/acmeaom/android/b/c/g/h;->d:Lcom/acmeaom/android/a/a/b/e;

    .line 95
    iput-object v1, p0, Lcom/acmeaom/android/b/c/g/h;->e:Lcom/acmeaom/android/a/a/b/e;

    .line 96
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->b:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->b:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 99
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/a/f/o;->b()Lcom/acmeaom/android/a/f/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->b:Lcom/acmeaom/android/a/f/o;

    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->b:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/y;)V

    .line 101
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 102
    return-void
.end method

.method public e()V
    .locals 17

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/acmeaom/android/b/c/g/h;->g()V

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/acmeaom/android/b/c/g/h;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v7

    .line 109
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v15

    .line 110
    new-instance v11, Lcom/acmeaom/android/b/e/a;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    sget-object v2, Lcom/acmeaom/android/a/f/l;->g:Lcom/acmeaom/android/a/f/l;

    iget v2, v2, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-direct {v11, v7, v1, v2}, Lcom/acmeaom/android/b/e/a;-><init>(FLcom/acmeaom/android/a/a/c/l;I)V

    .line 111
    new-instance v12, Lcom/acmeaom/android/b/c/g/j;

    invoke-direct {v12}, Lcom/acmeaom/android/b/c/g/j;-><init>()V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/acmeaom/android/b/c/g/h;->e:Lcom/acmeaom/android/a/a/b/e;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/b/c/g/d;

    .line 114
    invoke-virtual {v12, v1, v7}, Lcom/acmeaom/android/b/c/g/j;->c(Lcom/acmeaom/android/b/c/g/d;F)Lcom/acmeaom/android/b/c/g/c;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v15, v2}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 119
    :cond_1
    invoke-virtual {v12, v1, v7}, Lcom/acmeaom/android/b/c/g/j;->b(Lcom/acmeaom/android/b/c/g/d;F)Lcom/acmeaom/android/c/g/c/b;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {v15, v2}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 124
    :cond_2
    invoke-virtual {v12, v1, v7}, Lcom/acmeaom/android/b/c/g/j;->a(Lcom/acmeaom/android/b/c/g/d;F)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v3

    if-lez v3, :cond_3

    .line 126
    invoke-virtual {v15, v2}, Lcom/acmeaom/android/a/a/b/o;->b(Lcom/acmeaom/android/a/a/b/e;)V

    .line 129
    :cond_3
    invoke-virtual {v1}, Lcom/acmeaom/android/b/c/g/d;->b()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/o;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/acmeaom/android/b/c/g/e;

    .line 130
    instance-of v1, v8, Lcom/acmeaom/android/b/c/g/d;

    if-nez v1, :cond_5

    .line 131
    invoke-virtual {v8}, Lcom/acmeaom/android/b/c/g/e;->m()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v8}, Lcom/acmeaom/android/b/c/g/e;->p()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v2

    .line 133
    new-instance v3, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v9

    invoke-direct {v3, v4, v5, v9, v10}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 136
    invoke-virtual {v11, v1}, Lcom/acmeaom/android/b/e/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 137
    invoke-virtual {v12, v8, v7}, Lcom/acmeaom/android/b/c/g/j;->a(Lcom/acmeaom/android/b/c/g/e;F)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v2

    .line 139
    invoke-virtual {v11, v2, v3, v1}, Lcom/acmeaom/android/b/e/a;->a(Ljava/lang/Object;Lcom/acmeaom/android/a/a/d/a;Ljava/lang/String;)V

    .line 145
    :cond_5
    :goto_1
    invoke-virtual {v8}, Lcom/acmeaom/android/b/c/g/e;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 146
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->b()Lcom/acmeaom/android/a/i/d;

    move-result-object v5

    .line 147
    const/4 v1, 0x0

    const v2, 0x3f2aaaab

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/i/d;->a(FF)Lcom/acmeaom/android/a/i/d;

    move-result-object v6

    .line 148
    const/high16 v2, 0x41200000

    .line 149
    const/high16 v4, 0x41100000

    .line 150
    sget-object v1, Lcom/acmeaom/android/a/f/l;->e:Lcom/acmeaom/android/a/f/l;

    iget v1, v1, Lcom/acmeaom/android/a/f/l;->o:I

    .line 151
    instance-of v3, v8, Lcom/acmeaom/android/b/c/g/d;

    if-eqz v3, :cond_a

    .line 152
    const/high16 v4, 0x41400000

    .line 153
    const/high16 v3, 0x40000000

    mul-float/2addr v2, v3

    .line 154
    add-int/lit8 v1, v1, -0x1

    move v9, v1

    move v10, v2

    .line 157
    :goto_2
    new-instance v1, Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v8}, Lcom/acmeaom/android/b/c/g/e;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Verdana"

    invoke-direct/range {v1 .. v7}, Lcom/acmeaom/android/c/g/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;Lcom/acmeaom/android/a/i/d;F)V

    .line 161
    invoke-virtual {v8}, Lcom/acmeaom/android/b/c/g/e;->p()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/d/b;)V

    .line 162
    invoke-virtual {v1}, Lcom/acmeaom/android/c/g/c/e;->g()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v2

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    const/high16 v3, 0x3f000000

    mul-float/2addr v2, v3

    add-float/2addr v2, v10

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 164
    invoke-virtual {v1, v9}, Lcom/acmeaom/android/c/g/c/e;->a(I)V

    .line 166
    invoke-virtual {v15, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 141
    :cond_6
    invoke-virtual {v11, v3, v1}, Lcom/acmeaom/android/b/e/a;->a(Lcom/acmeaom/android/a/a/d/a;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_7
    invoke-virtual {v11}, Lcom/acmeaom/android/b/e/a;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v2

    if-lez v2, :cond_8

    .line 179
    const-string v2, "adding %d objects for hurricane dots"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v15, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Lcom/acmeaom/android/a/a/b/e;)V

    .line 182
    :cond_8
    invoke-virtual {v11}, Lcom/acmeaom/android/b/e/a;->c()V

    .line 184
    invoke-virtual {v15}, Lcom/acmeaom/android/a/a/b/o;->a()I

    move-result v1

    if-nez v1, :cond_9

    .line 186
    new-instance v8, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v8}, Lcom/acmeaom/android/a/a/d/b;-><init>()V

    .line 187
    new-instance v16, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct/range {v16 .. v16}, Lcom/acmeaom/android/a/a/d/b;-><init>()V

    .line 189
    const-wide v1, 0x403f4cccc0000000L

    invoke-virtual {v8, v1, v2}, Lcom/acmeaom/android/a/a/d/b;->b(D)V

    .line 190
    const-wide v1, -0x3fad933340000000L

    invoke-virtual {v8, v1, v2}, Lcom/acmeaom/android/a/a/d/b;->a(D)V

    .line 192
    const-wide v1, 0x403e9999a0000000L

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/d/b;->b(D)V

    .line 193
    const-wide v1, -0x3fa1066660000000L

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/d/b;->a(D)V

    .line 195
    const-string v2, "No tropical cyclones"

    .line 196
    const/4 v1, 0x0

    const v3, 0x3f2aaaab

    invoke-static {v1, v3}, Lcom/acmeaom/android/a/i/d;->a(FF)Lcom/acmeaom/android/a/i/d;

    move-result-object v6

    .line 197
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->b()Lcom/acmeaom/android/a/i/d;

    move-result-object v5

    .line 199
    new-instance v1, Lcom/acmeaom/android/c/g/c/e;

    const-string v3, "Verdana"

    const/high16 v4, 0x41400000

    invoke-direct/range {v1 .. v7}, Lcom/acmeaom/android/c/g/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;Lcom/acmeaom/android/a/i/d;F)V

    .line 201
    invoke-virtual {v1, v8}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/d/b;)V

    .line 202
    invoke-virtual {v1}, Lcom/acmeaom/android/c/g/c/e;->g()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v3

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->a:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 204
    new-instance v8, Lcom/acmeaom/android/c/g/c/e;

    const-string v10, "Verdana"

    const/high16 v11, 0x41400000

    move-object v9, v2

    move-object v12, v5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/acmeaom/android/c/g/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;Lcom/acmeaom/android/a/i/d;F)V

    .line 206
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/d/b;)V

    .line 207
    invoke-virtual {v8}, Lcom/acmeaom/android/c/g/c/e;->g()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v2

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 209
    invoke-virtual {v15, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v15, v8}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 213
    :cond_9
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/acmeaom/android/b/c/g/h;->d:Lcom/acmeaom/android/a/a/b/e;

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/acmeaom/android/b/c/g/h;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acmeaom/android/b/c/g/h;->d:Lcom/acmeaom/android/a/a/b/e;

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/Iterable;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 217
    return-void

    :cond_a
    move v9, v1

    move v10, v2

    goto/16 :goto_2
.end method

.method public g()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 221
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->d:Lcom/acmeaom/android/a/a/b/e;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/g/h;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/g/h;->d:Lcom/acmeaom/android/a/a/b/e;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Iterable;)V

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->d:Lcom/acmeaom/android/a/a/b/e;

    .line 225
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->f:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 226
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->b:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/h;->b:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 335
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->i()V

    .line 336
    return-void
.end method
