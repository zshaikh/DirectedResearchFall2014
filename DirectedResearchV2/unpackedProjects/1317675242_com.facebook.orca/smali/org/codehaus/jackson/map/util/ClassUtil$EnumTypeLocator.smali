.class Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# static fields
.field static final a:Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;


# instance fields
.field private final b:Ljava/lang/reflect/Field;

.field private final c:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->a:Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const-class v0, Ljava/util/EnumSet;

    const-string v1, "elementType"

    const-class v2, Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->b:Ljava/lang/reflect/Field;

    .line 550
    const-class v0, Ljava/util/EnumMap;

    const-string v1, "elementType"

    const-class v2, Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->c:Ljava/lang/reflect/Field;

    .line 551
    return-void
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

    .line 583
    .line 585
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 586
    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 587
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_1

    move-object v1, v3

    .line 593
    :goto_1
    if-nez v1, :cond_5

    .line 594
    array-length v2, v0

    move-object v3, v1

    move v1, v5

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 595
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 597
    if-eqz v3, :cond_2

    move-object v0, v6

    .line 607
    :cond_0
    :goto_3
    return-object v0

    .line 586
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 594
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 602
    :goto_4
    if-eqz v0, :cond_0

    .line 604
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 605
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
