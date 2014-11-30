.class public final Lcom/flurry/android/monolithic/sdk/impl/iw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/iw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/iw;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 19
    if-nez p0, :cond_0

    move v0, v5

    .line 30
    :goto_0
    return v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 25
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/iw;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create persistent dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
