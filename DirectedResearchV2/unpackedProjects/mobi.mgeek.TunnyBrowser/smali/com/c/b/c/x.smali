.class public Lcom/c/b/c/x;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/c/b",
        "<",
        "Lcom/c/b/c/x;",
        "Lcom/c/b/c/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/y;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;

.field private static final e:Lorg/apache/c/b/b;

.field private static final f:Lorg/apache/c/b/b;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 69
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "Tag"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/x;->b:Lorg/apache/c/b/j;

    .line 76
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/x;->c:Lorg/apache/c/b/b;

    .line 78
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "name"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/x;->d:Lorg/apache/c/b/b;

    .line 80
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "parentGuid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/x;->e:Lorg/apache/c/b/b;

    .line 82
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "updateSequenceNum"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/x;->f:Lorg/apache/c/b/b;

    .line 169
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/y;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 171
    sget-object v1, Lcom/c/b/c/y;->a:Lcom/c/b/c/y;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "guid"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Guid"

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/c/b/c/y;->b:Lcom/c/b/c/y;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "name"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/c/b/c/y;->c:Lcom/c/b/c/y;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "parentGuid"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Guid"

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/c/b/c/y;->d:Lcom/c/b/c/y;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "updateSequenceNum"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/x;->a:Ljava/util/Map;

    .line 184
    const-class v0, Lcom/c/b/c/x;

    sget-object v1, Lcom/c/b/c/x;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/x;->k:[Z

    .line 188
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/c/b/c/x;
    .locals 2

    .prologue
    .line 615
    if-eqz p0, :cond_1

    .line 616
    new-instance v0, Lcom/c/b/c/x;

    invoke-direct {v0}, Lcom/c/b/c/x;-><init>()V

    .line 617
    const-string v1, "guid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/x;->a(Ljava/lang/String;)V

    .line 618
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/x;->b(Ljava/lang/String;)V

    .line 619
    const-string v1, "parentGuid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/x;->c(Ljava/lang/String;)V

    .line 620
    const-string v1, "updateSequenceNum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    const-string v1, "updateSequenceNum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/x;->a(I)V

    .line 626
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 601
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 604
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 605
    invoke-static {v3}, Lcom/c/b/c/x;->a(Lorg/json/JSONObject;)Lcom/c/b/c/x;

    move-result-object v3

    .line 606
    if-eqz v3, :cond_0

    .line 607
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 303
    iput p1, p0, Lcom/c/b/c/x;->j:I

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/x;->a(Z)V

    .line 305
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 520
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 522
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 523
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 561
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 562
    invoke-virtual {p0}, Lcom/c/b/c/x;->h()V

    .line 563
    return-void

    .line 526
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 557
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 559
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 528
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_1

    .line 529
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    goto :goto_1

    .line 531
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 535
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_2

    .line 536
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    goto :goto_1

    .line 538
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 542
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_3

    .line 543
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    goto :goto_1

    .line 545
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 549
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 550
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    iput v0, p0, Lcom/c/b/c/x;->j:I

    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/x;->a(Z)V

    goto :goto_1

    .line 553
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/c/b/c/x;->k:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 321
    return-void
.end method

.method public a(Lcom/c/b/c/x;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 409
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/x;->b()Z

    move-result v1

    .line 413
    invoke-virtual {p1}, Lcom/c/b/c/x;->b()Z

    move-result v2

    .line 414
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 415
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/x;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/x;->d()Z

    move-result v1

    .line 422
    invoke-virtual {p1}, Lcom/c/b/c/x;->d()Z

    move-result v2

    .line 423
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 424
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 426
    iget-object v1, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/x;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/x;->e()Z

    move-result v1

    .line 431
    invoke-virtual {p1}, Lcom/c/b/c/x;->e()Z

    move-result v2

    .line 432
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 433
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 435
    iget-object v1, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/x;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/x;->g()Z

    move-result v1

    .line 441
    invoke-virtual {p1}, Lcom/c/b/c/x;->g()Z

    move-result v2

    .line 443
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 444
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 446
    iget v1, p0, Lcom/c/b/c/x;->j:I

    iget v2, p1, Lcom/c/b/c/x;->j:I

    if-ne v1, v2, :cond_0

    .line 450
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/c/x;)I
    .locals 2

    .prologue
    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 511
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/x;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/x;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 467
    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/c/b/c/x;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/x;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 472
    if-nez v0, :cond_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/x;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/x;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 478
    if-nez v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/c/b/c/x;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/x;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 483
    if-nez v0, :cond_0

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/x;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/x;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 489
    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/c/b/c/x;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/x;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 495
    if-nez v0, :cond_0

    .line 499
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/x;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/x;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 501
    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/c/b/c/x;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 505
    iget v0, p0, Lcom/c/b/c/x;->j:I

    iget v1, p1, Lcom/c/b/c/x;->j:I

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(II)I

    move-result v0

    .line 507
    if-nez v0, :cond_0

    .line 511
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public b(Lorg/apache/c/b/f;)V
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/c/b/c/x;->h()V

    .line 568
    sget-object v0, Lcom/c/b/c/x;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 569
    iget-object v0, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/c/b/c/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    sget-object v0, Lcom/c/b/c/x;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 572
    iget-object v0, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/c/b/c/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    sget-object v0, Lcom/c/b/c/x;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 579
    iget-object v0, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {p0}, Lcom/c/b/c/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    sget-object v0, Lcom/c/b/c/x;->e:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 586
    iget-object v0, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 590
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/x;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    sget-object v0, Lcom/c/b/c/x;->f:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 592
    iget v0, p0, Lcom/c/b/c/x;->j:I

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(I)V

    .line 593
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 595
    :cond_3
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 596
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 597
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcom/c/b/c/x;

    invoke-virtual {p0, p1}, Lcom/c/b/c/x;->b(Lcom/c/b/c/x;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 401
    if-nez p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/x;

    if-eqz v1, :cond_0

    .line 404
    check-cast p1, Lcom/c/b/c/x;

    invoke-virtual {p0, p1}, Lcom/c/b/c/x;->a(Lcom/c/b/c/x;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/c/b/c/x;->j:I

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/c/b/c/x;->k:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 635
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 638
    :try_start_0
    invoke-virtual {p0}, Lcom/c/b/c/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "guid"

    iget-object v2, p0, Lcom/c/b/c/x;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    const-string v0, "name"

    iget-object v2, p0, Lcom/c/b/c/x;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    const-string v0, "parentGuid"

    iget-object v2, p0, Lcom/c/b/c/x;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/x;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    const-string v0, "updateSequenceNum"

    iget v2, p0, Lcom/c/b/c/x;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
