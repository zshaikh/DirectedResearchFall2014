.class Lcom/flurry/android/monolithic/sdk/impl/aea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/flurry/android/monolithic/sdk/impl/aea;


# instance fields
.field private final b:Ljava/lang/reflect/Field;

.field private final c:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aea;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aea;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aea;->a:Lcom/flurry/android/monolithic/sdk/impl/aea;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-class v3, Ljava/lang/Class;

    const-string v2, "elementType"

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    const-class v0, Ljava/util/EnumSet;

    const-string v1, "elementType"

    const-class v1, Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/aea;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aea;->b:Ljava/lang/reflect/Field;

    .line 585
    const-class v0, Ljava/util/EnumMap;

    const-string v1, "elementType"

    const-class v1, Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/aea;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aea;->c:Ljava/lang/reflect/Field;

    .line 586
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 610
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 618
    .line 620
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 621
    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 622
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_1

    move-object v1, v3

    .line 628
    :goto_1
    if-nez v1, :cond_5

    .line 629
    array-length v2, v0

    move-object v3, v1

    move v1, v5

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 630
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 632
    if-eqz v3, :cond_2

    move-object v0, v6

    .line 642
    :cond_0
    :goto_3
    return-object v0

    .line 621
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 629
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 637
    :goto_4
    if-eqz v0, :cond_0

    .line 639
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 640
    :catch_0
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v1, v6

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/EnumMap;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<**>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aea;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aea;->c:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aea;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not figure out type for EnumMap (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/EnumSet;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aea;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aea;->b:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aea;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not figure out type for EnumSet (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method