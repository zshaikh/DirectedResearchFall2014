.class public final Lorg/c/a/b/j;
.super Ljava/lang/Object;
.source "HttpFields.java"


# instance fields
.field private a:Lorg/c/a/c/f;

.field private b:Lorg/c/a/c/f;

.field private c:Lorg/c/a/b/j;


# direct methods
.method private constructor <init>(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    iput-object p1, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    .line 1254
    iput-object p2, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    .line 1255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/b/j;->c:Lorg/c/a/b/j;

    .line 1256
    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/b/f;)V
    .locals 0

    .prologue
    .line 1244
    invoke-direct {p0, p1, p2}, Lorg/c/a/b/j;-><init>(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    return-void
.end method

.method static synthetic a(Lorg/c/a/b/j;)Lorg/c/a/b/j;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lorg/c/a/b/j;->c:Lorg/c/a/b/j;

    return-object v0
.end method

.method static synthetic a(Lorg/c/a/b/j;Lorg/c/a/b/j;)Lorg/c/a/b/j;
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lorg/c/a/b/j;->c:Lorg/c/a/b/j;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    invoke-static {v0}, Lorg/c/a/c/k;->d(Lorg/c/a/c/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/c/a/c/f;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1261
    iget-object v0, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    instance-of v0, v0, Lorg/c/a/c/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    check-cast v0, Lorg/c/a/c/i;

    invoke-virtual {v0}, Lorg/c/a/c/i;->w()I

    move-result v0

    .line 1262
    :goto_0
    if-ltz v0, :cond_3

    .line 1263
    iget-object v0, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    invoke-interface {p1, v0}, Lorg/c/a/c/f;->b(Lorg/c/a/c/f;)I

    .line 1283
    :cond_0
    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Lorg/c/a/c/f;->a(B)V

    .line 1284
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lorg/c/a/c/f;->a(B)V

    .line 1286
    iget-object v0, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    instance-of v0, v0, Lorg/c/a/c/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    check-cast v0, Lorg/c/a/c/i;

    invoke-virtual {v0}, Lorg/c/a/c/i;->w()I

    move-result v0

    .line 1287
    :goto_1
    if-ltz v0, :cond_5

    .line 1288
    iget-object v0, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    invoke-interface {p1, v0}, Lorg/c/a/c/f;->b(Lorg/c/a/c/f;)I

    .line 1307
    :cond_1
    invoke-static {p1}, Lorg/c/a/c/k;->c(Lorg/c/a/c/f;)V

    .line 1308
    return-void

    :cond_2
    move v0, v1

    .line 1261
    goto :goto_0

    .line 1266
    :cond_3
    iget-object v0, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->h()I

    move-result v0

    .line 1267
    iget-object v2, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->q()I

    move-result v3

    .line 1268
    :goto_2
    if-ge v0, v3, :cond_0

    .line 1270
    iget-object v4, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v4, v0}, Lorg/c/a/c/f;->h(I)B

    move-result v0

    .line 1271
    sparse-switch v0, :sswitch_data_0

    .line 1278
    invoke-interface {p1, v0}, Lorg/c/a/c/f;->a(B)V

    move v0, v2

    .line 1280
    goto :goto_2

    :sswitch_0
    move v0, v2

    .line 1276
    goto :goto_2

    :cond_4
    move v0, v1

    .line 1286
    goto :goto_1

    .line 1291
    :cond_5
    iget-object v0, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->h()I

    move-result v0

    .line 1292
    iget-object v1, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->q()I

    move-result v2

    .line 1293
    :goto_3
    if-ge v0, v2, :cond_1

    .line 1295
    iget-object v3, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3, v0}, Lorg/c/a/c/f;->h(I)B

    move-result v0

    .line 1296
    packed-switch v0, :pswitch_data_0

    .line 1302
    :pswitch_0
    invoke-interface {p1, v0}, Lorg/c/a/c/f;->a(B)V

    move v0, v1

    .line 1304
    goto :goto_3

    :pswitch_1
    move v0, v1

    .line 1300
    goto :goto_3

    .line 1271
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    .line 1296
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 2

    .prologue
    .line 1325
    sget-object v0, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    iget-object v1, p0, Lorg/c/a/b/j;->a:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Lorg/c/a/b/o;->c(Lorg/c/a/c/f;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    invoke-static {v0}, Lorg/c/a/c/k;->d(Lorg/c/a/c/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    return-object v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 1343
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    iget-object v1, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Lorg/c/a/b/n;->c(Lorg/c/a/c/f;)I

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    invoke-static {v0}, Lorg/c/a/c/k;->b(Lorg/c/a/c/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/b/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/b/j;->b:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/c/a/b/j;->c:Lorg/c/a/b/j;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
