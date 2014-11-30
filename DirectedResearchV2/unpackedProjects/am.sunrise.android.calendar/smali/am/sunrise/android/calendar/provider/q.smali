.class public Lam/sunrise/android/calendar/provider/q;
.super Ljava/lang/Object;
.source "DatabaseStatement.java"


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field b:Ljava/lang/String;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/q;->c:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lam/sunrise/android/calendar/provider/q;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lam/sunrise/android/calendar/provider/q;->b:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/q;->c:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 50
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "INSERT INTO "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/q;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, ") VALUES ("

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 69
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, "?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :cond_0
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 72
    :cond_1
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/q;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method
