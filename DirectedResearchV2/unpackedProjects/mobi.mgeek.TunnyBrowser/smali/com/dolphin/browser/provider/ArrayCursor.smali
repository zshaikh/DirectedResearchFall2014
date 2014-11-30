.class final Lcom/dolphin/browser/provider/ArrayCursor;
.super Landroid/database/MatrixCursor;
.source "ArrayCursor.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/provider/ArrayCursor;->a:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/provider/ArrayCursor;->b:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p2}, Lcom/dolphin/browser/provider/ArrayCursor;->a(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/dolphin/browser/provider/ArrayCursor;->a([Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    sget-object v0, Lcom/dolphin/browser/provider/ArrayCursor;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 32
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 33
    invoke-direct {p0, v3, v0}, Lcom/dolphin/browser/provider/ArrayCursor;->a(Ljava/lang/Object;[Ljava/lang/reflect/Field;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private static a([Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    array-length v0, p0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;[Ljava/lang/reflect/Field;)V
    .locals 5

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/provider/ArrayCursor;->addRow([Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/ArrayCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 43
    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p2, v1

    .line 45
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 51
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v2, Lcom/dolphin/browser/provider/ArrayCursor;->a:Ljava/util/HashMap;

    monitor-enter v2

    .line 62
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/provider/ArrayCursor;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/dolphin/browser/provider/ArrayCursor;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v2

    .line 91
    :goto_0
    return-object v0

    .line 65
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v3, p0

    .line 69
    :goto_1
    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 71
    array-length v7, v6

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_2

    aget-object v8, v6, v2

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    const-class v0, Lcom/dolphin/browser/provider/ArrayCursor$Column;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/provider/ArrayCursor$Column;

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Lcom/dolphin/browser/provider/ArrayCursor$Column;->a()I

    move-result v9

    invoke-interface {v0}, Lcom/dolphin/browser/provider/ArrayCursor$Column;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    invoke-interface {v0}, Lcom/dolphin/browser/provider/ArrayCursor$Column;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 79
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 82
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/reflect/Field;

    .line 83
    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 84
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 85
    aget-object v0, v2, v1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    aput-object v0, v3, v1

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 87
    :cond_4
    sget-object v1, Lcom/dolphin/browser/provider/ArrayCursor;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 88
    :try_start_2
    sget-object v0, Lcom/dolphin/browser/provider/ArrayCursor;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/dolphin/browser/provider/ArrayCursor;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v1

    move-object v0, v2

    .line 91
    goto :goto_0

    .line 90
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
