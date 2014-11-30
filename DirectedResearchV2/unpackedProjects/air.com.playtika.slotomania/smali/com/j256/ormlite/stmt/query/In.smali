.class public Lcom/j256/ormlite/stmt/query/In;
.super Lcom/j256/ormlite/stmt/query/BaseComparison;
.source "In.java"


# instance fields
.field private final in:Z

.field private objects:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Iterable;Z)V
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/Iterable",
            "<*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "objects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/j256/ormlite/stmt/query/BaseComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Z)V

    .line 24
    iput-object p3, p0, Lcom/j256/ormlite/stmt/query/In;->objects:Ljava/lang/Iterable;

    .line 25
    iput-boolean p4, p0, Lcom/j256/ormlite/stmt/query/In;->in:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;[Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "objects"    # [Ljava/lang/Object;
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/j256/ormlite/stmt/query/BaseComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Z)V

    .line 31
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/In;->objects:Ljava/lang/Iterable;

    .line 32
    iput-boolean p4, p0, Lcom/j256/ormlite/stmt/query/In;->in:Z

    .line 33
    return-void
.end method


# virtual methods
.method public appendOperation(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/query/In;->in:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "IN "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "NOT IN "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public bridge synthetic appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "x1"    # Ljava/lang/StringBuilder;
    .param p3, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/query/BaseComparison;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public appendValue(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 8
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "columnArgList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    const/4 v6, 0x1

    .line 49
    .local v6, "first":Z
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/In;->objects:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 50
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "one of the IN values for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/query/In;->columnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-eqz v6, :cond_1

    .line 54
    const/4 v6, 0x0

    .line 59
    :goto_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/query/In;->fieldType:Lcom/j256/ormlite/field/FieldType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-super/range {v0 .. v5}, Lcom/j256/ormlite/stmt/query/BaseComparison;->appendArgOrValue(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 61
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method

.method public bridge synthetic getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/j256/ormlite/stmt/query/BaseComparison;->getColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/j256/ormlite/stmt/query/BaseComparison;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
