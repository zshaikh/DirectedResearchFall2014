.class Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumTypeLocator"
.end annotation


# static fields
.field static final instance:Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;


# instance fields
.field private final enumMapTypeField:Ljava/lang/reflect/Field;

.field private final enumSetTypeField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->instance:Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;

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

    invoke-static {v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->locateField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->enumSetTypeField:Ljava/lang/reflect/Field;

    .line 585
    const-class v0, Ljava/util/EnumMap;

    const-string v1, "elementType"

    const-class v1, Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->locateField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->enumMapTypeField:Ljava/lang/reflect/Field;

    .line 586
    return-void
.end method

.method private get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .parameter "bean"
    .parameter "field"

    .prologue
    .line 610
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static locateField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 7
    .parameter
    .parameter "expectedName"
    .parameter
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
    .line 618
    .local p0, fromClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 620
    .local v3, found:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 621
    .local v2, fields:[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 622
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p2, :cond_1

    .line 623
    move-object v3, v1

    .line 628
    .end local v1           #f:Ljava/lang/reflect/Field;
    :cond_0
    if-nez v3, :cond_4

    .line 629
    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 630
    .restart local v1       #f:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p2, :cond_3

    .line 632
    if-eqz v3, :cond_2

    const/4 v6, 0x0

    .line 642
    .end local v1           #f:Ljava/lang/reflect/Field;
    :goto_2
    return-object v6

    .line 621
    .restart local v1       #f:Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 633
    :cond_2
    move-object v3, v1

    .line 629
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 637
    .end local v1           #f:Ljava/lang/reflect/Field;
    :cond_4
    if-eqz v3, :cond_5

    .line 639
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    move-object v6, v3

    .line 642
    goto :goto_2

    .line 640
    :catch_0
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public enumTypeFor(Ljava/util/EnumMap;)Ljava/lang/Class;
    .locals 2
    .parameter
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
    .local p1, set:Ljava/util/EnumMap;,"Ljava/util/EnumMap<**>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->enumMapTypeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->enumMapTypeField:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 603
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not figure out type for EnumMap (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enumTypeFor(Ljava/util/EnumSet;)Ljava/lang/Class;
    .locals 2
    .parameter
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
    .local p1, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->enumSetTypeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->enumSetTypeField:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil$EnumTypeLocator;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 594
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not figure out type for EnumSet (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
