.class public final Lcom/flurry/android/monolithic/sdk/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Ljava/io/DataInput;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 36
    const v1, 0xb5fa

    if-eq v1, v0, :cond_0

    .line 37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected data format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/l;->b(Ljava/io/DataInput;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const v0, 0xb5fa

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 29
    invoke-static {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/l;->b(Ljava/util/List;Ljava/io/DataOutput;)V

    .line 30
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 31
    return-void
.end method

.method private static b(Ljava/io/DataInput;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 63
    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    .line 74
    :goto_1
    return-object v0

    .line 66
    :cond_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/m;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/m;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/l;->a:Ljava/lang/String;

    const-string v4, "unable to read adLog: "

    invoke-static {v2, v3, v4, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static b(Ljava/util/List;Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 47
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/m;->a(Ljava/io/DataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to write adLog with GUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_0
    return-void
.end method
