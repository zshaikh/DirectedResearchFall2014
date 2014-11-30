.class public Lam/sunrise/android/calendar/b/j;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/b/j;->b:Ljava/lang/StringBuilder;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/b/j;->c:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/b/j;->d:Ljava/util/Map;

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->d:Ljava/util/Map;

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    aput-object v0, p1, v1

    .line 80
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lam/sunrise/android/calendar/b/j;->a:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;
    .locals 2

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object p0

    .line 41
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->b:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->b:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->c:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 89
    iget-object v3, p0, Lam/sunrise/android/calendar/b/j;->e:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/b/j;->f:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lam/sunrise/android/calendar/b/j;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 94
    const-string v0, "null"

    .line 95
    if-eqz p2, :cond_0

    .line 96
    invoke-direct {p0, p2}, Lam/sunrise/android/calendar/b/j;->a([Ljava/lang/String;)V

    .line 97
    const-string v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/b/j;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/b/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lam/sunrise/android/calendar/b/j;->b()[Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_1

    iget-object v5, p0, Lam/sunrise/android/calendar/b/j;->e:Ljava/lang/String;

    :goto_0
    move-object v0, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v5, p3

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lam/sunrise/android/calendar/b/j;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lam/sunrise/android/calendar/b/j;->e:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public b()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lam/sunrise/android/calendar/b/j;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lam/sunrise/android/calendar/b/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
