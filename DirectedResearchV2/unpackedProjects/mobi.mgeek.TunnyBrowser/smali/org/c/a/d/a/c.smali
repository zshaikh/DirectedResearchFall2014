.class final Lorg/c/a/d/a/c;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/c/a/d/a/g;


# instance fields
.field a:C

.field final synthetic b:Lorg/c/a/d/a/a;

.field private final c:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Lorg/c/a/d/a/a;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 1330
    iput-object p1, p0, Lorg/c/a/d/a/c;->b:Lorg/c/a/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    const/16 v0, 0x7b

    iput-char v0, p0, Lorg/c/a/d/a/c;->a:C

    .line 1331
    iput-object p2, p0, Lorg/c/a/d/a/c;->c:Ljava/lang/Appendable;

    .line 1332
    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/d/a/a;Ljava/lang/Appendable;Lorg/c/a/d/a/b;)V
    .locals 0

    .prologue
    .line 1324
    invoke-direct {p0, p1, p2}, Lorg/c/a/d/a/c;-><init>(Lorg/c/a/d/a/a;Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1338
    :try_start_0
    iget-char v0, p0, Lorg/c/a/d/a/c;->a:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 1339
    iget-object v0, p0, Lorg/c/a/d/a/c;->c:Ljava/lang/Appendable;

    const-string v1, "{}"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-char v0, p0, Lorg/c/a/d/a/c;->a:C

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lorg/c/a/d/a/c;->c:Ljava/lang/Appendable;

    const-string v1, "}"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1343
    :catch_0
    move-exception v0

    .line 1345
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
