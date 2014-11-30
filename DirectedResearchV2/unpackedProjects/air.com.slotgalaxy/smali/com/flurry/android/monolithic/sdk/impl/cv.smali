.class public final Lcom/flurry/android/monolithic/sdk/impl/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/cx;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/cv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/cv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/cu;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    const-string v7, ": package=\""

    const-string v6, "\" or higher"

    const-string v5, "\" and version=\""

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v4

    .line 93
    :goto_0
    return v0

    .line 63
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/cu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/cu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    const/4 v0, 0x1

    .line 78
    :goto_1
    if-nez v0, :cond_3

    .line 79
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/cv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": package=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": apk should include ad provider library with name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/cu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" and version=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/cu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" or higher"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/cv;->a:Ljava/lang/String;

    const-string v2, "failed to find third party ad provider api with exception: "

    invoke-static {v3, v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 76
    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/cv;->a:Ljava/lang/String;

    const-string v2, "failed to initialize third party ad provider api with exception: "

    invoke-static {v3, v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 76
    goto :goto_1

    .line 73
    :catch_2
    move-exception v0

    .line 74
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/cv;->a:Ljava/lang/String;

    const-string v2, "failed to link third party ad provider api with exception: "

    invoke-static {v3, v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v0, v4

    goto :goto_1

    .line 85
    :cond_3
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/cv;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": package=\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": apk has ad provider library with name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/cu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and version=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/cu;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" or higher"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/db;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 27
    if-nez p2, :cond_0

    move v0, v5

    .line 51
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/db;->a()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/db;->b()Ljava/util/List;

    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    move v0, v5

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/cu;

    .line 44
    invoke-direct {p0, v1, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/cv;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/cu;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    :goto_2
    move v2, v0

    .line 45
    goto :goto_1

    :cond_3
    move v0, v2

    .line 51
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method
