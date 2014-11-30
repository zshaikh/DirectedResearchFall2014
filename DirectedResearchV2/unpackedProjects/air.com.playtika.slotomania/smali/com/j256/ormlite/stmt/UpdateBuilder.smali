.class public Lcom/j256/ormlite/stmt/UpdateBuilder;
.super Lcom/j256/ormlite/stmt/StatementBuilder;
.source "UpdateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/StatementBuilder",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private updateClauseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/query/Clause;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    .line 32
    return-void
.end method

.method private addUpdateColumnToList(Ljava/lang/String;Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    .prologue
    .line 151
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method


# virtual methods
.method protected appendStatementEnd(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 148
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    return-void
.end method

.method protected appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 128
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "UPDATE statements must have at least one SET column"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_1
    const-string v3, "UPDATE "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    const-string v3, " SET "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v1, 0x1

    .line 135
    .local v1, "first":Z
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/query/Clause;

    .line 136
    .local v0, "clause":Lcom/j256/ormlite/stmt/query/Clause;
    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x0

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, v3, p1, p2}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 139
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 143
    .end local v0    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    invoke-super {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->clear()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateClauseList:Ljava/util/List;

    .line 124
    return-void
.end method

.method public escapeColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 88
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v1, v0, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public escapeColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 80
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public escapeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v1, v0, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedWord(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public escapeValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedWord(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public prepare()Lcom/j256/ormlite/stmt/PreparedUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedUpdate",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->prepareStatement(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v0

    return-object v0
.end method

.method public update()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Lcom/j256/ormlite/stmt/PreparedUpdate;)I

    move-result v0

    return v0
.end method

.method public updateColumnExpression(Ljava/lang/String;Ljava/lang/String;)Lcom/j256/ormlite/stmt/StatementBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 67
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update foreign colletion field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    new-instance v1, Lcom/j256/ormlite/stmt/query/SetExpression;

    invoke-direct {v1, p1, v0, p2}, Lcom/j256/ormlite/stmt/query/SetExpression;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->addUpdateColumnToList(Ljava/lang/String;Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 71
    return-object p0
.end method

.method public updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 48
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update foreign colletion field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    new-instance v1, Lcom/j256/ormlite/stmt/query/SetValue;

    invoke-direct {v1, p1, v0, p2}, Lcom/j256/ormlite/stmt/query/SetValue;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->addUpdateColumnToList(Ljava/lang/String;Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 52
    return-object p0
.end method
