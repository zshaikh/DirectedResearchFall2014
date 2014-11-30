.class public Lcom/j256/ormlite/stmt/query/Not;
.super Ljava/lang/Object;
.source "Not.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;
.implements Lcom/j256/ormlite/stmt/query/NeedsFutureClause;


# instance fields
.field private comparison:Lcom/j256/ormlite/stmt/query/Comparison;

.field private exists:Lcom/j256/ormlite/stmt/query/Exists;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    .line 18
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 1
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    .line 18
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    .line 33
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/query/Not;->setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 34
    return-void
.end method


# virtual methods
.method public appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
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
    .local p3, "selectArgList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const-string v1, "(NOT "

    .line 50
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Clause has not been set in NOT operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_1

    .line 55
    const-string v0, "(NOT "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/query/Exists;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 64
    :goto_0
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    return-void

    .line 58
    :cond_1
    const-string v0, "(NOT "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0}, Lcom/j256/ormlite/stmt/query/Comparison;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/stmt/query/Comparison;->appendOperation(Ljava/lang/StringBuilder;)V

    .line 62
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/query/Comparison;->appendValue(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0
.end method

.method public setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 3
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NOT operation already has a comparison set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    instance-of v0, p1, Lcom/j256/ormlite/stmt/query/Comparison;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lcom/j256/ormlite/stmt/query/Comparison;

    .end local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    .line 46
    :goto_0
    return-void

    .line 41
    .restart local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    :cond_1
    instance-of v0, p1, Lcom/j256/ormlite/stmt/query/Exists;

    if-eqz v0, :cond_2

    .line 42
    check-cast p1, Lcom/j256/ormlite/stmt/query/Exists;

    .end local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Not;->exists:Lcom/j256/ormlite/stmt/query/Exists;

    goto :goto_0

    .line 44
    .restart local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT operation can only work with comparison SQL clauses, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "NOT without comparison"

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT comparison "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/query/Not;->comparison:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
